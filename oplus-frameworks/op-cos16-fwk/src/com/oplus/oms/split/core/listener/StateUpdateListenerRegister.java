package com.oplus.oms.split.core.listener;

import android.content.Context;
import android.content.IntentFilter;
import com.oplus.oms.split.common.SplitLog;
import com.oplus.oms.split.core.tasks.CallbackExecutor;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public abstract class StateUpdateListenerRegister<StateT> {
    private static final String TAG = "StateUpdateListenerRegister";
    protected final Context mContext;
    private final IntentFilter mIntentFilter;
    private final Set<OplusStateUpdatedListener<StateT>> mStateUpdatedListeners = Collections.newSetFromMap(new ConcurrentHashMap());
    private final Object mLock = new Object();

    
    public StateUpdateListenerRegister(IntentFilter intentFilter, Context context) {
        this.mIntentFilter = intentFilter;
        this.mContext = context;
    }

    public final void registerListener(OplusStateUpdatedListener<StateT> listener) {
        synchronized (this.mLock) {
            SplitLog.i(TAG, "registerListener :%s", SplitLog.hexHash(listener));
            if (this.mStateUpdatedListeners.contains(listener)) {
                SplitLog.i(TAG, "listener has been registered! %s", SplitLog.hexHash(listener));
            } else {
                this.mStateUpdatedListeners.add(listener);
            }
        }
    }

    public final void unregisterListener(OplusStateUpdatedListener<StateT> listener) {
        synchronized (this.mLock) {
            boolean contained = this.mStateUpdatedListeners.remove(listener);
            SplitLog.i(TAG, "unregisterListener :%s ret: %b", SplitLog.hexHash(listener), Boolean.valueOf(contained));
        }
    }

    public final void notifyListeners(final StateT result) {
        SplitLog.i(TAG, "notifyListeners: %s", result);
        CallbackExecutor.getInstance().execute(new Runnable() { // from class: com.oplus.oms.split.core.listener.StateUpdateListenerRegister.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (StateUpdateListenerRegister.this.mLock) {
                    Iterator it = StateUpdateListenerRegister.this.mStateUpdatedListeners.iterator();
                    while (it.hasNext()) {
                        ((OplusStateUpdatedListener) it.next()).onStateUpdate(result);
                    }
                }
            }
        });
    }
}
