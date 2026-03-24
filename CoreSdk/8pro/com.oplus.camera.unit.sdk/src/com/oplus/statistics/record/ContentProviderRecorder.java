package com.oplus.statistics.record;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ContentProviderRecorder implements IRecorder {
    private static final String TAG = "ContentProviderRecorder";
    private static final String URI_STRING = "content://com.oplus.statistics.provider/track_event";
    private static final String URI_SUPPORT = "content://com.oplus.statistics.provider/support";

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "get resolver failed." */
    static /* synthetic */ String lambda$insert$1() {
        return "get resolver failed.";
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "get provider client failed." */
    static /* synthetic */ String lambda$insert$2() {
        return "get provider client failed.";
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "not support content provider" */
    static /* synthetic */ String lambda$isSupport$0() {
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
        boolean zInsert = insert(context, URI_SUPPORT, contentValues);
        if (!zInsert) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.record.ContentProviderRecorder$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ContentProviderRecorder.lambda$isSupport$0();
                }
            });
        }
        return zInsert;
    }

    private static boolean insert(Context context, String str, ContentValues contentValues) {
        Uri uri = Uri.parse(str);
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.ContentProviderRecorder$$ExternalSyntheticLambda1
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ContentProviderRecorder.lambda$insert$1();
                }
            });
            return false;
        }
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.ContentProviderRecorder$$ExternalSyntheticLambda2
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return ContentProviderRecorder.lambda$insert$2();
                    }
                });
                return false;
            }
            try {
                contentProviderClientAcquireUnstableContentProviderClient.insert(uri, contentValues);
                contentProviderClientAcquireUnstableContentProviderClient.close();
                return true;
            } catch (RemoteException | IllegalArgumentException | IllegalStateException e) {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.record.ContentProviderRecorder$$ExternalSyntheticLambda3
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return ContentProviderRecorder.lambda$insert$3(e);
                    }
                });
                contentProviderClientAcquireUnstableContentProviderClient.close();
                return false;
            }
        } catch (Throwable th) {
            contentProviderClientAcquireUnstableContentProviderClient.close();
            throw th;
        }
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT ("insert exception:"), (r2v0 java.lang.Exception) A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$insert$3(Exception exc) {
        return "insert exception:" + exc;
    }
}
