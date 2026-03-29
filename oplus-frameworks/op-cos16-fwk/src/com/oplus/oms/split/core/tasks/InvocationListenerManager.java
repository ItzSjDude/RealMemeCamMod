package com.oplus.oms.split.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;

final class InvocationListenerManager<T> {
    private Queue<InvocationListener<T>> mInvocationListenerQueue;
    private boolean mInvoked;
    private final Object mLock = new Object();

    
    public void addInvocationListener(InvocationListener<T> invocationListener) {
        synchronized (this.mLock) {
            if (this.mInvocationListenerQueue == null) {
                this.mInvocationListenerQueue = new ArrayDeque();
            }
            this.mInvocationListenerQueue.add(invocationListener);
        }
    }

    
    public void invokeListener(OplusTask<T> task) {
        InvocationListener<T> invocationListener;
        synchronized (this.mLock) {
            if (this.mInvocationListenerQueue != null && !this.mInvoked) {
                this.mInvoked = true;
                while (true) {
                    synchronized (this.mLock) {
                        invocationListener = this.mInvocationListenerQueue.poll();
                        if (invocationListener == null) {
                            this.mInvoked = false;
                            return;
                        }
                    }
                    invocationListener.invoke(task);
                }
            }
        }
    }
}
