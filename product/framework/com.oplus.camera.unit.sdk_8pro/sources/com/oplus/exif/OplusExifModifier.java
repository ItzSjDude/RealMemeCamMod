package com.oplus.exif;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class OplusExifModifier {
    public static final boolean DEBUG = false;
    public static final String TAG = "ExifModifier";
    private final ByteBuffer mByteBuffer;
    private final OplusExifInterface mInterface;
    private int mOffsetBase;
    private final List<TagOffset> mTagOffsets = new ArrayList();
    private final OplusExifData mTagToModified;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TagOffset {
        final int mOffset;
        final OplusExifTag mTag;

        TagOffset(OplusExifTag oplusExifTag, int i) {
            this.mTag = oplusExifTag;
            this.mOffset = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifModifier(ByteBuffer byteBuffer, OplusExifInterface oplusExifInterface) throws IOException, OplusExifInvalidFormatException {
        this.mByteBuffer = byteBuffer;
        this.mOffsetBase = byteBuffer.position();
        this.mInterface = oplusExifInterface;
        OplusByteBufferInputStream oplusByteBufferInputStream = null;
        try {
            OplusByteBufferInputStream oplusByteBufferInputStream2 = new OplusByteBufferInputStream(byteBuffer);
            try {
                OplusExifParser parse = OplusExifParser.parse(oplusByteBufferInputStream2, oplusExifInterface);
                this.mTagToModified = new OplusExifData(parse.getByteOrder());
                this.mOffsetBase += parse.getTiffStartPosition();
                byteBuffer.position(0);
                OplusExifInterface.closeSilently(oplusByteBufferInputStream2);
            } catch (Throwable th) {
                th = th;
                oplusByteBufferInputStream = oplusByteBufferInputStream2;
                OplusExifInterface.closeSilently(oplusByteBufferInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected ByteOrder getByteOrder() {
        return this.mTagToModified.getByteOrder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean commit() throws IOException, OplusExifInvalidFormatException {
        OplusExifTag tag;
        OplusExifTag tag2;
        OplusByteBufferInputStream oplusByteBufferInputStream = null;
        OplusIfdData oplusIfdData = null;
        try {
            OplusByteBufferInputStream oplusByteBufferInputStream2 = new OplusByteBufferInputStream(this.mByteBuffer);
            try {
                OplusIfdData ifdData = this.mTagToModified.getIfdData(4);
                OplusIfdData[] oplusIfdDataArr = {this.mTagToModified.getIfdData(0), this.mTagToModified.getIfdData(1), this.mTagToModified.getIfdData(2), this.mTagToModified.getIfdData(3), ifdData};
                int i = oplusIfdDataArr[0] != null ? 1 : 0;
                if (oplusIfdDataArr[1] != null) {
                    i |= 2;
                }
                if (oplusIfdDataArr[2] != null) {
                    i |= 4;
                }
                if (ifdData != null) {
                    i |= 8;
                }
                if (oplusIfdDataArr[3] != null) {
                    i |= 16;
                }
                OplusExifParser parse = OplusExifParser.parse(oplusByteBufferInputStream2, i, this.mInterface);
                for (int next = parse.next(); next != 5; next = parse.next()) {
                    if (next == 0) {
                        oplusIfdData = oplusIfdDataArr[parse.getCurrentIfd()];
                        if (oplusIfdData == null) {
                            parse.skipRemainingTagsInCurrentIfd();
                        }
                    } else if (next == 1 && (tag = parse.getTag()) != null && oplusIfdData != null && (tag2 = oplusIfdData.getTag(tag.getTagId())) != null) {
                        if (tag2.getComponentCount() == tag.getComponentCount() && tag2.getDataType() == tag.getDataType()) {
                            this.mTagOffsets.add(new TagOffset(tag2, tag.getOffset()));
                            oplusIfdData.removeTag(tag.getTagId());
                            if (oplusIfdData.getTagCount() == 0) {
                                parse.skipRemainingTagsInCurrentIfd();
                            }
                        }
                        OplusExifInterface.closeSilently(oplusByteBufferInputStream2);
                        return false;
                    }
                }
                for (int i2 = 0; i2 < 5; i2++) {
                    OplusIfdData oplusIfdData2 = oplusIfdDataArr[i2];
                    if (oplusIfdData2 != null && oplusIfdData2.getTagCount() > 0) {
                        OplusExifInterface.closeSilently(oplusByteBufferInputStream2);
                        return false;
                    }
                }
                modify();
                OplusExifInterface.closeSilently(oplusByteBufferInputStream2);
                return true;
            } catch (Throwable th) {
                th = th;
                oplusByteBufferInputStream = oplusByteBufferInputStream2;
                OplusExifInterface.closeSilently(oplusByteBufferInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void modify() {
        this.mByteBuffer.order(getByteOrder());
        for (TagOffset tagOffset : this.mTagOffsets) {
            writeTagValue(tagOffset.mTag, tagOffset.mOffset);
        }
    }

    private void writeTagValue(OplusExifTag oplusExifTag, int i) {
        this.mByteBuffer.position(i + this.mOffsetBase);
        int i2 = 0;
        switch (oplusExifTag.getDataType()) {
            case 1:
            case 7:
                byte[] bArr = new byte[oplusExifTag.getComponentCount()];
                oplusExifTag.getBytes(bArr);
                this.mByteBuffer.put(bArr);
                return;
            case 2:
                byte[] stringByte = oplusExifTag.getStringByte();
                if (stringByte.length == oplusExifTag.getComponentCount()) {
                    stringByte[stringByte.length - 1] = 0;
                    this.mByteBuffer.put(stringByte);
                    return;
                }
                this.mByteBuffer.put(stringByte);
                this.mByteBuffer.put((byte) 0);
                return;
            case 3:
                int componentCount = oplusExifTag.getComponentCount();
                while (i2 < componentCount) {
                    this.mByteBuffer.putShort((short) oplusExifTag.getValueAt(i2));
                    i2++;
                }
                return;
            case 4:
            case 9:
                int componentCount2 = oplusExifTag.getComponentCount();
                while (i2 < componentCount2) {
                    this.mByteBuffer.putInt((int) oplusExifTag.getValueAt(i2));
                    i2++;
                }
                return;
            case 5:
            case 10:
                int componentCount3 = oplusExifTag.getComponentCount();
                while (i2 < componentCount3) {
                    OplusRational rational = oplusExifTag.getRational(i2);
                    this.mByteBuffer.putInt((int) rational.getNumerator());
                    this.mByteBuffer.putInt((int) rational.getDenominator());
                    i2++;
                }
                return;
            case 6:
            case 8:
            default:
                return;
        }
    }

    public void modifyTag(OplusExifTag oplusExifTag) {
        this.mTagToModified.addTag(oplusExifTag);
    }
}
