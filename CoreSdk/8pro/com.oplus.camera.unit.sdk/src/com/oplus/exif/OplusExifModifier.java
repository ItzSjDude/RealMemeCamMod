package com.oplus.exif;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class OplusExifModifier {
    public static final boolean DEBUG = false;
    public static final String TAG = "ExifModifier";
    private final ByteBuffer mByteBuffer;
    private final OplusExifInterface mInterface;
    private int mOffsetBase;
    private final List<TagOffset> mTagOffsets = new ArrayList();
    private final OplusExifData mTagToModified;

    private static class TagOffset {
        final int mOffset;
        final OplusExifTag mTag;

        TagOffset(OplusExifTag tag, int offset) {
            this.mTag = tag;
            this.mOffset = offset;
        }
    }

    protected OplusExifModifier(ByteBuffer byteBuffer, OplusExifInterface oplusExifInterface) throws Exception {
        this.mByteBuffer = byteBuffer;
        this.mOffsetBase = byteBuffer.position();
        this.mInterface = oplusExifInterface;
        try (OplusByteBufferInputStream oplusByteBufferInputStream2 = new OplusByteBufferInputStream(byteBuffer)) {
            OplusExifParser oplusExifParser = OplusExifParser.parse(oplusByteBufferInputStream2, oplusExifInterface);
            this.mTagToModified = new OplusExifData(oplusExifParser.getByteOrder());
            this.mOffsetBase += oplusExifParser.getTiffStartPosition();
            byteBuffer.position(0);
        }
    }

    protected ByteOrder getByteOrder() {
        return this.mTagToModified.getByteOrder();
    }

    protected boolean commit() throws Exception {
        OplusExifTag tag;
        OplusExifTag tag2;
        OplusIfdData oplusIfdData = null;
        try (OplusByteBufferInputStream oplusByteBufferInputStream2 = new OplusByteBufferInputStream(
                this.mByteBuffer)) {
            OplusIfdData ifdData = this.mTagToModified.getIfdData(4);
            OplusIfdData[] oplusIfdDataArr = { this.mTagToModified.getIfdData(0), this.mTagToModified.getIfdData(1),
                    this.mTagToModified.getIfdData(2), this.mTagToModified.getIfdData(3), ifdData };
            int options = oplusIfdDataArr[0] != null ? 1 : 0;
            if (oplusIfdDataArr[1] != null) {
                options |= 2;
            }
            if (oplusIfdDataArr[2] != null) {
                options |= 4;
            }
            if (ifdData != null) {
                options |= 8;
            }
            if (oplusIfdDataArr[3] != null) {
                options |= 16;
            }
            OplusExifParser oplusExifParser = OplusExifParser.parse(oplusByteBufferInputStream2, options,
                    this.mInterface);
            for (int next = oplusExifParser.next(); next != 5; next = oplusExifParser.next()) {
                if (next == 0) {
                    oplusIfdData = oplusIfdDataArr[oplusExifParser.getCurrentIfd()];
                    if (oplusIfdData == null) {
                        oplusExifParser.skipRemainingTagsInCurrentIfd();
                    }
                } else if (next == 1 && (tag = oplusExifParser.getTag()) != null && oplusIfdData != null
                        && (tag2 = oplusIfdData.getTag(tag.getTagId())) != null) {
                    if (tag2.getComponentCount() == tag.getComponentCount()
                            && tag2.getDataType() == tag.getDataType()) {
                        this.mTagOffsets.add(new TagOffset(tag2, tag.getOffset()));
                        oplusIfdData.removeTag(tag.getTagId());
                        if (oplusIfdData.getTagCount() == 0) {
                            oplusExifParser.skipRemainingTagsInCurrentIfd();
                        }
                    }
                    return false;
                }
            }
            for (int ifdId = 0; ifdId < 5; ifdId++) {
                OplusIfdData subIfdData = oplusIfdDataArr[ifdId];
                if (subIfdData != null && subIfdData.getTagCount() > 0) {
                    return false;
                }
            }
            modify();
            return true;
        }
    }

    private void modify() {
        this.mByteBuffer.order(getByteOrder());
        for (TagOffset tagOffset : this.mTagOffsets) {
            writeTagValue(tagOffset.mTag, tagOffset.mOffset);
        }
    }

    private void writeTagValue(OplusExifTag tag, int offset) {
        this.mByteBuffer.position(offset + this.mOffsetBase);
        int index = 0;
        switch (tag.getDataType()) {
            case 1:
            case 7:
                byte[] val = new byte[tag.getComponentCount()];
                tag.getBytes(val);
                this.mByteBuffer.put(val);
                break;
            case 2:
                byte[] stringByte = tag.getStringByte();
                if (stringByte.length == tag.getComponentCount()) {
                    stringByte[stringByte.length - 1] = 0;
                    this.mByteBuffer.put(stringByte);
                } else {
                    this.mByteBuffer.put(stringByte);
                    this.mByteBuffer.put((byte) 0);
                }
                break;
            case 3:
                int componentCount = tag.getComponentCount();
                while (index < componentCount) {
                    this.mByteBuffer.putShort((short) tag.getValueAt(index));
                    index++;
                }
                break;
            case 4:
            case 9:
                int componentCount2 = tag.getComponentCount();
                while (index < componentCount2) {
                    this.mByteBuffer.putInt((int) tag.getValueAt(index));
                    index++;
                }
                break;
            case 5:
            case 10:
                int componentCount3 = tag.getComponentCount();
                while (index < componentCount3) {
                    OplusRational rational = tag.getRational(index);
                    this.mByteBuffer.putInt((int) rational.getNumerator());
                    this.mByteBuffer.putInt((int) rational.getDenominator());
                    index++;
                }
                break;
        }
    }

    public void modifyTag(OplusExifTag tag) {
        this.mTagToModified.addTag(tag);
    }
}
