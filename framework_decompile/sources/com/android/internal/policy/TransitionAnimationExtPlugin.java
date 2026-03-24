package com.android.internal.policy;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.gnss.GnssSignalType;
import android.view.animation.Animation;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes4.dex */
public class TransitionAnimationExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) TransitionAnimationExtPlugin.class, "com.android.internal.policy.TransitionAnimationExtImpl");

    @MethodParams({Animation.class, Rect.class, Rect.class})
    public static RefStaticMethod<Animation> hooclipRectLRAnimationSafely;

    @MethodParams({Context.class, String.class, GnssSignalType.CODE_TYPE_I, Animation.class})
    public static RefStaticMethod<Animation> hookLoadAnimationSafely;
}
