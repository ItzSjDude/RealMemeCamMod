package com.oplus.ocs.camera.producer.info;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class CameraIdType {
    public static final int MULTI_DEVICE_ID = 100;
    public static final int MULTI_DEVICE_ID_FOLDER = 101;
    private int mCameraId;
    private String mCameraType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CameraIdType(String str, int i) {
        this.mCameraType = str;
        this.mCameraId = i;
    }

    public boolean isMultiType() {
        int i = this.mCameraId;
        return i == 100 || i == 101;
    }

    public List<CameraIdType> split() {
        int i = this.mCameraId;
        if (i == 100) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(CameraCharacteristicsHelper.getCameraIdType(CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId()));
            arrayList.add(CameraCharacteristicsHelper.getCameraIdType(CameraCharacteristicsHelper.getCameraIdType("front_main").getCameraId()));
            return arrayList;
        } else if (i == 101) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(CameraCharacteristicsHelper.getCameraIdType(CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId()));
            arrayList2.add(CameraCharacteristicsHelper.getCameraIdType(CameraCharacteristicsHelper.getCameraIdType("front_wide").getCameraId()));
            return arrayList2;
        } else {
            return Collections.singletonList(this);
        }
    }

    public String getCameraType() {
        return this.mCameraType;
    }

    public int getCameraId() {
        return this.mCameraId;
    }
}
