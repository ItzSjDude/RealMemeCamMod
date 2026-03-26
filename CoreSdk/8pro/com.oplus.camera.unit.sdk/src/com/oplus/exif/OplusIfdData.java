package com.oplus.exif;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class OplusIfdData {
    private static final int[] sIfds = { 0, 1, 2, 3, 4 };
    private final int mIfdId;
    private final Map<Short, OplusExifTag> mExifTags = new HashMap();
    private int mOffsetToNextIfd = 0;

    OplusIfdData(int ifdId) {
        this.mIfdId = ifdId;
    }

    protected static int[] getIfds() {
        return sIfds;
    }

    protected OplusExifTag[] getAllTags() {
        return (OplusExifTag[]) this.mExifTags.values().toArray(new OplusExifTag[this.mExifTags.size()]);
    }

    protected int getId() {
        return this.mIfdId;
    }

    protected OplusExifTag getTag(short tagId) {
        return this.mExifTags.get(Short.valueOf(tagId));
    }

    protected OplusExifTag setTag(OplusExifTag tag) {
        tag.setIfd(this.mIfdId);
        return this.mExifTags.put(Short.valueOf(tag.getTagId()), tag);
    }

    protected boolean checkCollision(short tagId) {
        return this.mExifTags.containsKey(Short.valueOf(tagId));
    }

    protected void removeTag(short tagId) {
        this.mExifTags.remove(Short.valueOf(tagId));
    }

    protected int getTagCount() {
        return this.mExifTags.size();
    }

    protected void setOffsetToNextIfd(int offset) {
        this.mOffsetToNextIfd = offset;
    }

    protected int getOffsetToNextIfd() {
        return this.mOffsetToNextIfd;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof OplusIfdData)) {
            OplusIfdData oplusIfdData = (OplusIfdData) obj;
            if (oplusIfdData.getId() == this.mIfdId && oplusIfdData.getTagCount() == getTagCount()) {
                for (OplusExifTag oplusExifTag : oplusIfdData.getAllTags()) {
                    if (!OplusExifInterface.isOffsetTag(oplusExifTag.getTagId())
                            && !oplusExifTag.equals(this.mExifTags.get(Short.valueOf(oplusExifTag.getTagId())))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
