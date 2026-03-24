package com.singleblur.faceapi.model;
/* loaded from: classes.dex */
public class FaceConfig {

    /* loaded from: classes.dex */
    public enum FaceImageResize {
        DEFAULT_CONFIG(0),
        RESIZE_320W(2),
        RESIZE_640W(4),
        RESIZE_1280W(8);
        
        final int value;

        FaceImageResize(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes.dex */
    public enum FaceKeyPointCount {
        POINT_COUNT_21(256),
        POINT_COUNT_106(512);
        
        final int value;

        FaceKeyPointCount(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes.dex */
    public enum TrackThreadCount {
        DEFAULT_CONFIG(0),
        TWO_THREAD(1114112);
        
        final int value;

        TrackThreadCount(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }
}
