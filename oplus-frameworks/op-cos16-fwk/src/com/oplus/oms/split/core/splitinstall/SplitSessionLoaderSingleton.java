package com.oplus.oms.split.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;

public final class SplitSessionLoaderSingleton {
    private static final AtomicReference<SplitSessionLoader> REFERENCE = new AtomicReference<>();

    
    public static SplitSessionLoader get() {
        return REFERENCE.get();
    }

    public static void set(SplitSessionLoader loader) {
        REFERENCE.compareAndSet(null, loader);
    }
}
