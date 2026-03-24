package com.oplus.inner.content.res;

import android.content.res.AssetManager;
import android.util.Log;

/* loaded from: classes.dex */
public class AssetManagerWrapper {
    private static final String TAG = "AssetManagerWrapper";

    public static int addAssetPath(AssetManager asset, String path) {
        try {
            int result = asset.addAssetPath(path);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static AssetManager createAssetManager() {
        try {
            return new AssetManager();
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}
