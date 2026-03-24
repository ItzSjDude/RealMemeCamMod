package com.coloros.ocs.camera.parameter;

import android.graphics.RectF;
import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.Parameter;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class DefaultPreviewParameter extends Parameter {
    public static final Parameter.Key<Integer> KEY_FOCUS_MODE = new Parameter.Key<>("com.oppo.preview.focus.mode", Integer.class, 1);
    public static final Parameter.Key<RectF> KEY_AF_REGIONS = new Parameter.Key<>("com.oppo.preview.af.regions", RectF.class, 1);
    public static final Parameter.Key<RectF> KEY_AE_REGIONS = new Parameter.Key<>("com.oppo.preview.ae.regions", RectF.class, 1);
    public static final Parameter.Key<String> KEY_FLASH_MODE = new Parameter.Key<>("com.oppo.preview.flash.mode", String.class, 1);
    public static final Parameter.Key<Float> KEY_ZOOM_RATIO = new Parameter.Key<>("com.oppo.preview.zoom.ratio", Float.class, 1);

    private DefaultPreviewParameter(@NonNull ConcurrentHashMap<Parameter.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap2) {
        super(concurrentHashMap, concurrentHashMap2);
    }
}
