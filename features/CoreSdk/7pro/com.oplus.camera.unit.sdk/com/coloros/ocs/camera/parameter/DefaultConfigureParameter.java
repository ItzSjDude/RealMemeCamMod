package com.coloros.ocs.camera.parameter;

import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.Parameter;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class DefaultConfigureParameter extends Parameter {
    public static final Parameter.Key<String> VIDEO_FPS = new Parameter.Key<>("com.oppo.configure.video.fps", String.class, 3);
    public static final Parameter.Key<String> VIDEO_STABILIZATION_MODE = new Parameter.Key<>("com.oppo.configure.video.stabilization", String.class, 3);
    public static final Parameter.Key<String> VIDEO_3HDR_MODE = new Parameter.Key<>("com.oppo.configure.video.3hdr", String.class, 3);

    private DefaultConfigureParameter(@NonNull ConcurrentHashMap<Parameter.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap2) {
        super(concurrentHashMap, concurrentHashMap2);
    }
}
