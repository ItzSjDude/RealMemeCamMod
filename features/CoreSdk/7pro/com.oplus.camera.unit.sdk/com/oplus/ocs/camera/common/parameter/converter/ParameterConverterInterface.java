package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import com.oplus.ocs.camera.common.parameter.Parameter;
import java.util.Map;
/* loaded from: classes.dex */
public interface ParameterConverterInterface {
    <T> T convert(Parameter.Key<T> key, TotalCaptureResult totalCaptureResult);

    void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map, CaptureRequest.Builder builder, int i);
}
