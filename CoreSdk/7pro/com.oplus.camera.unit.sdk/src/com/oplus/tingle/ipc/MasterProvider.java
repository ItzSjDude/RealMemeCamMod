package com.oplus.tingle.ipc;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.shield.PermissionCheck;
import com.oplus.shield.utils.DebugUtils;
import com.oplus.tingle.Constants;
import com.oplus.tingle.ipc.cursor.ProviderCursor;
import com.oplus.tingle.ipc.utils.Logger;
import com.oplus.tingle.ipc.utils.VersionUtils;
/* loaded from: classes.dex */
public class MasterProvider extends ContentProvider {
    private static final String SECURITY_PERMISSION = "com.oplus.permission.safe.SECURITY";
    private static final String TAG = "MasterProvider";

    @OplusCompatibleMethod
    private static Object getMasterBinderCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSecurityPermissionCompat() {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Logger.d(TAG, "Provider onCreate", new Object[0]);
        PermissionCheck.getInstance().init(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public final Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (!hasPermission()) {
            Logger.e(TAG, "<CALL> Calling package : [" + getCallingPackage() + "] have no permission : " + getSecurityPermission(), new Object[0]);
            bundle2.putBinder(Constants.getExtraBinder(), null);
            return bundle2;
        }
        if (Constants.METHOD_SEND_BINDER.equals(str)) {
            bundle2.putBinder(Constants.getExtraBinder(), getMasterBinder());
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        if (!hasPermission()) {
            Logger.e(TAG, "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : " + getSecurityPermission(), new Object[0]);
            return null;
        }
        return ProviderCursor.generateCursor(getMasterBinder());
    }

    private boolean hasPermission() {
        return DebugUtils.getInstance().isDebugMode() || getContext().checkCallingPermission(getSecurityPermission()) == 0;
    }

    private IBinder getMasterBinder() {
        if (VersionUtils.isOsVersion11_3()) {
            return Master.getInstance();
        }
        return (IBinder) getMasterBinderCompat();
    }

    private String getSecurityPermission() {
        return VersionUtils.isOsVersion11_3() ? SECURITY_PERMISSION : (String) getSecurityPermissionCompat();
    }
}
