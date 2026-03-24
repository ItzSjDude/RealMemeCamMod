package com.oplus.statistics.record;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.Map;
/* loaded from: classes.dex */
public class ContentProviderRecorder implements IRecorder {
    private static final String TAG = "ContentProviderRecorder";
    private static final String URI_STRING = "content://com.oplus.statistics.provider/track_event";
    private static final String URI_SUPPORT = "content://com.oplus.statistics.provider/support";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$insert$1() {
        return "get resolver failed.";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$insert$2() {
        return "get provider client failed.";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$isSupport$0() {
        return "not support content provider";
    }

    @Override // com.oplus.statistics.record.IRecorder
    public void addTrackEvent(@NonNull Context context, @NonNull TrackEvent trackEvent) {
        insert(context, URI_STRING, getContentValues(trackEvent));
    }

    private ContentValues getContentValues(TrackEvent trackEvent) {
        ContentValues contentValues = new ContentValues();
        for (Map.Entry<String, Object> entry : trackEvent.getTrackInfo().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                contentValues.put(key, (String) value);
            } else if (value instanceof Integer) {
                contentValues.put(key, (Integer) value);
            } else if (value instanceof Long) {
                contentValues.put(key, (Long) value);
            } else if (value instanceof Boolean) {
                contentValues.put(key, (Boolean) value);
            }
        }
        return contentValues;
    }

    public static boolean isSupport(Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("", "");
        boolean insert = insert(context, URI_SUPPORT, contentValues);
        if (!insert) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ContentProviderRecorder$YrogJXXXOXOWINqWW66k3H1ytSY
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ContentProviderRecorder.lambda$isSupport$0();
                }
            });
        }
        return insert;
    }

    private static boolean insert(Context context, String str, ContentValues contentValues) {
        Uri parse = Uri.parse(str);
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ContentProviderRecorder$uM1pAgWtc8ArlqYmSLq9v22yIxQ
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ContentProviderRecorder.lambda$insert$1();
                }
            });
            return false;
        }
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(parse);
        if (acquireUnstableContentProviderClient == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ContentProviderRecorder$AjCW4eKYALZWbAmDZTrYsMQWunE
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ContentProviderRecorder.lambda$insert$2();
                }
            });
            return false;
        }
        try {
            try {
                acquireUnstableContentProviderClient.insert(parse, contentValues);
                acquireUnstableContentProviderClient.close();
                return true;
            } catch (RemoteException | IllegalArgumentException | IllegalStateException e) {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ContentProviderRecorder$oDukzV1BYAKW3aRbqdnjFyI8EX8
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return ContentProviderRecorder.lambda$insert$3(e);
                    }
                });
                acquireUnstableContentProviderClient.close();
                return false;
            }
        } catch (Throwable th) {
            acquireUnstableContentProviderClient.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$insert$3(Exception exc) {
        return "insert exception:" + exc;
    }
}
