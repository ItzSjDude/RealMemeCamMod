package com.oplus.exif;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class OplusExifOutputStream extends FilterOutputStream {
    private static final boolean DEBUG = false;
    private static final int EXIF_HEADER = 1165519206;
    private static final int MAX_EXIF_SIZE = 65535;
    private static final int STATE_FRAME_HEADER = 1;
    private static final int STATE_JPEG_DATA = 2;
    private static final int STATE_SOI = 0;
    private static final int STREAMBUFFER_SIZE = 65536;
    private static final String TAG = "ExifOutputStream";
    private static final short TAG_SIZE = 12;
    private static final short TIFF_BIG_ENDIAN = 19789;
    private static final short TIFF_HEADER = 42;
    private static final short TIFF_HEADER_SIZE = 8;
    private static final short TIFF_LITTLE_ENDIAN = 18761;
    private ByteBuffer mBuffer;
    private int mByteToCopy;
    private int mByteToSkip;
    private OplusExifData mExifData;
    private final OplusExifInterface mInterface;
    private byte[] mSingleByteArray;
    private int mState;

    protected OplusExifOutputStream(OutputStream outputStream, OplusExifInterface oplusExifInterface) {
        super(new BufferedOutputStream(outputStream, STREAMBUFFER_SIZE));
        this.mState = 0;
        this.mSingleByteArray = new byte[1];
        this.mBuffer = ByteBuffer.allocate(4);
        this.mInterface = oplusExifInterface;
    }

    protected void setExifData(OplusExifData oplusExifData) {
        this.mExifData = oplusExifData;
    }

    protected OplusExifData getExifData() {
        return this.mExifData;
    }

    private int requestByteToBuffer(int requestSize, byte[] buffer, int offset, int length) {
        int remainingSpace = requestSize - this.mBuffer.position();
        if (length > remainingSpace) {
            length = remainingSpace;
        }
        this.mBuffer.put(buffer, offset, length);
        return length;
    }

    /*
     * JADX WARN: Code restructure failed: missing block: B:50:0x00f9, code lost:
     * 
     * if (r9 <= 0) goto L66;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:51:0x00fb, code lost:
     * 
     * r6.out.write(r7, r8, r9);
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:52:0x0100, code lost:
     * 
     * return;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
     * 
     * return;
     */
    @Override
    public void write(byte[] buffer, int offset, int length) throws IOException {
        while (true) {
            int remainingSkip = this.mByteToSkip;
            if ((remainingSkip <= 0 && this.mByteToCopy <= 0 && this.mState == 2) || length <= 0) {
                break;
            }
            if (remainingSkip > 0) {
                int skipNow = length > remainingSkip ? remainingSkip : length;
                length -= skipNow;
                this.mByteToSkip = remainingSkip - skipNow;
                offset += skipNow;
            }
            int remainingCopy = this.mByteToCopy;
            if (remainingCopy > 0) {
                if (length <= remainingCopy) {
                    remainingCopy = length;
                }
                this.out.write(buffer, offset, remainingCopy);
                length -= remainingCopy;
                this.mByteToCopy -= remainingCopy;
                offset += remainingCopy;
            }
            if (length == 0) {
                return;
            }
            int state = this.mState;
            if (state == 0) {
                int bytesBuffered = requestByteToBuffer(2, buffer, offset, length);
                offset += bytesBuffered;
                length -= bytesBuffered;
                if (this.mBuffer.position() < 2) {
                    return;
                }
                this.mBuffer.rewind();
                if (this.mBuffer.getShort() != -40) {
                    throw new IOException("Not a valid jpeg image, cannot write exif");
                }
                this.out.write(this.mBuffer.array(), 0, 2);
                this.mState = 1;
                this.mBuffer.rewind();
                writeExifData();
            } else if (state != 1) {
                continue;
            } else {
                int bytesBuffered2 = requestByteToBuffer(4, buffer, offset, length);
                offset += bytesBuffered2;
                length -= bytesBuffered2;
                if (this.mBuffer.position() == 2 && this.mBuffer.getShort() == -39) {
                    this.out.write(this.mBuffer.array(), 0, 2);
                    this.mBuffer.rewind();
                }
                if (this.mBuffer.position() < 4) {
                    return;
                }
                this.mBuffer.rewind();
                short marker = this.mBuffer.getShort();
                if (marker == -31) {
                    this.mByteToSkip = (this.mBuffer.getShort() & MAX_EXIF_SIZE) - 2;
                    this.mState = 2;
                } else if (!OplusJpegHeader.isSofMarker(marker)) {
                    this.out.write(this.mBuffer.array(), 0, 4);
                    this.mByteToCopy = (this.mBuffer.getShort() & MAX_EXIF_SIZE) - 2;
                } else {
                    this.out.write(this.mBuffer.array(), 0, 4);
                    this.mState = 2;
                }
                this.mBuffer.rewind();
            }
        }
    }

    @Override
    public void write(int oneByte) throws IOException {
        byte[] buffer = this.mSingleByteArray;
        buffer[0] = (byte) (oneByte & 255);
        write(buffer);
    }

    @Override
    public void write(byte[] buffer) throws IOException {
        write(buffer, 0, buffer.length);
    }

    private void writeExifData() throws IOException {
        OplusExifData exifData = this.mExifData;
        if (exifData == null) {
            return;
        }
        ArrayList<OplusExifTag> strippedTags = stripNullValueTags(exifData);
        createRequiredIfdAndTag();
        int exifSize = calculateAllOffset() + 8;
        if (exifSize > MAX_EXIF_SIZE) {
            throw new IOException("Exif header is too large (>64Kb)");
        }
        OrderedDataOutputStream orderedOut = new OrderedDataOutputStream(this.out);
        orderedOut.setByteOrder(ByteOrder.BIG_ENDIAN);
        orderedOut.writeShort((short) -31);
        orderedOut.writeShort((short) exifSize);
        orderedOut.writeInt(EXIF_HEADER);
        orderedOut.writeShort((short) 0);
        if (this.mExifData.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            orderedOut.writeShort(TIFF_BIG_ENDIAN);
        } else {
            orderedOut.writeShort(TIFF_LITTLE_ENDIAN);
        }
        orderedOut.setByteOrder(this.mExifData.getByteOrder());
        orderedOut.writeShort(TIFF_HEADER);
        orderedOut.writeInt(8);
        writeAllTags(orderedOut);
        writeThumbnail(orderedOut);
        for (OplusExifTag tag : strippedTags) {
            this.mExifData.addTag(tag);
        }
    }

    private ArrayList<OplusExifTag> stripNullValueTags(OplusExifData oplusExifData) {
        ArrayList<OplusExifTag> arrayList = new ArrayList<>();
        List<OplusExifTag> allTags = oplusExifData.getAllTags();
        if (allTags != null && allTags.size() > 0) {
            for (OplusExifTag oplusExifTag : allTags) {
                if (oplusExifTag.getValue() == null && !OplusExifInterface.isOffsetTag(oplusExifTag.getTagId())) {
                    oplusExifData.removeTag(oplusExifTag.getTagId(), oplusExifTag.getIfd());
                    arrayList.add(oplusExifTag);
                }
            }
        }
        return arrayList;
    }

    private void writeThumbnail(OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        if (this.mExifData.hasCompressedThumbnail()) {
            orderedDataOutputStream.write(this.mExifData.getCompressedThumbnail());
        } else if (this.mExifData.hasUncompressedStrip()) {
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                orderedDataOutputStream.write(this.mExifData.getStrip(i));
            }
        }
    }

    private void writeAllTags(OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        writeIfd(this.mExifData.getIfdData(0), orderedDataOutputStream);
        writeIfd(this.mExifData.getIfdData(2), orderedDataOutputStream);
        OplusIfdData ifdData = this.mExifData.getIfdData(3);
        if (ifdData != null) {
            writeIfd(ifdData, orderedDataOutputStream);
        }
        OplusIfdData ifdData2 = this.mExifData.getIfdData(4);
        if (ifdData2 != null) {
            writeIfd(ifdData2, orderedDataOutputStream);
        }
        if (this.mExifData.getIfdData(1) != null) {
            writeIfd(this.mExifData.getIfdData(1), orderedDataOutputStream);
        }
    }

    private void writeIfd(OplusIfdData oplusIfdData, OrderedDataOutputStream orderedDataOutputStream)
            throws IOException {
        OplusExifTag[] allTags = oplusIfdData.getAllTags();
        orderedDataOutputStream.writeShort((short) allTags.length);
        for (OplusExifTag oplusExifTag : allTags) {
            orderedDataOutputStream.writeShort(oplusExifTag.getTagId());
            orderedDataOutputStream.writeShort(oplusExifTag.getDataType());
            orderedDataOutputStream.writeInt(oplusExifTag.getComponentCount());
            if (oplusExifTag.getDataSize() > 4) {
                orderedDataOutputStream.writeInt(oplusExifTag.getOffset());
            } else {
                writeTagValue(oplusExifTag, orderedDataOutputStream);
                int dataSize = 4 - oplusExifTag.getDataSize();
                for (int i = 0; i < dataSize; i++) {
                    orderedDataOutputStream.write(0);
                }
            }
        }
        orderedDataOutputStream.writeInt(oplusIfdData.getOffsetToNextIfd());
        for (OplusExifTag oplusExifTag2 : allTags) {
            if (oplusExifTag2.getDataSize() > 4) {
                writeTagValue(oplusExifTag2, orderedDataOutputStream);
            }
        }
    }

    private int calculateOffsetOfIfd(OplusIfdData ifdData, int offset) {
        int currentOffset = offset + (ifdData.getTagCount() * 12) + 2 + 4;
        for (OplusExifTag tag : ifdData.getAllTags()) {
            if (tag.getDataSize() > 4) {
                tag.setOffset(currentOffset);
                currentOffset += tag.getDataSize();
            }
        }
        return currentOffset;
    }

    private void createRequiredIfdAndTag() throws IOException {
        OplusIfdData ifd0 = this.mExifData.getIfdData(0);
        if (ifd0 == null) {
            ifd0 = new OplusIfdData(0);
            this.mExifData.addIfdData(ifd0);
        }
        OplusExifTag exifIfdTag = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_EXIF_IFD);
        if (exifIfdTag == null) {
            throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_EXIF_IFD);
        }
        ifd0.setTag(exifIfdTag);
        OplusIfdData ifd2 = this.mExifData.getIfdData(2);
        if (ifd2 == null) {
            ifd2 = new OplusIfdData(2);
            this.mExifData.addIfdData(ifd2);
        }
        if (this.mExifData.getIfdData(4) != null) {
            OplusExifTag gpsIfdTag = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_GPS_IFD);
            if (gpsIfdTag == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_GPS_IFD);
            }
            ifd0.setTag(gpsIfdTag);
        }
        if (this.mExifData.getIfdData(3) != null) {
            OplusExifTag interopIfdTag = this.mInterface
                    .buildUninitializedTag(OplusExifInterface.TAG_INTEROPERABILITY_IFD);
            if (interopIfdTag == null) {
                throw new IOException(
                        "No definition for crucial exif tag: " + OplusExifInterface.TAG_INTEROPERABILITY_IFD);
            }
            ifd2.setTag(interopIfdTag);
        }
        OplusIfdData ifd1 = this.mExifData.getIfdData(1);
        if (this.mExifData.hasCompressedThumbnail()) {
            if (ifd1 == null) {
                ifd1 = new OplusIfdData(1);
                this.mExifData.addIfdData(ifd1);
            }
            OplusExifTag jpegOffsetTag = this.mInterface
                    .buildUninitializedTag(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            if (jpegOffsetTag == null) {
                throw new IOException(
                        "No definition for crucial exif tag: " + OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            }
            ifd1.setTag(jpegOffsetTag);
            OplusExifTag jpegLengthTag = this.mInterface
                    .buildUninitializedTag(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            if (jpegLengthTag == null) {
                throw new IOException(
                        "No definition for crucial exif tag: " + OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            }
            jpegLengthTag.setValue(this.mExifData.getCompressedThumbnail().length);
            ifd1.setTag(jpegLengthTag);
            ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS));
            ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS));
            return;
        }
        if (!this.mExifData.hasUncompressedStrip()) {
            if (ifd1 != null) {
                ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS));
                ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS));
                ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
                ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
                return;
            }
            return;
        }
        if (ifd1 == null) {
            ifd1 = new OplusIfdData(1);
            this.mExifData.addIfdData(ifd1);
        }
        int stripCount = this.mExifData.getStripCount();
        OplusExifTag stripOffsetTag = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_STRIP_OFFSETS);
        if (stripOffsetTag == null) {
            throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_STRIP_OFFSETS);
        }
        OplusExifTag stripByteCountTag = this.mInterface
                .buildUninitializedTag(OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
        if (stripByteCountTag == null) {
            throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
        }
        long[] stripByteCounts = new long[stripCount];
        for (int i = 0; i < this.mExifData.getStripCount(); i++) {
            stripByteCounts[i] = this.mExifData.getStrip(i).length;
        }
        stripByteCountTag.setValue(stripByteCounts);
        ifd1.setTag(stripOffsetTag);
        ifd1.setTag(stripByteCountTag);
        ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
        ifd1.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
    }

    private int calculateAllOffset() {
        OplusIfdData ifd0 = this.mExifData.getIfdData(0);
        int offset = calculateOffsetOfIfd(ifd0, 8);
        ifd0.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_EXIF_IFD)).setValue(offset);
        OplusIfdData ifd2 = this.mExifData.getIfdData(2);
        int offset2 = calculateOffsetOfIfd(ifd2, offset);
        OplusIfdData ifd3 = this.mExifData.getIfdData(3);
        if (ifd3 != null) {
            ifd2.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_INTEROPERABILITY_IFD))
                    .setValue(offset2);
            offset2 = calculateOffsetOfIfd(ifd3, offset2);
        }
        OplusIfdData ifd4 = this.mExifData.getIfdData(4);
        if (ifd4 != null) {
            ifd0.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_GPS_IFD)).setValue(offset2);
            offset2 = calculateOffsetOfIfd(ifd4, offset2);
        }
        OplusIfdData ifd1 = this.mExifData.getIfdData(1);
        if (ifd1 == null) {
            return offset2;
        }
        ifd0.setOffsetToNextIfd(offset2);
        int offset3 = calculateOffsetOfIfd(ifd1, offset2);
        if (this.mExifData.hasCompressedThumbnail()) {
            ifd1.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT))
                    .setValue(offset3);
            return offset3 + this.mExifData.getCompressedThumbnail().length;
        }
        if (!this.mExifData.hasUncompressedStrip()) {
            return offset3;
        }
        long[] stripOffsets = new long[this.mExifData.getStripCount()];
        for (int i = 0; i < this.mExifData.getStripCount(); i++) {
            stripOffsets[i] = offset3;
            offset3 += this.mExifData.getStrip(i).length;
        }
        ifd1.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS)).setValue(stripOffsets);
        return offset3;
    }

    static void writeTagValue(OplusExifTag tag, OrderedDataOutputStream orderedOut) throws IOException {
        int index = 0;
        switch (tag.getDataType()) {
            case 1:
            case 7:
                byte[] bytes = new byte[tag.getComponentCount()];
                tag.getBytes(bytes);
                orderedOut.write(bytes);
                break;
            case 2:
                byte[] stringBytes = tag.getStringByte();
                if (stringBytes != null && stringBytes.length != 0) {
                    if (stringBytes.length == tag.getComponentCount()) {
                        stringBytes[stringBytes.length - 1] = 0;
                        orderedOut.write(stringBytes);
                    } else {
                        orderedOut.write(stringBytes);
                        orderedOut.write(0);
                    }
                    break;
                }
                break;
            case 3:
                int count = tag.getComponentCount();
                while (index < count) {
                    orderedOut.writeShort((short) tag.getValueAt(index));
                    index++;
                }
                break;
            case 4:
            case 9:
                int longCount = tag.getComponentCount();
                while (index < longCount) {
                    orderedOut.writeInt((int) tag.getValueAt(index));
                    index++;
                }
                break;
            case 5:
            case 10:
                int rationalCount = tag.getComponentCount();
                while (index < rationalCount) {
                    orderedOut.writeRational(tag.getRational(index));
                    index++;
                }
                break;
        }
    }
}
