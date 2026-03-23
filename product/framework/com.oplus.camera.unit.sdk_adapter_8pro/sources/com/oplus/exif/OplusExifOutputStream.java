package com.oplus.exif;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
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

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifOutputStream(OutputStream outputStream, OplusExifInterface oplusExifInterface) {
        super(new BufferedOutputStream(outputStream, STREAMBUFFER_SIZE));
        this.mState = 0;
        this.mSingleByteArray = new byte[1];
        this.mBuffer = ByteBuffer.allocate(4);
        this.mInterface = oplusExifInterface;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setExifData(OplusExifData oplusExifData) {
        this.mExifData = oplusExifData;
    }

    protected OplusExifData getExifData() {
        return this.mExifData;
    }

    private int requestByteToBuffer(int i, byte[] bArr, int i2, int i3) {
        int position = i - this.mBuffer.position();
        if (i3 > position) {
            i3 = position;
        }
        this.mBuffer.put(bArr, i2, i3);
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f9, code lost:
        if (r9 <= 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fb, code lost:
        r6.out.write(r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0100, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.exif.OplusExifOutputStream.write(byte[], int, int):void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.mSingleByteArray;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    private void writeExifData() throws IOException {
        OplusExifData oplusExifData = this.mExifData;
        if (oplusExifData == null) {
            return;
        }
        ArrayList<OplusExifTag> stripNullValueTags = stripNullValueTags(oplusExifData);
        createRequiredIfdAndTag();
        int calculateAllOffset = calculateAllOffset() + 8;
        if (calculateAllOffset > MAX_EXIF_SIZE) {
            throw new IOException("Exif header is too large (>64Kb)");
        }
        OrderedDataOutputStream orderedDataOutputStream = new OrderedDataOutputStream(this.out);
        orderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        orderedDataOutputStream.writeShort((short) -31);
        orderedDataOutputStream.writeShort((short) calculateAllOffset);
        orderedDataOutputStream.writeInt(EXIF_HEADER);
        orderedDataOutputStream.writeShort((short) 0);
        if (this.mExifData.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            orderedDataOutputStream.writeShort(TIFF_BIG_ENDIAN);
        } else {
            orderedDataOutputStream.writeShort(TIFF_LITTLE_ENDIAN);
        }
        orderedDataOutputStream.setByteOrder(this.mExifData.getByteOrder());
        orderedDataOutputStream.writeShort(TIFF_HEADER);
        orderedDataOutputStream.writeInt(8);
        writeAllTags(orderedDataOutputStream);
        writeThumbnail(orderedDataOutputStream);
        Iterator<OplusExifTag> it = stripNullValueTags.iterator();
        while (it.hasNext()) {
            this.mExifData.addTag(it.next());
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

    private void writeIfd(OplusIfdData oplusIfdData, OrderedDataOutputStream orderedDataOutputStream) throws IOException {
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

    private int calculateOffsetOfIfd(OplusIfdData oplusIfdData, int i) {
        OplusExifTag[] allTags;
        int tagCount = i + (oplusIfdData.getTagCount() * 12) + 2 + 4;
        for (OplusExifTag oplusExifTag : oplusIfdData.getAllTags()) {
            if (oplusExifTag.getDataSize() > 4) {
                oplusExifTag.setOffset(tagCount);
                tagCount += oplusExifTag.getDataSize();
            }
        }
        return tagCount;
    }

    private void createRequiredIfdAndTag() throws IOException {
        OplusIfdData ifdData = this.mExifData.getIfdData(0);
        if (ifdData == null) {
            ifdData = new OplusIfdData(0);
            this.mExifData.addIfdData(ifdData);
        }
        OplusExifTag buildUninitializedTag = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_EXIF_IFD);
        if (buildUninitializedTag == null) {
            throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_EXIF_IFD);
        }
        ifdData.setTag(buildUninitializedTag);
        OplusIfdData ifdData2 = this.mExifData.getIfdData(2);
        if (ifdData2 == null) {
            ifdData2 = new OplusIfdData(2);
            this.mExifData.addIfdData(ifdData2);
        }
        if (this.mExifData.getIfdData(4) != null) {
            OplusExifTag buildUninitializedTag2 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_GPS_IFD);
            if (buildUninitializedTag2 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_GPS_IFD);
            }
            ifdData.setTag(buildUninitializedTag2);
        }
        if (this.mExifData.getIfdData(3) != null) {
            OplusExifTag buildUninitializedTag3 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_INTEROPERABILITY_IFD);
            if (buildUninitializedTag3 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_INTEROPERABILITY_IFD);
            }
            ifdData2.setTag(buildUninitializedTag3);
        }
        OplusIfdData ifdData3 = this.mExifData.getIfdData(1);
        if (this.mExifData.hasCompressedThumbnail()) {
            if (ifdData3 == null) {
                ifdData3 = new OplusIfdData(1);
                this.mExifData.addIfdData(ifdData3);
            }
            OplusExifTag buildUninitializedTag4 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            if (buildUninitializedTag4 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            }
            ifdData3.setTag(buildUninitializedTag4);
            OplusExifTag buildUninitializedTag5 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            if (buildUninitializedTag5 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            }
            buildUninitializedTag5.setValue(this.mExifData.getCompressedThumbnail().length);
            ifdData3.setTag(buildUninitializedTag5);
            ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS));
            ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS));
        } else if (!this.mExifData.hasUncompressedStrip()) {
            if (ifdData3 != null) {
                ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS));
                ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_BYTE_COUNTS));
                ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
                ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
            }
        } else {
            if (ifdData3 == null) {
                ifdData3 = new OplusIfdData(1);
                this.mExifData.addIfdData(ifdData3);
            }
            int stripCount = this.mExifData.getStripCount();
            OplusExifTag buildUninitializedTag6 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_STRIP_OFFSETS);
            if (buildUninitializedTag6 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_STRIP_OFFSETS);
            }
            OplusExifTag buildUninitializedTag7 = this.mInterface.buildUninitializedTag(OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
            if (buildUninitializedTag7 == null) {
                throw new IOException("No definition for crucial exif tag: " + OplusExifInterface.TAG_STRIP_BYTE_COUNTS);
            }
            long[] jArr = new long[stripCount];
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                jArr[i] = this.mExifData.getStrip(i).length;
            }
            buildUninitializedTag7.setValue(jArr);
            ifdData3.setTag(buildUninitializedTag6);
            ifdData3.setTag(buildUninitializedTag7);
            ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
            ifdData3.removeTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
        }
    }

    private int calculateAllOffset() {
        OplusIfdData ifdData = this.mExifData.getIfdData(0);
        int calculateOffsetOfIfd = calculateOffsetOfIfd(ifdData, 8);
        ifdData.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_EXIF_IFD)).setValue(calculateOffsetOfIfd);
        OplusIfdData ifdData2 = this.mExifData.getIfdData(2);
        int calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData2, calculateOffsetOfIfd);
        OplusIfdData ifdData3 = this.mExifData.getIfdData(3);
        if (ifdData3 != null) {
            ifdData2.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_INTEROPERABILITY_IFD)).setValue(calculateOffsetOfIfd2);
            calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData3, calculateOffsetOfIfd2);
        }
        OplusIfdData ifdData4 = this.mExifData.getIfdData(4);
        if (ifdData4 != null) {
            ifdData.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_GPS_IFD)).setValue(calculateOffsetOfIfd2);
            calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData4, calculateOffsetOfIfd2);
        }
        OplusIfdData ifdData5 = this.mExifData.getIfdData(1);
        if (ifdData5 != null) {
            ifdData.setOffsetToNextIfd(calculateOffsetOfIfd2);
            int calculateOffsetOfIfd3 = calculateOffsetOfIfd(ifdData5, calculateOffsetOfIfd2);
            if (this.mExifData.hasCompressedThumbnail()) {
                ifdData5.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)).setValue(calculateOffsetOfIfd3);
                return calculateOffsetOfIfd3 + this.mExifData.getCompressedThumbnail().length;
            } else if (this.mExifData.hasUncompressedStrip()) {
                long[] jArr = new long[this.mExifData.getStripCount()];
                for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                    jArr[i] = calculateOffsetOfIfd3;
                    calculateOffsetOfIfd3 += this.mExifData.getStrip(i).length;
                }
                ifdData5.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_STRIP_OFFSETS)).setValue(jArr);
                return calculateOffsetOfIfd3;
            } else {
                return calculateOffsetOfIfd3;
            }
        }
        return calculateOffsetOfIfd2;
    }

    static void writeTagValue(OplusExifTag oplusExifTag, OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        int i = 0;
        switch (oplusExifTag.getDataType()) {
            case 1:
            case 7:
                byte[] bArr = new byte[oplusExifTag.getComponentCount()];
                oplusExifTag.getBytes(bArr);
                orderedDataOutputStream.write(bArr);
                return;
            case 2:
                byte[] stringByte = oplusExifTag.getStringByte();
                if (stringByte == null || stringByte.length == 0) {
                    return;
                }
                if (stringByte.length == oplusExifTag.getComponentCount()) {
                    stringByte[stringByte.length - 1] = 0;
                    orderedDataOutputStream.write(stringByte);
                    return;
                }
                orderedDataOutputStream.write(stringByte);
                orderedDataOutputStream.write(0);
                return;
            case 3:
                int componentCount = oplusExifTag.getComponentCount();
                while (i < componentCount) {
                    orderedDataOutputStream.writeShort((short) oplusExifTag.getValueAt(i));
                    i++;
                }
                return;
            case 4:
            case 9:
                int componentCount2 = oplusExifTag.getComponentCount();
                while (i < componentCount2) {
                    orderedDataOutputStream.writeInt((int) oplusExifTag.getValueAt(i));
                    i++;
                }
                return;
            case 5:
            case 10:
                int componentCount3 = oplusExifTag.getComponentCount();
                while (i < componentCount3) {
                    orderedDataOutputStream.writeRational(oplusExifTag.getRational(i));
                    i++;
                }
                return;
            case 6:
            case 8:
            default:
                return;
        }
    }
}
