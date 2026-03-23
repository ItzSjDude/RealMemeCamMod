package com.oplus.compat.utils.util;

import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class ResponseUtil {
    public static boolean permissionDeny(Response response) {
        return response.getCode() == -2;
    }
}
