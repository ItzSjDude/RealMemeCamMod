package com.oplus.exif;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
class OplusExifData {
    private static final String TAG = "ExifData";
    private static final byte[] USER_COMMENT_ASCII = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final byte[] USER_COMMENT_JIS = {74, 73, 83, 0, 0, 0, 0, 0};
    private static final byte[] USER_COMMENT_UNICODE = {85, 78, 73, 67, 79, 68, 69, 0};
    private final ByteOrder mByteOrder;
    private final OplusIfdData[] mIfdDatas = new OplusIfdData[5];
    private ArrayList<byte[]> mStripBytes = new ArrayList<>();
    private byte[] mThumbnail;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OplusExifData(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getCompressedThumbnail() {
        return this.mThumbnail;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCompressedThumbnail(byte[] bArr) {
        this.mThumbnail = bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasCompressedThumbnail() {
        return this.mThumbnail != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStripBytes(int i, byte[] bArr) {
        if (i < this.mStripBytes.size()) {
            this.mStripBytes.set(i, bArr);
            return;
        }
        for (int size = this.mStripBytes.size(); size < i; size++) {
            this.mStripBytes.add(null);
        }
        this.mStripBytes.add(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripCount() {
        return this.mStripBytes.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getStrip(int i) {
        return this.mStripBytes.get(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasUncompressedStrip() {
        return this.mStripBytes.size() != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusIfdData getIfdData(int i) {
        if (OplusExifTag.isValidIfd(i)) {
            return this.mIfdDatas[i];
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addIfdData(OplusIfdData oplusIfdData) {
        this.mIfdDatas[oplusIfdData.getId()] = oplusIfdData;
    }

    protected OplusIfdData getOrCreateIfdData(int i) {
        OplusIfdData oplusIfdData = this.mIfdDatas[i];
        if (oplusIfdData == null) {
            OplusIfdData oplusIfdData2 = new OplusIfdData(i);
            this.mIfdDatas[i] = oplusIfdData2;
            return oplusIfdData2;
        }
        return oplusIfdData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag getTag(short s, int i) {
        OplusIfdData oplusIfdData = this.mIfdDatas[i];
        if (oplusIfdData == null) {
            return null;
        }
        return oplusIfdData.getTag(s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag addTag(OplusExifTag oplusExifTag) {
        if (oplusExifTag != null) {
            return addTag(oplusExifTag, oplusExifTag.getIfd());
        }
        return null;
    }

    protected OplusExifTag addTag(OplusExifTag oplusExifTag, int i) {
        if (oplusExifTag == null || !OplusExifTag.isValidIfd(i)) {
            return null;
        }
        return getOrCreateIfdData(i).setTag(oplusExifTag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearThumbnailAndStrips() {
        this.mThumbnail = null;
        this.mStripBytes.clear();
    }

    protected void removeThumbnailData() {
        clearThumbnailAndStrips();
        this.mIfdDatas[1] = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeTag(short s, int i) {
        OplusIfdData oplusIfdData = this.mIfdDatas[i];
        if (oplusIfdData == null) {
            return;
        }
        oplusIfdData.removeTag(s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getUserComment() {
        OplusExifTag tag;
        OplusIfdData oplusIfdData = this.mIfdDatas[0];
        if (oplusIfdData == null || (tag = oplusIfdData.getTag(OplusExifInterface.getTrueTagKey(OplusExifInterface.TAG_USER_COMMENT))) == null || tag.getComponentCount() < 8) {
            return null;
        }
        byte[] bArr = new byte[tag.getComponentCount()];
        tag.getBytes(bArr);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, 0, bArr2, 0, 8);
        try {
            if (Arrays.equals(bArr2, USER_COMMENT_ASCII)) {
                return new String(bArr, 8, bArr.length - 8, "US-ASCII");
            }
            if (Arrays.equals(bArr2, USER_COMMENT_JIS)) {
                return new String(bArr, 8, bArr.length - 8, "EUC-JP");
            }
            if (Arrays.equals(bArr2, USER_COMMENT_UNICODE)) {
                return new String(bArr, 8, bArr.length - 8, "UTF-16");
            }
            return null;
        } catch (UnsupportedEncodingException unused) {
            Log.w(TAG, "Failed to decode the user comment");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<OplusExifTag> getAllTags() {
        OplusIfdData[] oplusIfdDataArr;
        OplusExifTag[] allTags;
        ArrayList arrayList = new ArrayList();
        for (OplusIfdData oplusIfdData : this.mIfdDatas) {
            if (oplusIfdData != null && (allTags = oplusIfdData.getAllTags()) != null) {
                for (OplusExifTag oplusExifTag : allTags) {
                    arrayList.add(oplusExifTag);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<OplusExifTag> getAllTagsForIfd(int i) {
        OplusExifTag[] allTags;
        OplusIfdData oplusIfdData = this.mIfdDatas[i];
        if (oplusIfdData == null || (allTags = oplusIfdData.getAllTags()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allTags.length);
        for (OplusExifTag oplusExifTag : allTags) {
            arrayList.add(oplusExifTag);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<OplusExifTag> getAllTagsForTagId(short s) {
        OplusIfdData[] oplusIfdDataArr;
        OplusExifTag tag;
        ArrayList arrayList = new ArrayList();
        for (OplusIfdData oplusIfdData : this.mIfdDatas) {
            if (oplusIfdData != null && (tag = oplusIfdData.getTag(s)) != null) {
                arrayList.add(tag);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof OplusExifData)) {
            OplusExifData oplusExifData = (OplusExifData) obj;
            if (oplusExifData.mByteOrder == this.mByteOrder && oplusExifData.mStripBytes.size() == this.mStripBytes.size() && Arrays.equals(oplusExifData.mThumbnail, this.mThumbnail)) {
                for (int i = 0; i < this.mStripBytes.size(); i++) {
                    if (!Arrays.equals(oplusExifData.mStripBytes.get(i), this.mStripBytes.get(i))) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < 5; i2++) {
                    OplusIfdData ifdData = oplusExifData.getIfdData(i2);
                    OplusIfdData ifdData2 = getIfdData(i2);
                    if (ifdData != ifdData2 && ifdData != null && !ifdData.equals(ifdData2)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
