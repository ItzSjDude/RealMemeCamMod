package com.oplus.epona.internal;

import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.epona.Route;
import com.oplus.epona.interceptor.CallComponentInterceptor;
import com.oplus.epona.interceptor.CallProviderInterceptor;
import com.oplus.epona.interceptor.LaunchComponentInterceptor;
import com.oplus.epona.utils.Logger;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class RealCall implements Call {
    private static final String TAG = "RealCall";
    private final Request mRequest;
    private final Route mRoute;
    private AtomicBoolean sExecuted = new AtomicBoolean(false);

    @Override // com.oplus.epona.Call
    public Request request() {
        return null;
    }

    private RealCall(Route route, Request request) {
        this.mRoute = route;
        this.mRequest = request;
    }

    public static RealCall newCall(Route route, Request request) {
        return new RealCall(route, request);
    }

    @Override // com.oplus.epona.Call
    public Response execute() {
        try {
            if (this.sExecuted.getAndSet(true)) {
                Logger.w(TAG, "execute has been executed", new Object[0]);
                return Response.defaultErrorResponse();
            }
            this.mRoute.executed(this);
            SyncCallback syncCallback = new SyncCallback();
            proceedChain(syncCallback, false);
            return syncCallback.getResponse();
        } catch (Exception e) {
            Logger.e(TAG, "call has exception:" + e.toString() + ", message:" + e.getMessage(), new Object[0]);
            return Response.errorResponse(e.getMessage());
        } finally {
            this.mRoute.finished(this);
        }
    }

    @Override // com.oplus.epona.Call
    public void asyncExecute(Call.Callback callback) {
        AsyncCall asyncCall = new AsyncCall(callback);
        if (this.sExecuted.getAndSet(true)) {
            Logger.w(TAG, "asyncExecute has been executed", new Object[0]);
            callback.onReceive(Response.defaultErrorResponse());
        }
        this.mRoute.asyncExecute(asyncCall);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proceedChain(Call.Callback callback, boolean z) {
        ArrayList arrayList = new ArrayList(Epona.getInterceptors());
        arrayList.add(new CallComponentInterceptor());
        arrayList.add(new CallProviderInterceptor());
        arrayList.add(new LaunchComponentInterceptor());
        arrayList.add(Epona.getIPCInterceptor());
        new RealInterceptorChain(arrayList, 0, this.mRequest, callback, z).proceed();
    }

    /* loaded from: classes.dex */
    private static class SyncCallback implements Call.Callback {
        private Response mResponse;

        private SyncCallback() {
            this.mResponse = null;
        }

        @Override // com.oplus.epona.Call.Callback
        public void onReceive(Response response) {
            this.mResponse = response;
        }

        public Response getResponse() {
            return this.mResponse;
        }
    }

    /* loaded from: classes.dex */
    public class AsyncCall implements Runnable {
        private final Call.Callback mCallback;

        AsyncCall(Call.Callback callback) {
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    RealCall.this.proceedChain(this.mCallback, true);
                    RealCall.this.mRoute.finished(this, true);
                } catch (Exception e) {
                    Logger.e(RealCall.TAG, "AsyncCall run failed and exception is %s", e.toString());
                    this.mCallback.onReceive(Response.defaultErrorResponse());
                    RealCall.this.mRoute.finished(this, false);
                }
            } catch (Throwable th) {
                RealCall.this.mRoute.finished(this, false);
                throw th;
            }
        }
    }
}
