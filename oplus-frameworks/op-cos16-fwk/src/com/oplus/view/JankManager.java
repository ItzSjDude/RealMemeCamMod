package com.oplus.view;

import android.content.Context;
import android.os.Trace;

public class JankManager implements IJankManager {

    private static volatile JankManager sInstance = null;

    private JankManager() {
    }

    public static JankManager getInstance() {
        if (sInstance == null) {
            synchronized (JankManager.class) {
                if (sInstance == null) {
                    sInstance = new JankManager();
                }
            }
        }
        return sInstance;
    }

    @Override
    public void gfxSceneBegin(Context context, int scene, String sceneDes, long policy) {
        Trace.asyncTraceBegin(Trace.TRACE_TAG_VIEW, "gfxScene_" + sceneDes, scene);
    }

    @Override
    public void gfxSceneEnd(Context context, int scene) {
        Trace.asyncTraceEnd(Trace.TRACE_TAG_VIEW, "gfxScene_End", scene);
    }
}
