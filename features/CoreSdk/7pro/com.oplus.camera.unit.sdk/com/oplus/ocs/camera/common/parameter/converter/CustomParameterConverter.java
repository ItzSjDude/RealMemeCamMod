package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.Util;
import java.util.Map;
/* loaded from: classes.dex */
public final class CustomParameterConverter {
    private static ParameterConverterInterface sParameterConverter;

    public static void init() {
        if (sParameterConverter == null) {
            sParameterConverter = createParameterConverter();
        }
    }

    public static void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map, CaptureRequest.Builder builder, int i) {
        if (map == null || map.isEmpty()) {
            return;
        }
        sParameterConverter.convert(map, builder, i);
    }

    public static <T> T convert(Parameter.Key<T> key, TotalCaptureResult totalCaptureResult) {
        if (sParameterConverter == null) {
            sParameterConverter = createParameterConverter();
        }
        return (T) sParameterConverter.convert(key, totalCaptureResult);
    }

    private static ParameterConverterInterface createParameterConverter() {
        if (Util.isQcomPlatform()) {
            return new QComParameterConverter();
        }
        return new MTKParameterConverter();
    }
}
