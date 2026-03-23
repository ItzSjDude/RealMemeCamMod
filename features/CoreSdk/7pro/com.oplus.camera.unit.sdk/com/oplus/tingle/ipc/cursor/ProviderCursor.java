package com.oplus.tingle.ipc.cursor;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.os.IBinder;
import com.oplus.tingle.ipc.utils.Logger;
/* loaded from: classes.dex */
public class ProviderCursor extends MatrixCursor {
    public static final String BINDER_KEY = "IBinder";
    public static final String[] DEFAULT_COLUMNS = {"col"};
    public static final String TAG = "ProviderCursor";
    private static volatile ProviderCursor mCursor;
    private Bundle binderExtras;

    public ProviderCursor(String[] strArr, IBinder iBinder) {
        super(strArr);
        this.binderExtras = new Bundle();
        this.binderExtras.putBinder(BINDER_KEY, iBinder);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle getExtras() {
        return this.binderExtras;
    }

    public static ProviderCursor generateCursor(IBinder iBinder) {
        if (mCursor == null) {
            synchronized (ProviderCursor.class) {
                if (mCursor == null) {
                    mCursor = new ProviderCursor(DEFAULT_COLUMNS, iBinder);
                }
            }
        }
        return mCursor;
    }

    public static IBinder stripBinder(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        Bundle extras = cursor.getExtras();
        if (extras != null) {
            return extras.getBinder(BINDER_KEY);
        }
        Logger.e("ProviderCursor", "Get cursor bundle null.", new Object[0]);
        return null;
    }
}
