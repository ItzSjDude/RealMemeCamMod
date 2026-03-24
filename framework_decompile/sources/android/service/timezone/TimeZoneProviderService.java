package android.service.timezone;

import android.annotation.SystemApi;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.service.timezone.ITimeZoneProvider;
import com.android.internal.os.BackgroundThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;

@SystemApi
/* loaded from: classes3.dex */
public abstract class TimeZoneProviderService extends Service {
    public static final String PRIMARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE = "android.service.timezone.PrimaryLocationTimeZoneProviderService";
    public static final String SECONDARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE = "android.service.timezone.SecondaryLocationTimeZoneProviderService";
    private static final String TAG = "TimeZoneProviderService";
    public static final String TEST_COMMAND_RESULT_ERROR_KEY = "ERROR";
    public static final String TEST_COMMAND_RESULT_SUCCESS_KEY = "SUCCESS";
    private long mEventFilteringAgeThresholdMillis;
    private TimeZoneProviderEvent mLastEventSent;
    private ITimeZoneProviderManager mManager;
    private final TimeZoneProviderServiceWrapper mWrapper = new TimeZoneProviderServiceWrapper();
    private final Object mLock = new Object();
    private final Handler mHandler = BackgroundThread.getHandler();

    public abstract void onStartUpdates(long j);

