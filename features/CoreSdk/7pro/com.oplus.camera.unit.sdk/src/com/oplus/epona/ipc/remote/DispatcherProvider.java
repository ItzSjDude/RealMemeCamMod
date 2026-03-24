package com.oplus.epona.ipc.remote;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.epona.Constants;
import com.oplus.epona.Dumper;
import com.oplus.epona.Epona;
import com.oplus.epona.ipc.cursor.ProviderCursor;
import com.oplus.epona.utils.Logger;
import com.oplus.epona.utils.ProviderUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public class DispatcherProvider extends ContentProvider {
    private static final String SECURITY_PERMISSION = "com.oplus.permission.safe.SECURITY";
    private static final String TAG = "DispatcherProvider";

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
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        if (!hasPermission()) {
            Logger.e(TAG, "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : " + SECURITY_PERMISSION, new Object[0]);
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments != null && pathSegments.size() > 0) {
            if (ProviderUtils.FIND_TRANSFER.equals(pathSegments.get(0))) {
                Bundle bundle = new Bundle();
                if (pathSegments.size() > 1) {
                    bundle.putBinder(Constants.TRANSFER_VALUE, Dispatcher.getInstance().findRemoteTransfer(pathSegments.get(1)));
                    return ProviderCursor.generateCursor(bundle);
                }
                Logger.e(TAG, "Get ComponentName error : " + uri, new Object[0]);
                return null;
            }
            Logger.e(TAG, "The path is not /find_transfer : " + pathSegments.get(0), new Object[0]);
        } else {
            Logger.e(TAG, "Could not find the uri : " + uri, new Object[0]);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (!hasPermission()) {
            Logger.e(TAG, "<CALL> Calling package : [" + getCallingPackage() + "] have no permission : " + SECURITY_PERMISSION, new Object[0]);
            return null;
        } else if (TextUtils.equals(str, Constants.FIND_TRANSFER)) {
            return findTransfer(bundle);
        } else {
            if (TextUtils.equals(str, Constants.REGISTER_TRANSFER)) {
                return registerTransfer(bundle, getCallingPackage());
            }
            return super.call(str, str2, bundle);
        }
    }

    private Bundle findTransfer(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBinder(Constants.TRANSFER_VALUE, Dispatcher.getInstance().findRemoteTransfer(bundle.getString(Constants.TRANSFER_KEY)));
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        Objects.requireNonNull(strArr);
        Dumper dumper = Epona.getDumper().get(strArr[0]);
        if (dumper != null) {
            dumper.dump(fileDescriptor, printWriter, strArr);
        }
    }

    private Bundle registerTransfer(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBoolean(Constants.REGISTER_TRANSFER_RESULT_KEY, Dispatcher.getInstance().registerRemoteTransfer(bundle.getString(Constants.TRANSFER_KEY), bundle.getBinder(Constants.TRANSFER_VALUE), str));
        }
        return bundle2;
    }

    private boolean hasPermission() {
        return getContext().checkCallingPermission(SECURITY_PERMISSION) == 0;
    }
}
