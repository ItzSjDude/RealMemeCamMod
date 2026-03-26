package com.oplus.exif;

import android.util.Log;
import com.oplus.exif.OplusExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class OplusExifParser {
    protected static final short BIG_ENDIAN_TAG = 19789;
    protected static final int DEFAULT_IFD0_OFFSET = 8;
    public static final int EVENT_COMPRESSED_IMAGE = 3;
    public static final int EVENT_END = 5;
    public static final int EVENT_NEW_TAG = 1;
    public static final int EVENT_START_OF_IFD = 0;
    public static final int EVENT_UNCOMPRESSED_STRIP = 4;
    public static final int EVENT_VALUE_OF_REGISTERED_TAG = 2;
    protected static final int EXIF_HEADER = 1165519206;
    protected static final short EXIF_HEADER_TAIL = 0;
    protected static final short LITTLE_ENDIAN_TAG = 18761;
    private static final boolean LOGV = false;
    protected static final int OFFSET_SIZE = 2;
    public static final int OPTION_IFD_0 = 1;
    public static final int OPTION_IFD_1 = 2;
    public static final int OPTION_IFD_EXIF = 4;
    public static final int OPTION_IFD_GPS = 8;
    public static final int OPTION_IFD_INTEROPERABILITY = 16;
    public static final int OPTION_THUMBNAIL = 32;
    private static final String TAG = "ExifParser";
    protected static final int TAG_SIZE = 12;
    protected static final short TIFF_HEADER_TAIL = 42;
    private int mApp1End;
    private boolean mContainExifData;
    private byte[] mDataAboveIfd0;
    private int mIfd0Position;
    private int mIfdType;
    private ImageEvent mImageEvent;
    private final OplusExifInterface mInterface;
    private OplusExifTag mJpegSizeTag;
    private boolean mNeedToParseOffsetsInCurrentIfd;
    private final int mOptions;
    private int mStripCount;
    private OplusExifTag mStripSizeTag;
    private OplusExifTag mTag;
    private int mTiffStartPosition;
    private final OplusCountedDataInputStream mTiffStream;
    private static final Charset US_ASCII = StandardCharsets.US_ASCII;
    private static final short TAG_EXIF_IFD = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_EXIF_IFD);
    private static final short TAG_GPS_IFD = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_GPS_IFD);
    private static final short TAG_INTEROPERABILITY_IFD = OplusExifInterface
            .getTrueTagKey(OplusExifInterface.TAG_INTEROPERABILITY_IFD);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT = OplusExifInterface
            .getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = OplusExifInterface
            .getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
    private static final short TAG_STRIP_OFFSETS = OplusExifInterface
            .getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS);
    private static final short TAG_STRIP_BYTE_COUNTS = OplusExifInterface
            .getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
    private int mIfdStartOffset = 0;
    private int mNumOfTagInIfd = 0;
    private int mOffsetToApp1EndFromSOF = 0;
    private final TreeMap<Integer, Object> mCorrespondingEvent = new TreeMap<>();

    private boolean isIfdRequested(int ifdType) {
        switch (ifdType) {
            case 0:
                return (this.mOptions & 1) != 0;
            case 1:
                return (this.mOptions & 2) != 0;
            case 2:
                return (this.mOptions & 4) != 0;
            case 3:
                return (this.mOptions & 16) != 0;
            case 4:
                return (this.mOptions & 8) != 0;
            default:
                return false;
        }
    }

    private boolean isThumbnailRequested() {
        return (this.mOptions & 32) != 0;
    }

    private OplusExifParser(InputStream inputStream, int options, OplusExifInterface oplusExifInterface)
            throws OplusExifInvalidFormatException, IOException {
        this.mContainExifData = false;
        Objects.requireNonNull(inputStream, "InputStream cannot be null");
        this.mInterface = oplusExifInterface;
        this.mContainExifData = seekTiffData(inputStream);
        OplusCountedDataInputStream oplusCountedDataInputStream = new OplusCountedDataInputStream(inputStream);
        this.mTiffStream = oplusCountedDataInputStream;
        this.mOptions = options;
        if (this.mContainExifData) {
            parseTiffHeader();
            long unsignedInt = oplusCountedDataInputStream.readUnsignedInt();
            if (unsignedInt > 2147483647L) {
                throw new OplusExifInvalidFormatException("Invalid offset " + unsignedInt);
            }
            int ifd0Position = (int) unsignedInt;
            this.mIfd0Position = ifd0Position;
            this.mIfdType = 0;
            if (isIfdRequested(0) || needToParseOffsetsInCurrentIfd()) {
                registerIfd(0, unsignedInt);
                if (unsignedInt != 8) {
                    byte[] dataAboveIfd0 = new byte[ifd0Position - 8];
                    this.mDataAboveIfd0 = dataAboveIfd0;
                    read(dataAboveIfd0);
                }
            }
        }
    }

    protected static OplusExifParser parse(InputStream inputStream, int i, OplusExifInterface oplusExifInterface)
            throws OplusExifInvalidFormatException, IOException {
        return new OplusExifParser(inputStream, i, oplusExifInterface);
    }

    protected static OplusExifParser parse(InputStream inputStream, OplusExifInterface oplusExifInterface)
            throws OplusExifInvalidFormatException, IOException {
        return new OplusExifParser(inputStream, 63, oplusExifInterface);
    }

    protected int next() throws OplusExifInvalidFormatException, IOException {
        if (!this.mContainExifData) {
            return 5;
        }
        int readByteCount = this.mTiffStream.getReadByteCount();
        int ifdEndOffset = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        if (readByteCount < ifdEndOffset) {
            OplusExifTag tag = readTag();
            this.mTag = tag;
            if (tag == null) {
                return next();
            }
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                checkOffsetOrImageTag(tag);
            }
            return 1;
        }
        if (readByteCount == ifdEndOffset) {
            if (this.mIfdType == 0) {
                long unsignedLong = readUnsignedLong();
                if ((isIfdRequested(1) || isThumbnailRequested()) && unsignedLong != 0) {
                    registerIfd(1, unsignedLong);
                }
            } else {
                int linkSize = this.mCorrespondingEvent.size() > 0
                        ? this.mCorrespondingEvent.firstEntry().getKey().intValue()
                                - this.mTiffStream.getReadByteCount()
                        : 4;
                if (linkSize < 4) {
                    Log.w(TAG, "Invalid size of link to next IFD: " + linkSize);
                } else {
                    long unsignedLong2 = readUnsignedLong();
                    if (unsignedLong2 != 0) {
                        Log.w(TAG, "Invalid link to next IFD: " + unsignedLong2);
                    }
                }
            }
        }
        while (this.mCorrespondingEvent.size() != 0) {
            Map.Entry<Integer, Object> entryPollFirstEntry = this.mCorrespondingEvent.pollFirstEntry();
            Object value = entryPollFirstEntry.getValue();
            try {
                skipTo(entryPollFirstEntry.getKey().intValue());
                if (value instanceof IfdEvent) {
                    IfdEvent ifdEvent = (IfdEvent) value;
                    this.mIfdType = ifdEvent.ifd;
                    this.mNumOfTagInIfd = this.mTiffStream.readUnsignedShort();
                    int ifdOffset = entryPollFirstEntry.getKey().intValue();
                    this.mIfdStartOffset = ifdOffset;
                    if ((this.mNumOfTagInIfd * 12) + ifdOffset + 2 > this.mApp1End) {
                        Log.w(TAG, "Invalid size of IFD " + this.mIfdType);
                        return 5;
                    }
                    this.mNeedToParseOffsetsInCurrentIfd = needToParseOffsetsInCurrentIfd();
                    if (ifdEvent.isRequested) {
                        return 0;
                    }
                    skipRemainingTagsInCurrentIfd();
                } else {
                    if (value instanceof ImageEvent) {
                        ImageEvent imageEvent = (ImageEvent) value;
                        this.mImageEvent = imageEvent;
                        return imageEvent.type;
                    }
                    ExifTagEvent exifTagEvent = (ExifTagEvent) value;
                    OplusExifTag oplusExifTag = exifTagEvent.tag;
                    this.mTag = oplusExifTag;
                    if (oplusExifTag.getDataType() != 7) {
                        readFullTagValue(this.mTag);
                        checkOffsetOrImageTag(this.mTag);
                    }
                    if (exifTagEvent.isRequested) {
                        return 2;
                    }
                }
            } catch (IOException unused) {
                Log.w(TAG, "Failed to skip to data at: " + entryPollFirstEntry.getKey() + " for "
                        + value.getClass().getName() + ", the file may be broken.");
            }
        }
        return 5;
    }

    protected void skipRemainingTagsInCurrentIfd() throws OplusExifInvalidFormatException, IOException {
        int ifdEndOffset = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        int readByteCount = this.mTiffStream.getReadByteCount();
        if (readByteCount > ifdEndOffset) {
            return;
        }
        if (this.mNeedToParseOffsetsInCurrentIfd) {
            while (readByteCount < ifdEndOffset) {
                OplusExifTag tag = readTag();
                this.mTag = tag;
                readByteCount += 12;
                if (tag != null) {
                    checkOffsetOrImageTag(tag);
                }
            }
        } else {
            skipTo(ifdEndOffset);
        }
        long unsignedLong = readUnsignedLong();
        if (this.mIfdType == 0) {
            if ((isIfdRequested(1) || isThumbnailRequested()) && unsignedLong > 0) {
                registerIfd(1, unsignedLong);
            }
        }
    }

    private boolean needToParseOffsetsInCurrentIfd() {
        int i = this.mIfdType;
        if (i == 0) {
            return isIfdRequested(2) || isIfdRequested(4) || isIfdRequested(3) || isIfdRequested(1);
        }
        if (i == 1) {
            return isThumbnailRequested();
        }
        if (i != 2) {
            return false;
        }
        return isIfdRequested(3);
    }

    protected OplusExifTag getTag() {
        return this.mTag;
    }

    protected int getTagCountInCurrentIfd() {
        return this.mNumOfTagInIfd;
    }

    protected int getCurrentIfd() {
        return this.mIfdType;
    }

    protected int getStripIndex() {
        return this.mImageEvent.stripIndex;
    }

    protected int getStripCount() {
        return this.mStripCount;
    }

    protected int getStripSize() {
        OplusExifTag oplusExifTag = this.mStripSizeTag;
        if (oplusExifTag == null) {
            return 0;
        }
        return (int) oplusExifTag.getValueAt(0);
    }

    protected int getCompressedImageSize() {
        OplusExifTag oplusExifTag = this.mJpegSizeTag;
        if (oplusExifTag == null) {
            return 0;
        }
        return (int) oplusExifTag.getValueAt(0);
    }

    private void skipTo(int i) throws IOException {
        this.mTiffStream.skipTo(i);
        while (!this.mCorrespondingEvent.isEmpty() && this.mCorrespondingEvent.firstKey().intValue() < i) {
            this.mCorrespondingEvent.pollFirstEntry();
        }
    }

    protected void registerForTagValue(OplusExifTag tag) {
        if (tag.getOffset() >= this.mTiffStream.getReadByteCount()) {
            this.mCorrespondingEvent.put(Integer.valueOf(tag.getOffset()),
                    new ExifTagEvent(tag, true));
        }
    }

    private void registerIfd(int i, long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new IfdEvent(i, isIfdRequested(i)));
    }

    private void registerCompressedImage(long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new ImageEvent(3));
    }

    private void registerUncompressedStrip(int i, long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new ImageEvent(4, i));
    }

    private OplusExifTag readTag() throws OplusExifInvalidFormatException, IOException {
        short tagId = this.mTiffStream.readShort();
        short dataType = this.mTiffStream.readShort();
        long componentCountLong = this.mTiffStream.readUnsignedInt();
        if (componentCountLong > 2147483647L) {
            throw new OplusExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        }
        if (!OplusExifTag.isValidType(dataType)) {
            Log.w(TAG, String.format("Tag %04x: Invalid data type %d", Short.valueOf(tagId), Short.valueOf(dataType)));
            this.mTiffStream.skip(4L);
            return null;
        }
        int componentCount = (int) componentCountLong;
        OplusExifTag oplusExifTag = new OplusExifTag(tagId, dataType, componentCount, this.mIfdType,
                componentCount != 0);
        if (oplusExifTag.getDataSize() > 4) {
            long valueOffsetLong = this.mTiffStream.readUnsignedInt();
            if (valueOffsetLong > 2147483647L) {
                throw new OplusExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
            }
            if (valueOffsetLong < this.mIfd0Position && dataType == 7) {
                byte[] val = new byte[componentCount];
                System.arraycopy(this.mDataAboveIfd0, ((int) valueOffsetLong) - 8, val, 0, componentCount);
                oplusExifTag.setValue(val);
            } else {
                oplusExifTag.setOffset((int) valueOffsetLong);
            }
        } else {
            boolean originalHasDefinedCount = oplusExifTag.hasDefinedCount();
            oplusExifTag.setHasDefinedCount(false);
            readFullTagValue(oplusExifTag);
            oplusExifTag.setHasDefinedCount(originalHasDefinedCount);
            this.mTiffStream.skip(4 - oplusExifTag.getDataSize());
            oplusExifTag.setOffset(this.mTiffStream.getReadByteCount() - 4);
        }
        return oplusExifTag;
    }

    private void checkOffsetOrImageTag(OplusExifTag oplusExifTag) {
        if (oplusExifTag.getComponentCount() == 0) {
            return;
        }
        short tagId = oplusExifTag.getTagId();
        int ifd = oplusExifTag.getIfd();
        if (tagId == TAG_EXIF_IFD && checkAllowed(ifd, OplusExifInterface.TAG_EXIF_IFD)) {
            if (isIfdRequested(2) || isIfdRequested(3)) {
                registerIfd(2, oplusExifTag.getValueAt(0));
                return;
            }
            return;
        }
        if (tagId == TAG_GPS_IFD && checkAllowed(ifd, OplusExifInterface.TAG_GPS_IFD)) {
            if (isIfdRequested(4)) {
                registerIfd(4, oplusExifTag.getValueAt(0));
                return;
            }
            return;
        }
        if (tagId == TAG_INTEROPERABILITY_IFD && checkAllowed(ifd, OplusExifInterface.TAG_INTEROPERABILITY_IFD)) {
            if (isIfdRequested(3)) {
                registerIfd(3, oplusExifTag.getValueAt(0));
                return;
            }
            return;
        }
        if (tagId == TAG_JPEG_INTERCHANGE_FORMAT && checkAllowed(ifd, OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)) {
            if (isThumbnailRequested()) {
                registerCompressedImage(oplusExifTag.getValueAt(0));
                return;
            }
            return;
        }
        if (tagId == TAG_JPEG_INTERCHANGE_FORMAT_LENGTH
                && checkAllowed(ifd, OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)) {
            if (isThumbnailRequested()) {
                this.mJpegSizeTag = oplusExifTag;
                return;
            }
            return;
        }
        if (tagId == TAG_STRIP_OFFSETS && checkAllowed(ifd, OplusExifInterface.TAG_STRIP_OFFSETS)) {
            if (isThumbnailRequested()) {
                if (oplusExifTag.hasValue()) {
                    for (int index = 0; index < oplusExifTag.getComponentCount(); index++) {
                        registerUncompressedStrip(index, oplusExifTag.getValueAt(index));
                    }
                    return;
                }
                this.mCorrespondingEvent.put(Integer.valueOf(oplusExifTag.getOffset()),
                        new ExifTagEvent(oplusExifTag, false));
                return;
            }
            return;
        }
        if (tagId == TAG_STRIP_BYTE_COUNTS && checkAllowed(ifd, OplusExifInterface.TAG_STRIP_BYTE_COUNTS)
                && isThumbnailRequested() && oplusExifTag.hasValue()) {
            this.mStripSizeTag = oplusExifTag;
        }
    }

    private boolean checkAllowed(int i, int i2) {
        int i3 = this.mInterface.getTagInfo().get(i2);
        if (i3 == 0) {
            return false;
        }
        return OplusExifInterface.isIfdAllowed(i3, i);
    }

    protected void readFullTagValue(OplusExifTag oplusExifTag) throws IOException {
        try {
            short tagDataType = oplusExifTag.getDataType();
            if (tagDataType == 2 || tagDataType == 7 || tagDataType == 1) {
                int tagComponentCount = oplusExifTag.getComponentCount();
                if (this.mCorrespondingEvent.size() > 0 && this.mCorrespondingEvent.firstEntry().getKey()
                        .intValue() < this.mTiffStream.getReadByteCount() + tagComponentCount) {
                    Object value = this.mCorrespondingEvent.firstEntry().getValue();
                    if (value instanceof ImageEvent) {
                        Log.w(TAG, "Thumbnail overlaps value for tag: \n" + oplusExifTag.toString());
                        Log.w(TAG, "Invalid thumbnail offset: " + this.mCorrespondingEvent.pollFirstEntry().getKey());
                    } else {
                        if (value instanceof IfdEvent) {
                            Log.w(TAG, "Ifd " + ((IfdEvent) value).ifd + " overlaps value for tag: \n"
                                    + oplusExifTag.toString());
                        } else if (value instanceof ExifTagEvent) {
                            Log.w(TAG, "Tag value for tag: \n" + ((ExifTagEvent) value).tag.toString()
                                    + " overlaps value for tag: \n" + oplusExifTag.toString());
                        }
                        int remainingSize = this.mCorrespondingEvent.firstEntry().getKey().intValue()
                                - this.mTiffStream.getReadByteCount();
                        Log.w(TAG, "Invalid size of tag: \n" + oplusExifTag.toString() + " setting count to: "
                                + remainingSize);
                        oplusExifTag.forceSetComponentCount(remainingSize);
                    }
                }
            }
            int index = 0;
            switch (oplusExifTag.getDataType()) {
                case 1:
                case 7:
                    byte[] rawData = new byte[oplusExifTag.getComponentCount()];
                    read(rawData);
                    oplusExifTag.setValue(rawData);
                    break;
                case 2:
                    oplusExifTag.setValue(readString(oplusExifTag.getComponentCount()));
                    break;
                case 3:
                    int componentCount2 = oplusExifTag.getComponentCount();
                    int[] unsignedShorts = new int[componentCount2];
                    while (index < componentCount2) {
                        unsignedShorts[index] = readUnsignedShort();
                        index++;
                    }
                    oplusExifTag.setValue(unsignedShorts);
                    break;
                case 4:
                    int componentCount3 = oplusExifTag.getComponentCount();
                    long[] unsignedLongs = new long[componentCount3];
                    while (index < componentCount3) {
                        unsignedLongs[index] = readUnsignedLong();
                        index++;
                    }
                    oplusExifTag.setValue(unsignedLongs);
                    break;
                case 5:
                    int componentCount4 = oplusExifTag.getComponentCount();
                    OplusRational[] unsignedRationals = new OplusRational[componentCount4];
                    while (index < componentCount4) {
                        unsignedRationals[index] = readUnsignedRational();
                        index++;
                    }
                    oplusExifTag.setValue(unsignedRationals);
                    break;
                case 9:
                    int componentCount5 = oplusExifTag.getComponentCount();
                    int[] signedLongs = new int[componentCount5];
                    while (index < componentCount5) {
                        signedLongs[index] = readLong();
                        index++;
                    }
                    oplusExifTag.setValue(signedLongs);
                    break;
                case 10:
                    int componentCount6 = oplusExifTag.getComponentCount();
                    OplusRational[] signedRationals = new OplusRational[componentCount6];
                    while (index < componentCount6) {
                        signedRationals[index] = readRational();
                        index++;
                    }
                    oplusExifTag.setValue(signedRationals);
                    break;
            }
        } catch (Throwable th) {
            Log.e(TAG, "readFullTagValue e = " + th);
        }
    }

    private void parseTiffHeader() throws OplusExifInvalidFormatException, IOException {
        short s = this.mTiffStream.readShort();
        if (18761 == s) {
            this.mTiffStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else if (19789 == s) {
            this.mTiffStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            throw new OplusExifInvalidFormatException("Invalid TIFF header");
        }
        if (this.mTiffStream.readShort() != 42) {
            throw new OplusExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean seekTiffData(InputStream inputStream) throws OplusExifInvalidFormatException, IOException {
        OplusCountedDataInputStream segmentStream = new OplusCountedDataInputStream(inputStream);
        if (segmentStream.readShort() != -40) {
            throw new OplusExifInvalidFormatException("Invalid JPEG format");
        }
        for (short marker = segmentStream.readShort(); marker != -39
                && !OplusJpegHeader.isSofMarker(marker); marker = segmentStream.readShort()) {
            int segmentLength = segmentStream.readUnsignedShort();
            if (marker == -31 && segmentLength >= 8) {
                int header = segmentStream.readInt();
                short tail = segmentStream.readShort();
                segmentLength -= 6;
                if (header == EXIF_HEADER && tail == 0) {
                    int tiffStartPosition = segmentStream.getReadByteCount();
                    this.mTiffStartPosition = tiffStartPosition;
                    this.mApp1End = segmentLength;
                    this.mOffsetToApp1EndFromSOF = tiffStartPosition + segmentLength;
                    return true;
                }
            }
            if (segmentLength >= 2) {
                long skipLength = segmentLength - 2;
                if (skipLength == segmentStream.skip(skipLength)) {
                }
            }
            Log.w(TAG, "Invalid JPEG format.");
        }
        return false;
    }

    protected int getOffsetToExifEndFromSOF() {
        return this.mOffsetToApp1EndFromSOF;
    }

    protected int getTiffStartPosition() {
        return this.mTiffStartPosition;
    }

    protected int read(byte[] buffer, int offset, int length) throws IOException {
        return this.mTiffStream.read(buffer, offset, length);
    }

    protected int read(byte[] buffer) throws IOException {
        return this.mTiffStream.read(buffer);
    }

    protected String readString(int length) throws IOException {
        return readString(length, US_ASCII);
    }

    protected String readString(int length, Charset charset) throws IOException {
        return length > 0 ? this.mTiffStream.readString(length, charset) : "";
    }

    protected int readUnsignedShort() throws IOException {
        return this.mTiffStream.readShort() & OplusExifInterface.ColorSpace.UNCALIBRATED;
    }

    protected long readUnsignedLong() throws IOException {
        return ((long) readLong()) & 4294967295L;
    }

    protected OplusRational readUnsignedRational() throws IOException {
        long numerator = readUnsignedLong();
        long denominator = readUnsignedLong();
        return new OplusRational(numerator, denominator);
    }

    protected int readLong() throws IOException {
        return this.mTiffStream.readInt();
    }

    protected OplusRational readRational() throws IOException {
        long numerator = (long) readLong();
        long denominator = (long) readLong();
        return new OplusRational(numerator, denominator);
    }

    private static class ImageEvent {
        int stripIndex;
        int type;

        ImageEvent(int type) {
            this.stripIndex = 0;
            this.type = type;
        }

        ImageEvent(int type, int stripIndex) {
            this.type = type;
            this.stripIndex = stripIndex;
        }
    }

    private static class IfdEvent {
        int ifd;
        boolean isRequested;

        IfdEvent(int ifd, boolean isRequested) {
            this.ifd = ifd;
            this.isRequested = isRequested;
        }
    }

    private static class ExifTagEvent {
        boolean isRequested;
        OplusExifTag tag;

        ExifTagEvent(OplusExifTag tag, boolean isRequested) {
            this.tag = tag;
            this.isRequested = isRequested;
        }
    }

    protected ByteOrder getByteOrder() {
        return this.mTiffStream.getByteOrder();
    }
}
