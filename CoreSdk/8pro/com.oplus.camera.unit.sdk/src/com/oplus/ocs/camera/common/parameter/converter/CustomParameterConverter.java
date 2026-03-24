package com.oplus.ocs.camera.common.parameter.converter;

import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.producer.device.CaptureRequestProxy;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CustomParameterConverter {
    private static ParameterConverterInterface sParameterConverter;

    public static void init() {
        if (sParameterConverter == null) {
            sParameterConverter = createParameterConverter();
        }
    }

    public static void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map, CaptureRequestProxy.Builder builder, int i) {
        if (map == null || map.isEmpty()) {
            return;
        }
        sParameterConverter.convert(map, builder, i);
    }

    private static ParameterConverterInterface createParameterConverter() {
        if (PlatformUtil.isQualcommPlatform()) {
            return new QComParameterConverter();
        }
        return new MTKParameterConverter();
    }
}
