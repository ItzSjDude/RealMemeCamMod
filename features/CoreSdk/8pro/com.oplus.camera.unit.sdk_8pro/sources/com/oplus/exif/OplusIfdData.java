package com.oplus.exif;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class OplusIfdData {
    private static final int[] sIfds = {0, 1, 2, 3, 4};
    private final int mIfdId;
    private final Map<Short, OplusExifTag> mExifTags = new HashMap();
    private int mOffsetToNextIfd = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OplusIfdData(int i) {
        this.mIfdId = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int[] getIfds() {
        return sIfds;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag[] getAllTags() {
        return (OplusExifTag[]) this.mExifTags.values().toArray(new OplusExifTag[this.mExifTags.size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getId() {
        return this.mIfdId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag getTag(short s) {
        return this.mExifTags.get(Short.valueOf(s));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag setTag(OplusExifTag oplusExifTag) {
        oplusExifTag.setIfd(this.mIfdId);
        return this.mExifTags.put(Short.valueOf(oplusExifTag.getTagId()), oplusExifTag);
    }

    protected boolean checkCollision(short s) {
        return this.mExifTags.get(Short.valueOf(s)) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeTag(short s) {
        this.mExifTags.remove(Short.valueOf(s));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getTagCount() {
        return this.mExifTags.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOffsetToNextIfd(int i) {
        this.mOffsetToNextIfd = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetToNextIfd() {
        return this.mOffsetToNextIfd;
    }

    public boolean equals(Object obj) {
        OplusExifTag[] allTags;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof OplusIfdData)) {
            OplusIfdData oplusIfdData = (OplusIfdData) obj;
            if (oplusIfdData.getId() == this.mIfdId && oplusIfdData.getTagCount() == getTagCount()) {
                for (OplusExifTag oplusExifTag : oplusIfdData.getAllTags()) {
                    if (!OplusExifInterface.isOffsetTag(oplusExifTag.getTagId()) && !oplusExifTag.equals(this.mExifTags.get(Short.valueOf(oplusExifTag.getTagId())))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
