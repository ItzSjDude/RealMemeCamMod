package com.oplus.compat.hardware.soundtrigger;

import android.hardware.soundtrigger.SoundTrigger;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class SoundTriggerNative {
    private static final String COMPONENT_NAME = "hardware.soundtrigger.SoundTrigger";
    private static final String KEY_RESULT = "result";
    private static final int STATUS_ERROR = Integer.MIN_VALUE;
    private static final String TAG = "SoundTriggerNative";
    private static final String STATUS_BAD_VALUE_NAME = "STATUS_BAD_VALUE";
    @Permission(authStr = "SoundTrigger", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static final int STATUS_BAD_VALUE = init(STATUS_BAD_VALUE_NAME);
    private static final String STATUS_DEAD_OBJECT_NAME = "STATUS_DEAD_OBJECT";
    @Permission(authStr = "SoundTrigger", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static final int STATUS_DEAD_OBJECT = init(STATUS_DEAD_OBJECT_NAME);
    private static final String STATUS_INVALID_OPERATION_NAME = "STATUS_INVALID_OPERATION";
    @Permission(authStr = "SoundTrigger", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static final int STATUS_INVALID_OPERATION = init(STATUS_INVALID_OPERATION_NAME);
    private static final String STATUS_NO_INIT_NAME = "STATUS_NO_INIT";
    @Permission(authStr = "SoundTrigger", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static final int STATUS_NO_INIT = init(STATUS_NO_INIT_NAME);
    private static final String STATUS_PERMISSION_DENIED_NAME = "STATUS_PERMISSION_DENIED";
    @Permission(authStr = "SoundTrigger", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static final int STATUS_PERMISSION_DENIED = init(STATUS_PERMISSION_DENIED_NAME);

    private SoundTriggerNative() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RefSoundTriggerInfo {
        public static RefInt STATUS_BAD_VALUE;
        public static RefInt STATUS_DEAD_OBJECT;
        public static RefInt STATUS_INVALID_OPERATION;
        public static RefInt STATUS_NO_INIT;
        public static RefInt STATUS_PERMISSION_DENIED;

        private RefSoundTriggerInfo() {
        }

        static {
            RefClass.load(RefSoundTriggerInfo.class, SoundTrigger.class);
        }
    }

    private static int init(String str) {
        if (VersionUtils.isS()) {
            char c = 65535;
            try {
                switch (str.hashCode()) {
                    case -1952564994:
                        if (str.equals(STATUS_PERMISSION_DENIED_NAME)) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1300212351:
                        if (str.equals(STATUS_NO_INIT_NAME)) {
                            c = 3;
                            break;
                        }
                        break;
                    case -254054739:
                        if (str.equals(STATUS_DEAD_OBJECT_NAME)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 65713258:
                        if (str.equals(STATUS_BAD_VALUE_NAME)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 1639092690:
                        if (str.equals(STATUS_INVALID_OPERATION_NAME)) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return RefSoundTriggerInfo.STATUS_BAD_VALUE.get(null);
                    case 1:
                        return RefSoundTriggerInfo.STATUS_DEAD_OBJECT.get(null);
                    case 2:
                        return RefSoundTriggerInfo.STATUS_INVALID_OPERATION.get(null);
                    case 3:
                        return RefSoundTriggerInfo.STATUS_NO_INIT.get(null);
                    case 4:
                        return RefSoundTriggerInfo.STATUS_PERMISSION_DENIED.get(null);
                    default:
                        return STATUS_ERROR;
                }
            } catch (Exception e) {
                Log.e(TAG, e.toString());
                return STATUS_ERROR;
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(str).build()).execute();
            return execute.isSuccessful() ? execute.getBundle().getInt(KEY_RESULT) : STATUS_ERROR;
        } else {
            Log.e(TAG, "is not supported before R");
            return STATUS_ERROR;
        }
    }
}
