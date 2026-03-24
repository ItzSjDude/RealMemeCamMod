package com.oplus.ocs.camera.common.parameter.converter;

import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.producer.device.CaptureRequestProxy;
import java.util.Map;
/* loaded from: classes.dex */
public interface ParameterConverterInterface {
    void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map, CaptureRequestProxy.Builder builder, int i);
}
