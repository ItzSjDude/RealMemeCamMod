package com.oplus.exif;

import android.util.Log;
import com.oplus.exif.OplusExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class OplusExifParser {
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
    private static final Charset US_ASCII = Charset.forName("US-ASCII");
    private static final short TAG_EXIF_IFD = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_EXIF_IFD);
    private static final short TAG_GPS_IFD = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_GPS_IFD);
    private static final short TAG_INTEROPERABILITY_IFD = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_INTEROPERABILITY_IFD);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
    private static final short TAG_STRIP_OFFSETS = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS);
    private static final short TAG_STRIP_BYTE_COUNTS = OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
    private int mIfdStartOffset = 0;
    private int mNumOfTagInIfd = 0;
    private int mOffsetToApp1EndFromSOF = 0;
    private final TreeMap<Integer, Object> mCorrespondingEvent = new TreeMap<>();

    private boolean isIfdRequested(int i) {
        switch (i) {
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

    private OplusExifParser(InputStream inputStream, int i, OplusExifInterface oplusExifInterface) throws IOException, OplusExifInvalidFormatException {
        this.mContainExifData = false;
        if (inputStream == null) {
            throw new IOException("Null argument inputStream to ExifParser");
        }
        this.mInterface = oplusExifInterface;
        this.mContainExifData = seekTiffData(inputStream);
        this.mTiffStream = new OplusCountedDataInputStream(inputStream);
        this.mOptions = i;
        if (this.mContainExifData) {
            parseTiffHeader();
            long readUnsignedInt = this.mTiffStream.readUnsignedInt();
            if (readUnsignedInt > 2147483647L) {
                throw new OplusExifInvalidFormatException("Invalid offset " + readUnsignedInt);
            }
            int i2 = (int) readUnsignedInt;
            this.mIfd0Position = i2;
            this.mIfdType = 0;
            if (isIfdRequested(0) || needToParseOffsetsInCurrentIfd()) {
                registerIfd(0, readUnsignedInt);
                if (readUnsignedInt != 8) {
                    this.mDataAboveIfd0 = new byte[i2 - 8];
                    read(this.mDataAboveIfd0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static OplusExifParser parse(InputStream inputStream, int i, OplusExifInterface oplusExifInterface) throws IOException, OplusExifInvalidFormatException {
        return new OplusExifParser(inputStream, i, oplusExifInterface);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static OplusExifParser parse(InputStream inputStream, OplusExifInterface oplusExifInterface) throws IOException, OplusExifInvalidFormatException {
        return new OplusExifParser(inputStream, 63, oplusExifInterface);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int next() throws IOException, OplusExifInvalidFormatException {
        if (this.mContainExifData) {
            int readByteCount = this.mTiffStream.getReadByteCount();
            int i = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
            if (readByteCount < i) {
                this.mTag = readTag();
                if (this.mTag == null) {
                    return next();
                }
                if (this.mNeedToParseOffsetsInCurrentIfd) {
                    checkOffsetOrImageTag(this.mTag);
                }
                return 1;
            }
            if (readByteCount == i) {
                if (this.mIfdType == 0) {
                    long readUnsignedLong = readUnsignedLong();
                    if ((isIfdRequested(1) || isThumbnailRequested()) && readUnsignedLong != 0) {
                        registerIfd(1, readUnsignedLong);
                    }
                } else {
                    int intValue = this.mCorrespondingEvent.size() > 0 ? this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount() : 4;
                    if (intValue < 4) {
                        Log.w(TAG, "Invalid size of link to next IFD: " + intValue);
                    } else {
                        long readUnsignedLong2 = readUnsignedLong();
                        if (readUnsignedLong2 != 0) {
                            Log.w(TAG, "Invalid link to next IFD: " + readUnsignedLong2);
                        }
                    }
                }
            }
            while (this.mCorrespondingEvent.size() != 0) {
                Map.Entry<Integer, Object> pollFirstEntry = this.mCorrespondingEvent.pollFirstEntry();
                Object value = pollFirstEntry.getValue();
                try {
                    skipTo(pollFirstEntry.getKey().intValue());
                    if (value instanceof IfdEvent) {
                        IfdEvent ifdEvent = (IfdEvent) value;
                        this.mIfdType = ifdEvent.ifd;
                        this.mNumOfTagInIfd = this.mTiffStream.readUnsignedShort();
                        this.mIfdStartOffset = pollFirstEntry.getKey().intValue();
                        if ((this.mNumOfTagInIfd * 12) + this.mIfdStartOffset + 2 > this.mApp1End) {
                            Log.w(TAG, "Invalid size of IFD " + this.mIfdType);
                            return 5;
                        }
                        this.mNeedToParseOffsetsInCurrentIfd = needToParseOffsetsInCurrentIfd();
                        if (ifdEvent.isRequested) {
                            return 0;
                        }
                        skipRemainingTagsInCurrentIfd();
                    } else if (value instanceof ImageEvent) {
                        this.mImageEvent = (ImageEvent) value;
                        return this.mImageEvent.type;
                    } else {
                        ExifTagEvent exifTagEvent = (ExifTagEvent) value;
                        this.mTag = exifTagEvent.tag;
                        if (this.mTag.getDataType() != 7) {
                            readFullTagValue(this.mTag);
                            checkOffsetOrImageTag(this.mTag);
                        }
                        if (exifTagEvent.isRequested) {
                            return 2;
                        }
                    }
                } catch (IOException unused) {
                    Log.w(TAG, "Failed to skip to data at: " + pollFirstEntry.getKey() + " for " + value.getClass().getName() + ", the file may be broken.");
                }
            }
            return 5;
        }
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void skipRemainingTagsInCurrentIfd() throws IOException, OplusExifInvalidFormatException {
        int i = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        int readByteCount = this.mTiffStream.getReadByteCount();
        if (readByteCount > i) {
            return;
        }
        if (this.mNeedToParseOffsetsInCurrentIfd) {
            while (readByteCount < i) {
                this.mTag = readTag();
                readByteCount += 12;
                if (this.mTag != null) {
                    checkOffsetOrImageTag(this.mTag);
                }
            }
        } else {
            skipTo(i);
        }
        long readUnsignedLong = readUnsignedLong();
        if (this.mIfdType == 0) {
            if ((isIfdRequested(1) || isThumbnailRequested()) && readUnsignedLong > 0) {
                registerIfd(1, readUnsignedLong);
            }
        }
    }

    private boolean needToParseOffsetsInCurrentIfd() {
        switch (this.mIfdType) {
            case 0:
                return isIfdRequested(2) || isIfdRequested(4) || isIfdRequested(3) || isIfdRequested(1);
            case 1:
                return isThumbnailRequested();
            case 2:
                return isIfdRequested(3);
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag getTag() {
        return this.mTag;
    }

    protected int getTagCountInCurrentIfd() {
        return this.mNumOfTagInIfd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCurrentIfd() {
        return this.mIfdType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripIndex() {
        return this.mImageEvent.stripIndex;
    }

    protected int getStripCount() {
        return this.mStripCount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripSize() {
        if (this.mStripSizeTag == null) {
            return 0;
        }
        return (int) this.mStripSizeTag.getValueAt(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCompressedImageSize() {
        if (this.mJpegSizeTag == null) {
            return 0;
        }
        return (int) this.mJpegSizeTag.getValueAt(0);
    }

    private void skipTo(int i) throws IOException {
        this.mTiffStream.skipTo(i);
        while (!this.mCorrespondingEvent.isEmpty() && this.mCorrespondingEvent.firstKey().intValue() < i) {
            this.mCorrespondingEvent.pollFirstEntry();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerForTagValue(OplusExifTag oplusExifTag) {
        if (oplusExifTag.getOffset() >= this.mTiffStream.getReadByteCount()) {
            this.mCorrespondingEvent.put(Integer.valueOf(oplusExifTag.getOffset()), new ExifTagEvent(oplusExifTag, true));
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

    private OplusExifTag readTag() throws IOException, OplusExifInvalidFormatException {
        short readShort = this.mTiffStream.readShort();
        short readShort2 = this.mTiffStream.readShort();
        long readUnsignedInt = this.mTiffStream.readUnsignedInt();
        if (readUnsignedInt > 2147483647L) {
            throw new OplusExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        }
        if (!OplusExifTag.isValidType(readShort2)) {
            Log.w(TAG, String.format("Tag %04x: Invalid data type %d", Short.valueOf(readShort), Short.valueOf(readShort2)));
            this.mTiffStream.skip(4L);
            return null;
        }
        int i = (int) readUnsignedInt;
        OplusExifTag oplusExifTag = new OplusExifTag(readShort, readShort2, i, this.mIfdType, i != 0);
        int dataSize = oplusExifTag.getDataSize();
        if (dataSize > 4) {
            long readUnsignedInt2 = this.mTiffStream.readUnsignedInt();
            if (readUnsignedInt2 > 2147483647L) {
                throw new OplusExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
            }
            if (readUnsignedInt2 < this.mIfd0Position && readShort2 == 7) {
                byte[] bArr = new byte[i];
                System.arraycopy(this.mDataAboveIfd0, ((int) readUnsignedInt2) - 8, bArr, 0, i);
                oplusExifTag.setValue(bArr);
            } else {
                oplusExifTag.setOffset((int) readUnsignedInt2);
            }
        } else {
            boolean hasDefinedCount = oplusExifTag.hasDefinedCount();
            oplusExifTag.setHasDefinedCount(false);
            readFullTagValue(oplusExifTag);
            oplusExifTag.setHasDefinedCount(hasDefinedCount);
            this.mTiffStream.skip(4 - dataSize);
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
            }
        } else if (tagId == TAG_GPS_IFD && checkAllowed(ifd, OplusExifInterface.TAG_GPS_IFD)) {
            if (isIfdRequested(4)) {
                registerIfd(4, oplusExifTag.getValueAt(0));
            }
        } else if (tagId == TAG_INTEROPERABILITY_IFD && checkAllowed(ifd, OplusExifInterface.TAG_INTEROPERABILITY_IFD)) {
            if (isIfdRequested(3)) {
                registerIfd(3, oplusExifTag.getValueAt(0));
            }
        } else if (tagId == TAG_JPEG_INTERCHANGE_FORMAT && checkAllowed(ifd, OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)) {
            if (isThumbnailRequested()) {
                registerCompressedImage(oplusExifTag.getValueAt(0));
            }
        } else if (tagId == TAG_JPEG_INTERCHANGE_FORMAT_LENGTH && checkAllowed(ifd, OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)) {
            if (isThumbnailRequested()) {
                this.mJpegSizeTag = oplusExifTag;
            }
        } else if (tagId == TAG_STRIP_OFFSETS && checkAllowed(ifd, OplusExifInterface.TAG_STRIP_OFFSETS)) {
            if (isThumbnailRequested()) {
                if (oplusExifTag.hasValue()) {
                    for (int i = 0; i < oplusExifTag.getComponentCount(); i++) {
                        registerUncompressedStrip(i, oplusExifTag.getValueAt(i));
                    }
                    return;
                }
                this.mCorrespondingEvent.put(Integer.valueOf(oplusExifTag.getOffset()), new ExifTagEvent(oplusExifTag, false));
            }
        } else if (tagId == TAG_STRIP_BYTE_COUNTS && checkAllowed(ifd, OplusExifInterface.TAG_STRIP_BYTE_COUNTS) && isThumbnailRequested() && oplusExifTag.hasValue()) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void readFullTagValue(OplusExifTag oplusExifTag) throws IOException {
        try {
            short dataType = oplusExifTag.getDataType();
            if (dataType == 2 || dataType == 7 || dataType == 1) {
                int componentCount = oplusExifTag.getComponentCount();
                if (this.mCorrespondingEvent.size() > 0 && this.mCorrespondingEvent.firstEntry().getKey().intValue() < this.mTiffStream.getReadByteCount() + componentCount) {
                    Object value = this.mCorrespondingEvent.firstEntry().getValue();
                    if (value instanceof ImageEvent) {
                        Log.w(TAG, "Thumbnail overlaps value for tag: \n" + oplusExifTag.toString());
                        Map.Entry<Integer, Object> pollFirstEntry = this.mCorrespondingEvent.pollFirstEntry();
                        Log.w(TAG, "Invalid thumbnail offset: " + pollFirstEntry.getKey());
                    } else {
                        if (value instanceof IfdEvent) {
                            Log.w(TAG, "Ifd " + ((IfdEvent) value).ifd + " overlaps value for tag: \n" + oplusExifTag.toString());
                        } else if (value instanceof ExifTagEvent) {
                            Log.w(TAG, "Tag value for tag: \n" + ((ExifTagEvent) value).tag.toString() + " overlaps value for tag: \n" + oplusExifTag.toString());
                        }
                        int intValue = this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount();
                        Log.w(TAG, "Invalid size of tag: \n" + oplusExifTag.toString() + " setting count to: " + intValue);
                        oplusExifTag.forceSetComponentCount(intValue);
                    }
                }
            }
            int i = 0;
            switch (oplusExifTag.getDataType()) {
                case 1:
                case 7:
                    byte[] bArr = new byte[oplusExifTag.getComponentCount()];
                    read(bArr);
                    oplusExifTag.setValue(bArr);
                    return;
                case 2:
                    oplusExifTag.setValue(readString(oplusExifTag.getComponentCount()));
                    return;
                case 3:
                    int[] iArr = new int[oplusExifTag.getComponentCount()];
                    int length = iArr.length;
                    while (i < length) {
                        iArr[i] = readUnsignedShort();
                        i++;
                    }
                    oplusExifTag.setValue(iArr);
                    return;
                case 4:
                    long[] jArr = new long[oplusExifTag.getComponentCount()];
                    int length2 = jArr.length;
                    while (i < length2) {
                        jArr[i] = readUnsignedLong();
                        i++;
                    }
                    oplusExifTag.setValue(jArr);
                    return;
                case 5:
                    OplusRational[] oplusRationalArr = new OplusRational[oplusExifTag.getComponentCount()];
                    int length3 = oplusRationalArr.length;
                    while (i < length3) {
                        oplusRationalArr[i] = readUnsignedRational();
                        i++;
                    }
                    oplusExifTag.setValue(oplusRationalArr);
                    return;
                case 6:
                case 8:
                default:
                    return;
                case 9:
                    int[] iArr2 = new int[oplusExifTag.getComponentCount()];
                    int length4 = iArr2.length;
                    while (i < length4) {
                        iArr2[i] = readLong();
                        i++;
                    }
                    oplusExifTag.setValue(iArr2);
                    return;
                case 10:
                    OplusRational[] oplusRationalArr2 = new OplusRational[oplusExifTag.getComponentCount()];
                    int length5 = oplusRationalArr2.length;
                    while (i < length5) {
                        oplusRationalArr2[i] = readRational();
                        i++;
                    }
                    oplusExifTag.setValue(oplusRationalArr2);
                    return;
            }
        } catch (Throwable th) {
            Log.e(TAG, "readFullTagValue e = " + th);
        }
    }

    private void parseTiffHeader() throws IOException, OplusExifInvalidFormatException {
        short readShort = this.mTiffStream.readShort();
        if (18761 == readShort) {
            this.mTiffStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else if (19789 == readShort) {
            this.mTiffStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            throw new OplusExifInvalidFormatException("Invalid TIFF header");
        }
        if (this.mTiffStream.readShort() != 42) {
            throw new OplusExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean seekTiffData(InputStream inputStream) throws IOException, OplusExifInvalidFormatException {
        OplusCountedDataInputStream oplusCountedDataInputStream = new OplusCountedDataInputStream(inputStream);
        if (oplusCountedDataInputStream.readShort() != -40) {
            throw new OplusExifInvalidFormatException("Invalid JPEG format");
        }
        for (short readShort = oplusCountedDataInputStream.readShort(); readShort != -39 && !OplusJpegHeader.isSofMarker(readShort); readShort = oplusCountedDataInputStream.readShort()) {
            int readUnsignedShort = oplusCountedDataInputStream.readUnsignedShort();
            if (readShort == -31 && readUnsignedShort >= 8) {
                int readInt = oplusCountedDataInputStream.readInt();
                short readShort2 = oplusCountedDataInputStream.readShort();
                readUnsignedShort -= 6;
                if (readInt == EXIF_HEADER && readShort2 == 0) {
                    this.mTiffStartPosition = oplusCountedDataInputStream.getReadByteCount();
                    this.mApp1End = readUnsignedShort;
                    this.mOffsetToApp1EndFromSOF = this.mTiffStartPosition + this.mApp1End;
                    return true;
                }
            }
            if (readUnsignedShort >= 2) {
                long j = readUnsignedShort - 2;
                if (j == oplusCountedDataInputStream.skip(j)) {
                }
            }
            Log.w(TAG, "Invalid JPEG format.");
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetToExifEndFromSOF() {
        return this.mOffsetToApp1EndFromSOF;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getTiffStartPosition() {
        return this.mTiffStartPosition;
    }

    protected int read(byte[] bArr, int i, int i2) throws IOException {
        return this.mTiffStream.read(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int read(byte[] bArr) throws IOException {
        return this.mTiffStream.read(bArr);
    }

    protected String readString(int i) throws IOException {
        return readString(i, US_ASCII);
    }

    protected String readString(int i, Charset charset) throws IOException {
        return i > 0 ? this.mTiffStream.readString(i, charset) : "";
    }

    protected int readUnsignedShort() throws IOException {
        return this.mTiffStream.readShort() & OplusExifInterface.ColorSpace.UNCALIBRATED;
    }

    protected long readUnsignedLong() throws IOException {
        return readLong() & 4294967295L;
    }

    protected OplusRational readUnsignedRational() throws IOException {
        return new OplusRational(readUnsignedLong(), readUnsignedLong());
    }

    protected int readLong() throws IOException {
        return this.mTiffStream.readInt();
    }

    protected OplusRational readRational() throws IOException {
        return new OplusRational(readLong(), readLong());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ImageEvent {
        int stripIndex;
        int type;

        ImageEvent(int i) {
            this.stripIndex = 0;
            this.type = i;
        }

        ImageEvent(int i, int i2) {
            this.type = i;
            this.stripIndex = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class IfdEvent {
        int ifd;
        boolean isRequested;

        IfdEvent(int i, boolean z) {
            this.ifd = i;
            this.isRequested = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExifTagEvent {
        boolean isRequested;
        OplusExifTag tag;

        ExifTagEvent(OplusExifTag oplusExifTag, boolean z) {
            this.tag = oplusExifTag;
            this.isRequested = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        return this.mTiffStream.getByteOrder();
    }
}
