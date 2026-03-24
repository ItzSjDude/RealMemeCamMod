package com.oplus.compat.app;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.app.OplusHansFreezeManager;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class OplusFreezeManagerNative {
    private static final String TAG = "FreezeManagerNative";
    private static volatile OplusFreezeManagerNative sInstance;
    private OplusHansFreezeManager manager;

    private OplusFreezeManagerNative() {
        if (this.manager == null) {
            this.manager = OplusHansFreezeManager.getInstance();
        }
    }

    public static OplusFreezeManagerNative getInstance() {
        if (sInstance == null) {
            synchronized (OplusFreezeManagerNative.class) {
                if (sInstance == null) {
                    sInstance = new OplusFreezeManagerNative();
                }
            }
        }
        return sInstance;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "getTrafficBytesList", params = {ArrayList.class})
        private static RefMethod<SparseArray<Long>> getTrafficBytesList;
        @MethodName(name = "getTrafficPacketList", params = {ArrayList.class})
        private static RefMethod<SparseArray<Long>> getTrafficPacketList;
        @MethodName(name = "isFrozenByHans", params = {String.class, int.class})
        private static RefMethod<Boolean> isFrozenByHans;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "com.oplus.app.OplusHansFreezeManager");
        }
    }

    @Oem
    @RequiresApi(api = 30)
    public boolean isFrozenByHans(@NonNull String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Boolean) ReflectInfo.isFrozenByHans.call(this.manager, str, Integer.valueOf(i))).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before 11.2");
    }

    @Oem
    @RequiresApi(api = 30)
    public SparseArray<Long> getTrafficBytesList(@NonNull ArrayList<Integer> arrayList) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (SparseArray) ReflectInfo.getTrafficBytesList.call(this.manager, arrayList);
        }
        throw new UnSupportedApiVersionException("not supported before 11.2");
    }

    @Oem
    @RequiresApi(api = 30)
    public SparseArray<Long> getTrafficPacketList(@NonNull ArrayList<Integer> arrayList) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (SparseArray) ReflectInfo.getTrafficPacketList.call(this.manager, arrayList);
        }
        throw new UnSupportedApiVersionException("not supported before 11.2");
    }
}
