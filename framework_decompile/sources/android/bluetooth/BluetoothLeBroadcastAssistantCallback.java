package android.bluetooth;

import android.bluetooth.BluetoothLeBroadcastAssistant;
import android.bluetooth.IBluetoothLeBroadcastAssistantCallback;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class BluetoothLeBroadcastAssistantCallback extends IBluetoothLeBroadcastAssistantCallback.Stub {
    private static final String TAG = BluetoothLeBroadcastAssistantCallback.class.getSimpleName();
    IBluetoothLeBroadcastAssistant mAdapter;
    private boolean mIsRegistered = false;
    private final Map<BluetoothLeBroadcastAssistant.Callback, Executor> mCallbackMap = new HashMap();

    public BluetoothLeBroadcastAssistantCallback(IBluetoothLeBroadcastAssistant adapter) {
        this.mAdapter = adapter;
    }

    public void register(Executor executor, BluetoothLeBroadcastAssistant.Callback callback) {
        synchronized (this) {
            if (this.mCallbackMap.containsKey(callback)) {
                throw new IllegalArgumentException("callback is already registered");
            }
            this.mCallbackMap.put(callback, executor);
            if (!this.mIsRegistered) {
                try {
                    this.mAdapter.registerCallback(this);
                    this.mIsRegistered = true;
                } catch (RemoteException e) {
                    String str = TAG;
                    Log.w(str, "Failed to register broadcast assistant callback");
                    Log.e(str, Log.getStackTraceString(new Throwable()));
                }
            }
        }
    }

    public void unregister(BluetoothLeBroadcastAssistant.Callback callback) {
        synchronized (this) {
            if (!this.mCallbackMap.containsKey(callback)) {
                throw new IllegalArgumentException("callback was not registered before");
            }
            this.mCallbackMap.remove(callback);
            if (this.mCallbackMap.isEmpty() && this.mIsRegistered) {
                try {
                    this.mAdapter.unregisterCallback(this);
                    this.mIsRegistered = false;
                } catch (RemoteException e) {
                    String str = TAG;
                    Log.w(str, "Failed to unregister callback with service");
                    Log.e(str, Log.getStackTraceString(new Throwable()));
                }
            }
        }
    }

    public boolean isAtLeastOneCallbackRegistered() {
        boolean z;
        synchronized (this) {
            z = !this.mCallbackMap.isEmpty();
        }
        return z;
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSearchStarted(final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSearchStarted(reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSearchStartFailed(final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSearchStartFailed(reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSearchStopped(final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSearchStopped(reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSearchStopFailed(final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSearchStopFailed(reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceFound(final BluetoothLeBroadcastMetadata source) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceFound(source);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceAdded(final BluetoothDevice sink, final int sourceId, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceAdded(sink, sourceId, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceAddFailed(final BluetoothDevice sink, final BluetoothLeBroadcastMetadata source, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceAddFailed(sink, source, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceModified(final BluetoothDevice sink, final int sourceId, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceModified(sink, sourceId, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceModifyFailed(final BluetoothDevice sink, final int sourceId, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceModifyFailed(sink, sourceId, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceRemoved(final BluetoothDevice sink, final int sourceId, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceRemoved(sink, sourceId, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onSourceRemoveFailed(final BluetoothDevice sink, final int sourceId, final int reason) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onSourceRemoveFailed(sink, sourceId, reason);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
    public void onReceiveStateChanged(final BluetoothDevice sink, final int sourceId, final BluetoothLeBroadcastReceiveState state) {
        synchronized (this) {
            for (final BluetoothLeBroadcastAssistant.Callback cb : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(cb);
                long identity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            cb.onReceiveStateChanged(sink, sourceId, state);
                        }
                    });
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }
}
