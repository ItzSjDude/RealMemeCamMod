package com.oplus.compat.os;

import android.os.Trace;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class TraceNative {
    private TraceNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void traceBegin(long j, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Trace.traceBegin(j, str);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void traceEnd(long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Trace.traceEnd(j);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void asyncTraceBegin(long j, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Trace.asyncTraceBegin(j, str, i);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void asyncTraceEnd(long j, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Trace.asyncTraceEnd(j, str, i);
            return;
        }
        throw new UnSupportedApiVersionException();
    }
}
