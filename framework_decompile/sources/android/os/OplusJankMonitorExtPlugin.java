package android.os;

import android.hardware.gnss.GnssSignalType;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes3.dex */
public class OplusJankMonitorExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) OplusJankMonitorExtPlugin.class, "android.os.OplusJankMonitorExtImpl");

    @MethodParams({String.class, String.class, long.class})
    public static RefStaticMethod<Void> setLaunchStageTime;

    @MethodParams({GnssSignalType.CODE_TYPE_Z, String.class, GnssSignalType.CODE_TYPE_I, GnssSignalType.CODE_TYPE_I})
    public static RefStaticMethod<Void> startLaunchTrace;

    @MethodParams({String.class, GnssSignalType.CODE_TYPE_I, long.class})
    public static RefStaticMethod<Void> stopLaunchTrace;
}
