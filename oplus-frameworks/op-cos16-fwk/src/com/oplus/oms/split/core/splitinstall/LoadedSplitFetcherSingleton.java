package com.oplus.oms.split.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;

public final class LoadedSplitFetcherSingleton {
    private static final AtomicReference<LoadedSplitFetcher> REFERENCE = new AtomicReference<>(null);

    
    public static LoadedSplitFetcher get() {
        return REFERENCE.get();
    }

    public static void set(LoadedSplitFetcher fetcher) {
        REFERENCE.compareAndSet(null, fetcher);
    }
}
