package com.oplus.statistics.record;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.VersionUtil;

/* JADX INFO: loaded from: classes.dex */
public class ProxyRecorder implements IRecorder {
    private IRecorder mRealRecorder;

    private static class SingletonHolder {
        private static ProxyRecorder instance = new ProxyRecorder();

        private SingletonHolder() {
        }
    }

    private ProxyRecorder() {
    }

    public static ProxyRecorder getInstance() {
        return SingletonHolder.instance;
    }

    @Override // com.oplus.statistics.record.IRecorder
    public void addTrackEvent(@NonNull Context context, @NonNull TrackEvent trackEvent) {
        checkRecorder(context);
        this.mRealRecorder.addTrackEvent(context, trackEvent);
    }

    private void checkRecorder(Context context) {
        if (this.mRealRecorder != null) {
            return;
        }
        if (VersionUtil.isContentProviderRecorder(context)) {
            this.mRealRecorder = new ContentProviderRecorder();
        } else {
            this.mRealRecorder = new ServiceRecorder();
        }
    }
}