    public abstract void onStopUpdates();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mWrapper;
    }

    public final void reportSuggestion(final TimeZoneProviderSuggestion suggestion) {
        Objects.requireNonNull(suggestion);
        this.mHandler.post(new Runnable() { // from class: android.service.timezone.TimeZoneProviderService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m3848x4251b350(suggestion);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021 A[Catch: all -> 0x0023, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:12:0x0021, B:11:0x001c), top: B:17:0x0003, inners: #1 }] */
    /* renamed from: lambda$reportSuggestion$0$android-service-timezone-TimeZoneProviderService, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ void m3848x4251b350(android.service.timezone.TimeZoneProviderSuggestion r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.mLock
            monitor-enter(r0)
            android.service.timezone.ITimeZoneProviderManager r1 = r4.mManager     // Catch: java.lang.Throwable -> L23
            if (r1 == 0) goto L21
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            android.service.timezone.TimeZoneProviderEvent r2 = android.service.timezone.TimeZoneProviderEvent.createSuggestionEvent(r2, r5)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            boolean r3 = r4.shouldSendEvent(r2)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            if (r3 == 0) goto L1a
            r1.onTimeZoneProviderEvent(r2)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            r4.mLastEventSent = r2     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
        L1a:
            goto L21
        L1b:
            r2 = move-exception
            java.lang.String r3 = "TimeZoneProviderService"
            android.util.Log.w(r3, r2)     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            return
        L23:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.service.timezone.TimeZoneProviderService.m3848x4251b350(android.service.timezone.TimeZoneProviderSuggestion):void");
    }

    public final void reportUncertain() {
        this.mHandler.post(new Runnable() { // from class: android.service.timezone.TimeZoneProviderService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m3849xe5922bec();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021 A[Catch: all -> 0x0023, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:12:0x0021, B:11:0x001c), top: B:17:0x0003, inners: #1 }] */
    /* renamed from: lambda$reportUncertain$1$android-service-timezone-TimeZoneProviderService, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ void m3849xe5922bec() {
        /*
            r4 = this;
            java.lang.Object r0 = r4.mLock
            monitor-enter(r0)
            android.service.timezone.ITimeZoneProviderManager r1 = r4.mManager     // Catch: java.lang.Throwable -> L23
            if (r1 == 0) goto L21
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            android.service.timezone.TimeZoneProviderEvent r2 = android.service.timezone.TimeZoneProviderEvent.createUncertainEvent(r2)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            boolean r3 = r4.shouldSendEvent(r2)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            if (r3 == 0) goto L1a
            r1.onTimeZoneProviderEvent(r2)     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
            r4.mLastEventSent = r2     // Catch: java.lang.Throwable -> L1b java.lang.Throwable -> L23
        L1a:
            goto L21
        L1b:
            r2 = move-exception
            java.lang.String r3 = "TimeZoneProviderService"
            android.util.Log.w(r3, r2)     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            return
        L23:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.service.timezone.TimeZoneProviderService.m3849xe5922bec():void");
    }

    public final void reportPermanentFailure(final Throwable cause) {
        Objects.requireNonNull(cause);
        this.mHandler.post(new Runnable() { // from class: android.service.timezone.TimeZoneProviderService$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m3847x17268a56(cause);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025 A[Catch: all -> 0x0027, DONT_GENERATE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:12:0x0025, B:11:0x0020), top: B:19:0x0003, inners: #0 }] */
    /* renamed from: lambda$reportPermanentFailure$2$android-service-timezone-TimeZoneProviderService, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ void m3847x17268a56(java.lang.Throwable r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.mLock
            monitor-enter(r0)
            android.service.timezone.ITimeZoneProviderManager r1 = r5.mManager     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto L25
            java.lang.String r2 = r6.getMessage()     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
            android.service.timezone.TimeZoneProviderEvent r3 = android.service.timezone.TimeZoneProviderEvent.createPermanentFailureEvent(r3, r2)     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
            boolean r4 = r5.shouldSendEvent(r3)     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
            if (r4 == 0) goto L1e
            r1.onTimeZoneProviderEvent(r3)     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
            r5.mLastEventSent = r3     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L27
        L1e:
            goto L25
        L1f:
            r2 = move-exception
            java.lang.String r3 = "TimeZoneProviderService"
            android.util.Log.w(r3, r2)     // Catch: java.lang.Throwable -> L27
        L25:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
            return
        L27:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.service.timezone.TimeZoneProviderService.m3847x17268a56(java.lang.Throwable):void");
    }

    private boolean shouldSendEvent(TimeZoneProviderEvent newEvent) {
        if (!newEvent.isEquivalentTo(this.mLastEventSent)) {
            return true;
        }
        long timeSinceLastEventMillis = newEvent.getCreationElapsedMillis() - this.mLastEventSent.getCreationElapsedMillis();
        return timeSinceLastEventMillis > this.mEventFilteringAgeThresholdMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStartUpdatesInternal(ITimeZoneProviderManager manager, long initializationTimeoutMillis, long eventFilteringAgeThresholdMillis) {
        synchronized (this.mLock) {
            this.mManager = manager;
            this.mEventFilteringAgeThresholdMillis = eventFilteringAgeThresholdMillis;
            this.mLastEventSent = null;
            onStartUpdates(initializationTimeoutMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStopUpdatesInternal() {
        synchronized (this.mLock) {
            onStopUpdates();
            this.mManager = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Service
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        synchronized (this.mLock) {
            writer.append((CharSequence) ("mLastEventSent=" + this.mLastEventSent));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TimeZoneProviderServiceWrapper extends ITimeZoneProvider.Stub {
        private TimeZoneProviderServiceWrapper() {
        }

        @Override // android.service.timezone.ITimeZoneProvider
        public void startUpdates(final ITimeZoneProviderManager manager, final long initializationTimeoutMillis, final long eventFilteringAgeThresholdMillis) {
            Objects.requireNonNull(manager);
            TimeZoneProviderService.this.mHandler.post(new Runnable() { // from class: android.service.timezone.TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m3850xae26320c(manager, initializationTimeoutMillis, eventFilteringAgeThresholdMillis);
                }
            });
        }

        /* renamed from: lambda$startUpdates$0$android-service-timezone-TimeZoneProviderService$TimeZoneProviderServiceWrapper, reason: not valid java name */
        /* synthetic */ void m3850xae26320c(ITimeZoneProviderManager manager, long initializationTimeoutMillis, long eventFilteringAgeThresholdMillis) {
            TimeZoneProviderService.this.onStartUpdatesInternal(manager, initializationTimeoutMillis, eventFilteringAgeThresholdMillis);
        }

        @Override // android.service.timezone.ITimeZoneProvider
        public void stopUpdates() {
            Handler handler = TimeZoneProviderService.this.mHandler;
            final TimeZoneProviderService timeZoneProviderService = TimeZoneProviderService.this;
            handler.post(new Runnable() { // from class: android.service.timezone.TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    timeZoneProviderService.onStopUpdatesInternal();
                }
            });
        }
    }
}
