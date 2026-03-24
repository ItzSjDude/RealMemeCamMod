package com.android.internal.os;

import android.content.res.Resources;
import android.hardware.gnss.GnssSignalType;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes4.dex */
public class ZygoteInitExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) ZygoteInitExtPlugin.class, "com.android.internal.os.ZygoteInitExtImpl");

    @MethodParams({String.class})
    public static RefStaticMethod<Void> addBootEvent;

    @MethodParams({GnssSignalType.CODE_TYPE_Z})
    public static RefStaticMethod<Void> beginHookGcAndFinalize;
    public static RefStaticMethod<Void> beginHookPreload;

    @MethodParams({GnssSignalType.CODE_TYPE_Z})
    public static RefStaticMethod<Void> endHookGcAndFinalize;
    public static RefStaticMethod<Void> endHookPreload;

    @MethodParams({Resources.class, String.class})
    public static RefStaticMethod<Void> hookPreloadResources;
}
