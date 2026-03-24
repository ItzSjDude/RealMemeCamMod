package com.oplus.compat.internal.os;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.internal.os.BatterySipper;
import com.android.internal.os.BatteryStatsHelper;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.internal.os.BatterySipperWrapper;
import com.oplus.inner.internal.os.BatteryStatsHelperWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class BatteryStatsHelperNative {
    private static String COMPONENT_NAME = "com.android.internal.os.BatteryStatsHelper";
    private static final String RESULT = "result";
    private static String TAG = "BatteryStatsHelperNative";
    private BatteryStatsHelper mBatteryStatusHelper;
    private Object mHelperWrapper;

    @OplusCompatibleMethod
    private static void createCompat(Object obj, Bundle bundle) {
    }

    @OplusCompatibleMethod
    private static Object getUsageListCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initCompat(Context context) {
        return null;
    }

    @OplusCompatibleMethod
    private static void refreshStatsCompat(Object obj, int i, int i2) {
    }

    @Grey
    @RequiresApi(api = 26)
    public BatteryStatsHelperNative(Context context) {
        try {
            if (VersionUtils.isS()) {
                this.mBatteryStatusHelper = new BatteryStatsHelper(context);
            } else if (VersionUtils.isOsVersion11_3()) {
                this.mHelperWrapper = new BatteryStatsHelperWrapper(context);
            } else if (VersionUtils.isQ()) {
                this.mHelperWrapper = initCompat(context);
            } else if (VersionUtils.isO()) {
                this.mBatteryStatusHelper = new BatteryStatsHelper(context);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Grey
    @RequiresApi(api = 26)
    public void create(Bundle bundle) {
        try {
            if (VersionUtils.isS()) {
                this.mBatteryStatusHelper.create(bundle);
            } else if (VersionUtils.isOsVersion11_3()) {
                ((BatteryStatsHelperWrapper) this.mHelperWrapper).create(bundle);
            } else if (VersionUtils.isQ()) {
                createCompat(this.mHelperWrapper, bundle);
            } else if (VersionUtils.isO()) {
                this.mBatteryStatusHelper.create(bundle);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Grey
    @RequiresApi(api = 26)
    public void refreshStats(int i, int i2) {
        try {
            if (VersionUtils.isS()) {
                this.mBatteryStatusHelper.refreshStats(i, i2);
            } else if (VersionUtils.isOsVersion11_3()) {
                ((BatteryStatsHelperWrapper) this.mHelperWrapper).refreshStats(i, i2);
            } else if (VersionUtils.isQ()) {
                refreshStatsCompat(this.mHelperWrapper, i, i2);
            } else if (VersionUtils.isO()) {
                this.mBatteryStatusHelper.refreshStats(i, i2);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Grey
    @RequiresApi(api = 26)
    public List<BatterySipperNative> getUsageList() {
        ArrayList arrayList = new ArrayList();
        try {
            if (VersionUtils.isS()) {
                List<BatterySipper> usageList = this.mBatteryStatusHelper.getUsageList();
                if (usageList != null) {
                    for (BatterySipper batterySipper : usageList) {
                        arrayList.add(new BatterySipperNative(batterySipper));
                    }
                }
            } else if (VersionUtils.isOsVersion11_3()) {
                List<BatterySipperWrapper> usageList2 = ((BatteryStatsHelperWrapper) this.mHelperWrapper).getUsageList();
                if (usageList2 != null) {
                    for (BatterySipperWrapper batterySipperWrapper : usageList2) {
                        arrayList.add(new BatterySipperNative(batterySipperWrapper));
                    }
                }
            } else if (VersionUtils.isQ()) {
                List<Object> list = (List) getUsageListCompat(this.mHelperWrapper);
                if (list != null) {
                    for (Object obj : list) {
                        arrayList.add(new BatterySipperNative(obj));
                    }
                }
            } else if (VersionUtils.isO()) {
                List<BatterySipper> usageList3 = this.mBatteryStatusHelper.getUsageList();
                if (usageList3 != null) {
                    for (BatterySipper batterySipper2 : usageList3) {
                        arrayList.add(new BatterySipperNative(batterySipper2));
                    }
                }
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return arrayList;
    }

    @Permission(authStr = "getAppPowerConsumed", type = "epona")
    @RequiresApi(api = 30)
    @System
    public double getAppPowerConsumed(int i) {
        try {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getAppPowerConsumed").withInt("appUid", i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getDouble(RESULT);
                }
                Log.e(TAG, execute.getMessage());
                return 0.0d;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0.0d;
        }
    }
}
