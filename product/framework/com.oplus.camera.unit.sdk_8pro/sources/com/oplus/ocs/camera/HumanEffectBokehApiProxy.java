package com.oplus.ocs.camera;

import android.util.Log;
import com.anc.humansdk.HumanEffectBokehApi;
import com.anc.humansdk.HumanEffectBokehConfig;
import com.anc.humansdk.NNRuntime;
import com.common.Util;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class HumanEffectBokehApiProxy {
    private static final String TAG = "HumanEffectBokehApiProxy";
    private HumanEffectBokehApi mHumanEffectApi;

    public HumanEffectBokehApiProxy(String str, String str2, String str3, boolean z, int i) {
        this.mHumanEffectApi = null;
        this.mHumanEffectApi = HumanEffectBokehApi.getInstance();
        HumanEffectBokehConfig humanEffectBokehConfig = new HumanEffectBokehConfig();
        humanEffectBokehConfig.setRealTime(true);
        humanEffectBokehConfig.setCachePath(str);
        humanEffectBokehConfig.setModelPath(str2);
        humanEffectBokehConfig.setNativeLibPath(str3);
        humanEffectBokehConfig.setRuntime((z ? NNRuntime.RUNTIME_SNPE : NNRuntime.RUNTIME_AIA).value());
        preInit(z);
        int initByConfig = this.mHumanEffectApi.initByConfig(humanEffectBokehConfig);
        this.mHumanEffectApi.setLogLevel(i);
        Log.v(TAG, "initVideoBlur, X, initResult: " + initByConfig + ", sdk version: " + this.mHumanEffectApi.getVersion());
    }

    private void preInit(boolean z) {
        try {
            Log.v(TAG, "load AncHumBokeh-jni");
            Util.loadJNILibrary("AncHumBokeh-jni");
            Field declaredField = HumanEffectBokehApi.class.getDeclaredField("isSoLoaded");
            declaredField.setAccessible(true);
            declaredField.set(HumanEffectBokehApi.class, new AtomicBoolean(true));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int process(int i, int i2, int i3, int[] iArr, int[] iArr2, float f, int i4, int i5, float f2, float f3, int i6, int i7) {
        return this.mHumanEffectApi.process(i, i2, i3, iArr, iArr2, f, i4, i5, f2, f3, i6, i7);
    }

    public void release() {
        this.mHumanEffectApi.release();
        this.mHumanEffectApi = null;
    }
}
