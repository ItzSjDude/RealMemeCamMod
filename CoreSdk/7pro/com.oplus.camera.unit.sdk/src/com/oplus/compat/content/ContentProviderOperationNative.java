package com.oplus.compat.content;

import android.content.ContentProviderOperation;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.ContentProviderOperationWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class ContentProviderOperationNative {
    private static final String TAG = "ContentProviderOperationNative";

    @OplusCompatibleMethod
    private static Object getTypeForCompat(ContentProviderOperation contentProviderOperation) {
        return null;
    }

    private ContentProviderOperationNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getType(@NonNull ContentProviderOperation contentProviderOperation) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return contentProviderOperation.getType();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ContentProviderOperationWrapper.getType(contentProviderOperation);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getTypeForCompat(contentProviderOperation)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }
}
