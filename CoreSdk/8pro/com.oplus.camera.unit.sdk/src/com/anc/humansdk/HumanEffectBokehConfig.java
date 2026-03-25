package com.anc.humansdk;

import android.content.res.AssetManager;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
/**
 * Configuration holder for `HumanEffectBokehApi`.
 *
 * This class intentionally preserves existing public method names and
 * fluent setters to remain backward compatible with callers. Changes
 * are limited to documentation, formatting and minor local-name
 * clarifications.
 */
public class HumanEffectBokehConfig {
    public AssetManager assetsMgr;
    public String cachePath;
    public boolean isRealTime;
    public byte[] modelData;
    public String modelPath;
    public String nativeLibPath;
    public int runtime;

    /** Create a new config instance (kept as `Instance()` for compatibility). */
    public static HumanEffectBokehConfig Instance() {
        return new HumanEffectBokehConfig();
    }

    public HumanEffectBokehConfig setRealTime(boolean realTime) {
        this.isRealTime = realTime;
        return this;
    }

    public HumanEffectBokehConfig setModelPath(String path) {
        this.modelPath = path;
        return this;
    }

    public HumanEffectBokehConfig setModelData(byte[] data) {
        this.modelData = data;
        return this;
    }

    public HumanEffectBokehConfig setCachePath(String path) {
        this.cachePath = path;
        return this;
    }

    public HumanEffectBokehConfig setNativeLibPath(String path) {
        this.nativeLibPath = path;
        return this;
    }

    public int getRuntime() {
        return this.runtime;
    }

    public HumanEffectBokehConfig setRuntime(int runtime) {
        this.runtime = runtime;
        return this;
    }

    public HumanEffectBokehConfig setAssetsMgr(AssetManager assetManager) {
        this.assetsMgr = assetManager;
        return this;
    }

    /**
     * Infer a reasonable default runtime based on device hardware.
     * Name and behavior preserved to remain non-breaking.
     */
    public void InferenceRuntime() {
        // keep existing behavior: if hardware equals "qcom" use SNPE, else AIA
        if (Build.HARDWARE.trim().toLowerCase().matches("qcom")) {
            this.runtime = NNRuntime.RUNTIME_SNPE.value();
        } else {
            this.runtime = NNRuntime.RUNTIME_AIA.value();
        }
    }

    @Override
    public String toString() {
        return String.format("realtime %b, runtime %d", Boolean.valueOf(this.isRealTime), Integer.valueOf(this.runtime));
    }
}
