package com.oplus.permission;

import android.content.ContentProviderOperation;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public interface IOplusPermissionCheckInjectorExt {
    default boolean checkPermission(String permission, int pid, int uid, String access) {
        return true;
    }

    default boolean checkPermission(Intent intent, int pid, int uid, String access) {
        return true;
    }

    default boolean checkUriPermission(Uri uri, int pid, int uid, String access) {
        return true;
    }

    default boolean checkApplyBatchPermission(ArrayList<ContentProviderOperation> operations, int pid, int uid, String access) {
        return true;
    }
}
