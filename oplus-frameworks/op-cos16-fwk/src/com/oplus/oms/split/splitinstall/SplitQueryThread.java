package com.oplus.oms.split.splitinstall;

import java.util.concurrent.ThreadFactory;

final class SplitQueryThread implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r) {
        return new Thread(r, "split_query_thread");
    }
}
