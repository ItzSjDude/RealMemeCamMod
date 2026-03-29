package com.oplus.oms.split.core.splitcompat;

import android.content.Context;
import com.oplus.oms.split.core.splitinstall.LoadedSplitFetcherSingleton;
import com.oplus.oms.split.core.splitinstall.SplitSessionLoaderSingleton;
import com.oplus.oms.split.core.tasks.TaskExecutors;
import com.oplus.oms.split.splitload.SplitLoadManager;
import com.oplus.oms.split.splitload.SplitLoadManagerImpl;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class OplusSplitCompat {
    private static final AtomicReference<OplusSplitCompat> REFERENCE = new AtomicReference<>(null);

    private OplusSplitCompat() {
    }

    public static boolean install(Context context) {
        if (REFERENCE.compareAndSet(null, new OplusSplitCompat())) {
            OplusSplitCompat compat = REFERENCE.get();
            SplitSessionLoaderSingleton.set(new SplitSessionLoaderImpl(TaskExecutors.MAIN_THREAD));
            LoadedSplitFetcherSingleton.set(new LoadedSplitFetcherImpl(compat));
            return true;
        }
        return true;
    }

    
    public static boolean hasInstance() {
        return REFERENCE.get() != null;
    }

    
    public final Set<String> getLoadedSplits() {
        SplitLoadManager loadManager = SplitLoadManagerImpl.getInstance();
        return loadManager.getLoadedSplitNames();
    }
}
