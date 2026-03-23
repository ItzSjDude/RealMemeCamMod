package com.oplus.statistics.record;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.Constant;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.nio.charset.StandardCharsets;
import java.util.Map;
@SynthesizedClassMap({$$Lambda$ServiceRecorder$FapDCEST8sBm0GmmU8QF2ihi2w.class, $$Lambda$ServiceRecorder$7K0A7ka4Xbc7jBqVtwpB0bZ4E.class})
/* loaded from: classes.dex */
public class ServiceRecorder implements IRecorder {
    private static final String DCS_PKG_NAME = new String(Base64.decode(Constant.DCS_PKG, 0), StandardCharsets.UTF_8);
    private static final String DCS_SERVICE_NAME = new String(Base64.decode(Constant.DCS_SERVICE, 0), StandardCharsets.UTF_8);
    private static final String TAG = "ServiceRecorder";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$addTrackEvent$0(Context context) {
        return "add Task failed: bean or context is null. context=" + context;
    }

    @Override // com.oplus.statistics.record.IRecorder
    public void addTrackEvent(@NonNull final Context context, @NonNull TrackEvent trackEvent) {
        if (trackEvent == null || context == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ServiceRecorder$FapDCEST8sBm0Gmm-U8QF2ihi2w
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
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.record.-$$Lambda$ServiceRecorder$7K0A7k-a4-Xbc7jBqVtwpB0bZ4E
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ServiceRecorder.lambda$addTrackEvent$1(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$addTrackEvent$1(Exception exc) {
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
