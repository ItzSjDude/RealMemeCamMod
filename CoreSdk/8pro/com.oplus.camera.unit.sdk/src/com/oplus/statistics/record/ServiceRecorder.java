package com.oplus.statistics.record;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.Constant;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ServiceRecorder implements IRecorder {
    private static final String DCS_PKG_NAME = new String(Base64.decode(Constant.DCS_PKG, 0), StandardCharsets.UTF_8);
    private static final String DCS_SERVICE_NAME = new String(Base64.decode(Constant.DCS_SERVICE, 0), StandardCharsets.UTF_8);
    private static final String TAG = "ServiceRecorder";

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT ("add Task failed: bean or context is null. context="), (r2v0 android.content.Context) A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$addTrackEvent$0(Context context) {
        return "add Task failed: bean or context is null. context=" + context;
    }

    @Override // com.oplus.statistics.record.IRecorder
    public void addTrackEvent(@NonNull final Context context, @NonNull TrackEvent trackEvent) {
        if (trackEvent == null || context == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.ServiceRecorder$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ServiceRecorder.lambda$addTrackEvent$0(context);
                }
            });
            return;
        }
        try {
            context.startService(getIntent(trackEvent));
        } catch (Exception e) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.record.ServiceRecorder$$ExternalSyntheticLambda1
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ServiceRecorder.lambda$addTrackEvent$1(e);
                }
            });
        }
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT ("startService exception="), (r2v0 java.lang.Exception) A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$addTrackEvent$1(Exception exc) {
        return "startService exception=" + exc;
    }

    private Intent getIntent(TrackEvent trackEvent) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(DCS_PKG_NAME, DCS_SERVICE_NAME));
        for (Map.Entry<String, Object> entry : trackEvent.getTrackInfo().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                intent.putExtra(key, (String) value);
            } else if (value instanceof Integer) {
                intent.putExtra(key, (Integer) value);
            } else if (value instanceof Long) {
                intent.putExtra(key, (Long) value);
            } else if (value instanceof Boolean) {
                intent.putExtra(key, (Boolean) value);
            }
        }
        return intent;
    }
}
