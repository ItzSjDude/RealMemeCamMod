package com.oplus.ocs.camera.consumer.debug;

import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class CapturePropProvider {
    private static final String ALGO_PROP_NAME_AI_NIGHT = "ainight";
    private static final String ALGO_PROP_NAME_BLURLESS = "blurless";
    private static final String ALGO_PROP_NAME_DARKSIGHT = "darksight";
    private static final String ALGO_PROP_NAME_FACE_BEAUTY = "facebeauty";
    private static final String ALGO_PROP_NAME_FACE_RECTIFY = "facerectify";
    private static final String ALGO_PROP_NAME_FUSION = "fusion";
    private static final String ALGO_PROP_NAME_HDR = "hdr";
    private static final String ALGO_PROP_NAME_PF = "pf";
    private static final String ALGO_PROP_NAME_SINGLE_BLUR = "singleblur";
    private static final String ALGO_PROP_NAME_SUPERNIGHT = "supernight";
    private static final String ALGO_PROP_NAME_SUPERPHOTO = "superphoto";
    private static final String ALGO_PROP_NAME_SUPER_TEXT = "supertext";
    private static final String ALGO_PROP_NAME_VIDEO_BLUR = "videoblur";
    private static final String ALGO_PROP_PREFIX_CAPTURE = "camera.capture";
    private static final String TAG = "CapturePropProvider";
    private Map<String, String> mPropMap = new HashMap();
    private Map<String, Set<String>> mAlgoTable = new HashMap();

    protected CapturePropProvider() {
        this.mPropMap.put(ParameterKeys.ALGO_NAME_PF, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_PF));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_BLURLESS, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_BLURLESS));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_SUPERPHOTO, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_SUPERPHOTO));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_DARKSIGHT, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_DARKSIGHT));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_HDR, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_HDR));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_SUPERNIGHT, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_SUPERNIGHT));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_AI_NIGHT, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_AI_NIGHT));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_FUSION, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_FUSION));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_SUPER_TEXT, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_SUPER_TEXT));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_VIDEO_BLUR, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_VIDEO_BLUR));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_FACE_BEAUTY, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_FACE_BEAUTY));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_SINGLE_BLUR, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_SINGLE_BLUR));
        this.mPropMap.put(ParameterKeys.ALGO_NAME_FACE_RECTIFY, String.format("%s.%s", ALGO_PROP_PREFIX_CAPTURE, ALGO_PROP_NAME_FACE_RECTIFY));
        for (Map.Entry<String, String> entry : this.mPropMap.entrySet()) {
            HashSet hashSet = new HashSet();
            if (ParameterKeys.ALGO_NAME_PF.equals(entry.getKey())) {
                hashSet.add(ParameterKeys.ALGO_NAME_PF);
                hashSet.add(ParameterKeys.ALGO_NAME_PF_V1);
                hashSet.add(ParameterKeys.ALGO_NAME_PF_V3);
            } else {
                hashSet.add(entry.getKey());
            }
            this.mAlgoTable.put(entry.getKey(), hashSet);
        }
    }

    protected void removeCaptureAlgo(ImageCategory.MetaItemInfo metaItemInfo) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : this.mPropMap.entrySet()) {
            if (PropProvider.isPropDisable(entry.getValue())) {
                arrayList.addAll(this.mAlgoTable.get(entry.getKey()));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList((String[]) metaItemInfo.get(ParameterKeys.KEY_APS_PROCESS_ALGO_TYPE)));
        arrayList2.removeAll(arrayList);
        metaItemInfo.setParameter(ParameterKeys.KEY_APS_PROCESS_ALGO_TYPE, (String[]) arrayList2.toArray(new String[arrayList2.size()]));
        CameraUnitLog.i(TAG, "removeCaptureAlgo, removes: " + arrayList + ", list: " + arrayList2);
    }
}
