package android.os.renderacc;

import android.content.Context;
import android.os.RemoteException;
import android.os.renderacc.IRenderAcceleratingStateListener;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class RenderAcceleratingManager {
    private static final String TAG = "RAManager";
    private final Context mContext;
    private final ArrayMap<RenderAcceleratingStateListener, RenderAcceleratingStateListenerDelegate> mDelegates = new ArrayMap<>();
    private final IRenderAcceleratingService mRenderAcceleratingService;

    public RenderAcceleratingManager(Context context, IRenderAcceleratingService service) {
        this.mContext = context;
        this.mRenderAcceleratingService = service;
    }

    public int getDeviceCapability() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.getDeviceCapability();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int getDeviceType() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.getDeviceType();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int getDeviceWorkMode() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.getDeviceWorkMode();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public void setDeviceCommand(String cmd) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                iRenderAcceleratingService.setDeviceCommand(cmd);
                return;
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
    }

    public void setPqEnhanceListMode(int values) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                iRenderAcceleratingService.setPqEnhanceListMode(values);
                return;
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
    }

    public void updatePqEnhanceList(String type, List<String> values) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                iRenderAcceleratingService.updatePqEnhanceList(type, values);
                return;
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
    }

    public int isSupportGameFrc() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.isSupportGameFrc();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int isGameInPqEnhanceList(String game) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.isGameInPqEnhanceList(game);
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int setGameFps(int fps) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.setGameFps(fps);
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int turnOnGameFrc(int mode, int fps) {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.turnOnGameFrc(mode, fps);
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int turnOffGameFrc() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.turnOffGameFrc();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int isSupportSuperResolution() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.isSupportSuperResolution();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int turnOnSuperResolution() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.turnOnSuperResolution();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public int turnOffSuperResolution() {
        IRenderAcceleratingService iRenderAcceleratingService = this.mRenderAcceleratingService;
        if (iRenderAcceleratingService != null) {
            try {
                return iRenderAcceleratingService.turnOffSuperResolution();
            } catch (RemoteException e) {
                Slog.e(TAG, "failed by RemoteException", e);
                return -1;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
        return -1;
    }

    public void addStateListener(ExecutorService executorService, RenderAcceleratingStateListener listener) {
        RenderAcceleratingStateListenerDelegate delegate;
        if (this.mContext == null) {
            Log.w(TAG, "Failed to render accelerating state listener; no service context.");
            return;
        }
        if (this.mRenderAcceleratingService != null) {
            synchronized (this.mDelegates) {
                if (this.mDelegates.containsKey(listener)) {
                    Log.w(TAG, "Listener already registered.");
                    return;
                }
                try {
                    delegate = new RenderAcceleratingStateListenerDelegate(executorService, listener);
                } catch (RemoteException e) {
                    Slog.e(TAG, "failed by RemoteException", e);
                }
                if (this.mRenderAcceleratingService.registerListener(delegate) < 0) {
                    Log.w(TAG, "Failed to register render accelerating state listener");
                    return;
                } else {
                    this.mDelegates.put(listener, delegate);
                    return;
                }
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
    }

    public void removeStateListener(RenderAcceleratingStateListener listener) {
        if (this.mContext == null) {
            Log.w(TAG, "Failed to render accelerating state listener; no service context.");
            return;
        }
        if (this.mRenderAcceleratingService != null) {
            synchronized (this.mDelegates) {
                if (this.mDelegates.containsKey(listener)) {
                    RenderAcceleratingStateListenerDelegate delegate = this.mDelegates.get(listener);
                    try {
                        if (this.mRenderAcceleratingService.unregisterListener(delegate) < 0) {
                            Log.w(TAG, "Failed to unregister render accelerating state listener");
                            return;
                        }
                        this.mDelegates.remove(listener);
                    } catch (RemoteException e) {
                        Slog.e(TAG, "failed by RemoteException", e);
                    }
                }
                return;
            }
        }
        Log.w(TAG, "RenderAcceleratingService disconnected");
    }

    /* JADX INFO: Access modifiers changed from: private */
    class RenderAcceleratingStateListenerDelegate extends IRenderAcceleratingStateListener.Stub {
        private final ExecutorService mExecutor;
        private final RenderAcceleratingStateListener mListener;

        public RenderAcceleratingStateListenerDelegate(ExecutorService executorService, RenderAcceleratingStateListener listener) {
            this.mListener = listener;
            this.mExecutor = executorService;
        }

        /* renamed from: lambda$onStateReport$0$android-os-renderacc-RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate, reason: not valid java name */
        /* synthetic */ void m3276x241d8695(int state) {
            this.mListener.onStateReport(state);
        }

        @Override // android.os.renderacc.IRenderAcceleratingStateListener
        public void onStateReport(final int state) {
            this.mExecutor.execute(new Runnable() { // from class: android.os.renderacc.RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m3276x241d8695(state);
                }
            });
        }
    }
}
