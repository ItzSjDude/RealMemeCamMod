package com.oplus.inner.content;

import android.content.ContentProviderOperation;
import android.util.Log;

/* loaded from: classes.dex */
public class ContentProviderOperationWrapper {
    private static final String TAG = "ContentProviderOperationWrapper";

    private ContentProviderOperationWrapper() {
    }

    public static int getType(ContentProviderOperation cpo) {
        try {
            int result = cpo.getType();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }
}
