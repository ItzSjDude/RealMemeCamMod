package com.oplus.compat.id.impl;

import android.app.OplusNotificationManager;
import android.os.RemoteException;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class IdProviderImplNative {
    private static final String CALLING_UID = "callingUid";
    private static final String CHECK_GET_APID = "checkGetAPID";
    private static final String CHECK_GET_GUID = "checkGetGUID";
    private static final String CLEAR_STD_ID = "clearStdid";
    private static final String COMPONENT_NAME = "com.android.id.impl.IdProviderImpl";
    private static final String GET_AUID = "getAUID";
    private static final String GET_DUID = "getDUID";
    private static final String GET_GUID = "getGUID";
    private static final String GET_OUID = "getOUID";
    private static final String PKG_NAME = "packageName";
    private static final String RESULT = "result";
    private static final String TYPE = "type";
    private static boolean sHasStdIdMethod = hasStdIdMethod();

    @OplusCompatibleMethod
    private static Object checkGetAPIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object checkGetGUIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object clearStdIdActionNameCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object clearStdIdForCompat(String str, int i, String str2) throws RemoteException {
        return null;
    }

    @OplusCompatibleMethod
    private static Object clearStdIdForQ(String str, int i, String str2) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAUIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDUIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getGUIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getIdForCompat(String str, int i, String str2) throws RemoteException {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOUIDForQ(String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getStdIdActionNameCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getStdIdForQ(String str, String str2, int i) {
        return null;
    }

    private static boolean hasStdIdMethod() {
        if (VersionUtils.isR()) {
            try {
                OplusNotificationManager.class.getMethod("getStdid", String.class, Integer.TYPE, String.class);
                return true;
            } catch (NoSuchMethodException unused) {
                return false;
            }
        }
        return false;
    }

    @Oem
    @Permission(authStr = GET_AUID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getAUID(String str, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            if (!VersionUtils.appPlatformExists()) {
                return (String) getIdForCompat(str, i, "AUID");
            }
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(GET_AUID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (String) getAUIDForQ(str, i);
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = GET_OUID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getOUID(String str, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            if (!VersionUtils.appPlatformExists()) {
                return (String) getIdForCompat(str, i, "OUID");
            }
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(GET_OUID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (String) getOUIDForQ(str, i);
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = GET_GUID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getGUID(String str, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            if (!VersionUtils.appPlatformExists()) {
                return (String) getIdForCompat(str, i, "GUID");
            }
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(GET_GUID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (String) getGUIDForQ(str, i);
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = GET_DUID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getDUID(String str, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            if (!VersionUtils.appPlatformExists()) {
                return (String) getIdForCompat(str, i, "DUID");
            }
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(GET_DUID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (String) getDUIDForQ(str, i);
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = "getStdid", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getStdid(String str, String str2, int i) throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return (String) getStdIdForQ(str, str2, i);
            }
            throw new UnSupportedApiVersionException("unsupported before Q");
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(getStdIdActionName()).withInt(CALLING_UID, i).withString(PKG_NAME, str).withString("type", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    private static String getStdIdActionName() {
        return sHasStdIdMethod ? "getStdid" : (String) getStdIdActionNameCompat();
    }

    @Oem
    @Permission(authStr = CHECK_GET_GUID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean checkGetGUID(String str, int i) throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return ((Boolean) checkGetGUIDForQ(str, i)).booleanValue();
            }
            throw new UnSupportedApiVersionException("unsupported before Q");
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(CHECK_GET_GUID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = CHECK_GET_APID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean checkGetAPID(String str, int i) throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return ((Boolean) checkGetAPIDForQ(str, i)).booleanValue();
            }
            throw new UnSupportedApiVersionException("unsupported before Q");
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(CHECK_GET_APID).withInt(CALLING_UID, i).withString(PKG_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    @Oem
    @Permission(authStr = CLEAR_STD_ID, type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String clearStdid(String str, int i, String str2) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isS()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(CLEAR_STD_ID).withInt(CALLING_UID, i).withString(PKG_NAME, str).withString("type", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isR()) {
            if (!VersionUtils.appPlatformExists()) {
                return (String) clearStdIdForCompat(str, i, str2);
            }
            Response execute2 = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(clearStdIdActionName()).withInt(CALLING_UID, i).withString(PKG_NAME, str).withString("type", str2).build()).execute();
            if (execute2.isSuccessful()) {
                return execute2.getBundle().getString(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (String) clearStdIdForQ(str, i, str2);
        } else {
            throw new UnSupportedApiVersionException("is not supported before Q");
        }
    }

    private static String clearStdIdActionName() {
        return sHasStdIdMethod ? CLEAR_STD_ID : (String) clearStdIdActionNameCompat();
    }
}
