package com.oplus.shield.servicemaps;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class ServiceMap {
    private static final List<ISystemServiceMap> mSystemMap = new CopyOnWriteArrayList();
    private static final Map<String, String> mSpecialVerifyMap = new ConcurrentHashMap();
    private static final List<String> mSkipService = new CopyOnWriteArrayList();
    private static final List<String> initList = Arrays.asList("android.view.IWindowManager");

    public static void initServiceMap() {
        for (String str : initList) {
            mSystemMap.add(new SystemServiceMap(str));
        }
        mSpecialVerifyMap.put("android.view.IWindowSession", "IWindowSession");
        mSpecialVerifyMap.put("android.view.IWindowManager", "IWindowSession");
        mSkipService.add("android.view.IWindowSession");
        mSpecialVerifyMap.put("android.content.pm.IPackageInstaller", "PackageInstaller.Session");
        mSpecialVerifyMap.put("android.content.pm.IPackageInstallerSession", "PackageInstaller.Session");
    }

    public static boolean skipTingleVerifyService(String str) {
        return mSkipService.contains(str);
    }

    public static String convertTransactCode(String str, int i) {
        if (mSpecialVerifyMap.containsKey(str)) {
            return mSpecialVerifyMap.get(str);
        }
        for (ISystemServiceMap iSystemServiceMap : mSystemMap) {
            if (TextUtils.equals(iSystemServiceMap.getServiceName(), str)) {
                return iSystemServiceMap.getClassName(i);
            }
        }
        SystemServiceMap systemServiceMap = new SystemServiceMap(str);
        mSystemMap.add(systemServiceMap);
        return systemServiceMap.getClassName(i);
    }
}
