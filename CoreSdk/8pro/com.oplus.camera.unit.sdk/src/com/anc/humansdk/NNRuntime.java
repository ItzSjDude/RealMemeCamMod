package com.anc.humansdk;

/* JADX INFO: loaded from: classes.dex */
/**
 * Enumeration of supported NN runtimes. Values are preserved from the
 * original implementation to maintain binary compatibility.
 */
public enum NNRuntime {
    RUNTIME_UNKNOW(0),
    RUNTIME_SNPE(1),
    RUNTIME_AIA(2),
    RUNTIME_OPENCL(3),
    RUNTIME_APU(4),
    RUNTIME_RANGE(5);

    private final int value;

    NNRuntime(int value) {
        this.value = value;
    }

    /**
     * Return the integer value used by native code and configs.
     */
    public int value() {
        return this.value;
    }
}
