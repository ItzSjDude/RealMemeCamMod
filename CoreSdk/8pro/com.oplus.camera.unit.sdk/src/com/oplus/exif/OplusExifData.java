package com.oplus.exif;

import android.util.Log;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/**
 * Main data structure for holding EXIF metadata, including IFDs,
 * thumbnails, and uncompressed strip data.
 */
class OplusExifData {
    private static final String TAG = "ExifData";

    // EXIF Specs define specific 8-byte prefixes for UserComment
    private static final byte[] USER_COMMENT_ASCII = { 65, 83, 67, 73, 73, 0, 0, 0 }; // "ASCII\0\0\0"
    private static final byte[] USER_COMMENT_JIS = { 74, 73, 83, 0, 0, 0, 0, 0 }; // "JIS\0\0\0\0\0"
    private static final byte[] USER_COMMENT_UNICODE = { 85, 78, 73, 67, 79, 68, 69, 0 }; // "UNICODE\0"

    private final ByteOrder byteOrder;
    private final OplusIfdData[] ifdDatas = new OplusIfdData[OplusExifTag.NUM_IFDS]; // Assume 5
    private final ArrayList<byte[]> stripBytes = new ArrayList<>();
    private byte[] thumbnail;

    OplusExifData(ByteOrder byteOrder) {
        this.byteOrder = byteOrder;
    }

    // --- Thumbnail & Strip Management ---

    protected byte[] getCompressedThumbnail() {
        return thumbnail;
    }

    protected void setCompressedThumbnail(byte[] thumbnail) {
        this.thumbnail = thumbnail;
    }

    protected boolean hasCompressedThumbnail() {
        return thumbnail != null;
    }

    protected void setStripBytes(int index, byte[] bytes) {
        // Ensure the list is large enough to accommodate the index
        while (index >= stripBytes.size()) {
            stripBytes.add(null);
        }
        stripBytes.set(index, bytes);
    }

    protected int getStripCount() {
        return stripBytes.size();
    }

    protected byte[] getStrip(int index) {
        return (index >= 0 && index < stripBytes.size()) ? stripBytes.get(index) : null;
    }

    protected boolean hasUncompressedStrip() {
        return !stripBytes.isEmpty();
    }

    protected ByteOrder getByteOrder() {
        return byteOrder;
    }

    // --- IFD & Tag Management ---

    protected OplusIfdData getIfdData(int ifdId) {
        return OplusExifTag.isValidIfd(ifdId) ? ifdDatas[ifdId] : null;
    }

    protected void addIfdData(OplusIfdData data) {
        if (data != null && OplusExifTag.isValidIfd(data.getId())) {
            ifdDatas[data.getId()] = data;
        }
    }

    protected OplusIfdData getOrCreateIfdData(int ifdId) {
        if (!OplusExifTag.isValidIfd(ifdId))
            return null;

        OplusIfdData data = ifdDatas[ifdId];
        if (data == null) {
            data = new OplusIfdData(ifdId);
            ifdDatas[ifdId] = data;
        }
        return data;
    }

    protected OplusExifTag getTag(short tagId, int ifdId) {
        OplusIfdData data = ifdDatas[ifdId];
        return (data != null) ? data.getTag(tagId) : null;
    }

    protected OplusExifTag addTag(OplusExifTag tag) {
        return (tag != null) ? addTag(tag, tag.getIfd()) : null;
    }

    protected OplusExifTag addTag(OplusExifTag tag, int ifdId) {
        if (tag != null && OplusExifTag.isValidIfd(ifdId)) {
            return getOrCreateIfdData(ifdId).setTag(tag);
        }
        return null;
    }

    protected void removeTag(short tagId, int ifdId) {
        OplusIfdData data = ifdDatas[ifdId];
        if (data != null) {
            data.removeTag(tagId);
        }
    }

    protected void clearThumbnailAndStrips() {
        thumbnail = null;
        stripBytes.clear();
    }

    protected void removeThumbnailData() {
        clearThumbnailAndStrips();
        ifdDatas[OplusExifTag.IFD_1] = null; // Usually IFD1 holds thumbnail info
    }

    // --- Specialized Data Retrieval ---

    protected String getUserComment() {
        OplusIfdData data = ifdDatas[OplusExifTag.IFD_0];
        if (data == null)
            return null;

        OplusExifTag tag = data.getTag((short) OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_USER_COMMENT));
        if (tag == null || tag.getComponentCount() < 8)
            return null;

        byte[] rawBytes = new byte[tag.getComponentCount()];
        tag.getBytes(rawBytes);

        // Header check
        byte[] header = Arrays.copyOfRange(rawBytes, 0, 8);
        int dataLen = rawBytes.length - 8;

        if (Arrays.equals(header, USER_COMMENT_ASCII)) {
            return new String(rawBytes, 8, dataLen, StandardCharsets.US_ASCII);
        } else if (Arrays.equals(header, USER_COMMENT_JIS)) {
            return new String(rawBytes, 8, dataLen, Charset.forName("EUC-JP"));
        } else if (Arrays.equals(header, USER_COMMENT_UNICODE)) {
            return new String(rawBytes, 8, dataLen, StandardCharsets.UTF_16);
        }

        return null;
    }

    protected List<OplusExifTag> getAllTags() {
        List<OplusExifTag> result = new ArrayList<>();
        for (OplusIfdData data : ifdDatas) {
            if (data != null) {
                OplusExifTag[] tags = data.getAllTags();
                if (tags != null) {
                    result.addAll(Arrays.asList(tags));
                }
            }
        }
        return result.isEmpty() ? null : result;
    }

    // --- Object Boilerplate ---

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof OplusExifData))
            return false;
        OplusExifData that = (OplusExifData) o;

        if (byteOrder != that.byteOrder || !Arrays.equals(thumbnail, that.thumbnail)) {
            return false;
        }

        if (stripBytes.size() != that.stripBytes.size())
            return false;
        for (int i = 0; i < stripBytes.size(); i++) {
            if (!Arrays.equals(stripBytes.get(i), that.stripBytes.get(i)))
                return false;
        }

        return Arrays.equals(ifdDatas, that.ifdDatas);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(byteOrder, stripBytes);
        result = 31 * result + Arrays.hashCode(ifdDatas);
        result = 31 * result + Arrays.hashCode(thumbnail);
        return result;
    }
}