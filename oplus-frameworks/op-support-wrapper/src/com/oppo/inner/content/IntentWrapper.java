package com.oppo.inner.content;

import android.content.Intent;
import android.content.OplusBaseIntent;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;
import com.oplus.inner.content.IntentWrapper;

public class IntentWrapper {
    public static int getOplusUserId(Intent o) {
        return IntentWrapper.getOplusUserId(o);
    }

    public static void setOplusUserId(Intent o, int oplusUserId) {
        IntentWrapper.setOplusUserId(o, oplusUserId);
    }

    public static int getIsFromGameSpace(Intent o) {
        return IntentWrapper.getIsFromGameSpace(o);
    }

    public static void setIsFromGameSpace(Intent o, int isFromGameSpace) {
        IntentWrapper.setIsFromGameSpace(o, isFromGameSpace);
    }

    public static void setOplusFlags(Intent o, int flag) {
        IntentWrapper.setOplusFlags(o, flag);
    }

    public static int getOplusFlags(Intent o) {
        return IntentWrapper.getOplusFlags(o);
    }

    public static int getCallingUid(Intent o) {
        return IntentWrapper.getCallingUid(o);
    }

}