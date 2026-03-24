package com.oplus.compat.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Permission {
    public static final String TYPE_EPONA = "epona";
    public static final String TYPE_TINGLE = "tingle";

    String authStr() default "NA";

    String type() default "NA";
}
