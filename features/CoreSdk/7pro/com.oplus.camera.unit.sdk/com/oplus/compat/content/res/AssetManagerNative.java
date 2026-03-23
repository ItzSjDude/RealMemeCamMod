package com.oplus.compat.content.res;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.res.AssetManagerWrapper;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class AssetManagerNative {
    private static final String TAG = "AssetManagerNative";

    @OplusCompatibleMethod
    private static Object addAssetPathCompat(AssetManager assetManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object createAssetManagerCompat() {
        return null;
    }

    private AssetManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> addAssetPath;
        @MethodName(name = "assetManagerRefConstructor", params = {})
        private static RefConstructor<AssetManager> mAssetManagerRefConstructor;
        @MethodName(params = {String.class})
        public static RefMethod<InputStream> openNonAsset;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, AssetManager.class);
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public static int addAssetPath(AssetManager assetManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return assetManager.addAssetPath(str);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) addAssetPathCompat(assetManager, str)).intValue();
        }
        if (VersionUtils.isL()) {
            return assetManager.addAssetPath(str);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 30)
    public static InputStream openNonAsset(AssetManager assetManager, String str) throws UnSupportedApiVersionException, IOException {
        if (VersionUtils.isR()) {
            return assetManager.openNonAsset(str);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 21)
    public static AssetManager createAssetManager() {
        try {
            if (VersionUtils.isS()) {
                return new AssetManager();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return AssetManagerWrapper.createAssetManager();
            }
            if (VersionUtils.isQ()) {
                return (AssetManager) createAssetManagerCompat();
            }
            if (VersionUtils.isL()) {
                return (AssetManager) ReflectInfo.mAssetManagerRefConstructor.newInstance();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
