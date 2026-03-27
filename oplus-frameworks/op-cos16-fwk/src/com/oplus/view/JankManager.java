package com.oplus.view;

import android.content.Context;
import android.os.Trace;
import android.util.Log;

public class JankManager implements IJankManager {
    private static final String TAG = "JankManager";
    private static volatile JankManager sInstance = null;

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

    private JankManager() {
        Log.d(TAG, "JankManager initialized");
    }

    @Override
    public void gfxSceneBegin(Context context, int scene, String sceneDes, long policy) {
        // AOSP compatible implementation using standard Trace
        try {
            Trace.beginSection("OplusJank_" + sceneDes + "_" + scene);
            Log.d(TAG, "gfxSceneBegin: scene=" + scene + ", desc=" + sceneDes + ", policy=" + policy);
        } catch (Exception e) {
            Log.e(TAG, "Error in gfxSceneBegin", e);
        }
    }

    @Override
    public void gfxSceneEnd(Context context, int scene) {
        // AOSP compatible implementation using standard Trace
        try {
            Trace.endSection();
            Log.d(TAG, "gfxSceneEnd: scene=" + scene);
        } catch (Exception e) {
            Log.e(TAG, "Error in gfxSceneEnd", e);
        }
    }

    @Override
    public void gfxSceneBegin(Context context, IJankManager.SceneInfo sceneInfo) {
        if (sceneInfo != null) {
            gfxSceneBegin(context, sceneInfo.getScene(), sceneInfo.getSceneDescription(), sceneInfo.getScenePolicy());
        }
    }
}
