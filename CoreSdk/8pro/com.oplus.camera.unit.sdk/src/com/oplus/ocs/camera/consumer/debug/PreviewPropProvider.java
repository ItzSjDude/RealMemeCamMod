package com.oplus.ocs.camera.consumer.debug;

import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PreviewPropProvider {
    private static final String ALGO_PROP_NAME_ANIMOJI = "animoji";
    private static final String ALGO_PROP_NAME_ASD = "asd";
    private static final String ALGO_PROP_NAME_BLUR = "blur";
    private static final String ALGO_PROP_NAME_DOUBLE_EXPOSURE = "doubleexposure";
    private static final String ALGO_PROP_NAME_FACE_SLENDER = "faceslender";
    private static final String ALGO_PROP_NAME_FILTER = "filter";
    private static final String ALGO_PROP_NAME_PF = "pf";
    private static final String ALGO_PROP_NAME_RECTIFY = "rectify";
    private static final String ALGO_PROP_NAME_RTB = "rtb";
    private static final String ALGO_PROP_NAME_STICKER = "sticker";
    private static final String ALGO_PROP_NAME_SUPEREIS = "supereis";
    private static final String ALGO_PROP_NAME_SUPER_TEXT = "supertext";
    private static final String ALGO_PROP_NAME_TILTSHIFT = "tiltshift";
    private static final String ALGO_PROP_NAME_VIDEO_BLUR = "videoblur";
    private static final String ALGO_PROP_NAME_VIDEO_RETENTION = "videoretention";
    private static final String ALGO_PROP_NAME_VIDEO_WATERMARK = "videowatermark";
    private static final String ALGO_PROP_PREFIX_PREVIEW = "camera.preview";
    private static final int FLAG_APS_ALGO_ASD = 10002;
    private static final int FLAG_APS_ALGO_BASE = 10000;
    private static final int FLAG_APS_ALGO_PF = 10001;
    private static final int FLAG_APS_ALGO_RECTIFY = 10004;
    private static final int FLAG_APS_ALGO_RTB = 10003;
    private static final int FLAG_APS_ALGO_SUPEREIS = 10005;
    private Map<Integer, String> mPropMap = new HashMap();
    private Map<String, Integer> mAlgoTable = new HashMap();

    protected PreviewPropProvider() {
        this.mPropMap.put(1, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_BLUR));
        this.mPropMap.put(2, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_FILTER));
        this.mPropMap.put(4, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_FACE_SLENDER));
        this.mPropMap.put(8, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, "sticker"));
        this.mPropMap.put(16, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_ANIMOJI));
        this.mPropMap.put(32, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_VIDEO_BLUR));
        this.mPropMap.put(64, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_SUPER_TEXT));
        this.mPropMap.put(128, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_VIDEO_WATERMARK));
        this.mPropMap.put(256, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_VIDEO_RETENTION));
        this.mPropMap.put(512, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_TILTSHIFT));
        this.mPropMap.put(1024, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_DOUBLE_EXPOSURE));
        this.mPropMap.put(10001, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_PF));
        this.mPropMap.put(10002, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, "asd"));
        this.mPropMap.put(10003, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_RTB));
        Map<Integer, String> map = this.mPropMap;
        Integer numValueOf = Integer.valueOf(FLAG_APS_ALGO_RECTIFY);
        map.put(numValueOf, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_RECTIFY));
        Map<Integer, String> map2 = this.mPropMap;
        Integer numValueOf2 = Integer.valueOf(FLAG_APS_ALGO_SUPEREIS);
        map2.put(numValueOf2, String.format("%s.%s", ALGO_PROP_PREFIX_PREVIEW, ALGO_PROP_NAME_SUPEREIS));
        this.mAlgoTable.put(ParameterKeys.APS_ALGO_NAME_PF, 10001);
        this.mAlgoTable.put("preview_asd", 10002);
        this.mAlgoTable.put(ParameterKeys.APS_ALGO_NAME_VIDEO_WM_ON_INPUT, 128);
        this.mAlgoTable.put(ParameterKeys.APS_ALGO_NAME_VIDEO_WM_ON_OUTPUT, 128);
        this.mAlgoTable.put("preview_rtb", 10003);
        this.mAlgoTable.put("preview_rectify", numValueOf);
        this.mAlgoTable.put("preview_supereis", numValueOf2);
        this.mAlgoTable.put(ParameterKeys.APS_ALGO_NAME_VIDEO_SUPEREIS, numValueOf2);
    }

    protected String getAlgoProp(int i) {
        return this.mPropMap.get(Integer.valueOf(i));
    }

    protected void setEnableAPSAlgoNode(ApsAdapterInterface apsAdapterInterface) {
        Iterator<Map.Entry<String, Integer>> it = this.mAlgoTable.entrySet().iterator();
        while (it.hasNext()) {
            apsAdapterInterface.setEnableAPSAlgoNode(it.next().getKey(), !PropProvider.isPropDisable(this.mPropMap.get(r1.getValue())));
        }
    }
}
