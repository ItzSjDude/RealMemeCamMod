package com.oplus.compat.util;

import android.graphics.Path;
import android.util.Log;
import android.util.PathParser;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PathParserNative {
    private static final String TAG = "PathParserNative";

    private PathParserNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Path createPathFromPathData(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            try {
                return PathParser.createPathFromPathData(str);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
