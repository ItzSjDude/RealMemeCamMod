package com.oplus.compat.net.wifi.p2p;

import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pGroupList;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class WifiP2pGroupListNative {
    private WifiP2pGroupList mWifiP2pGroupList;
    private Object mWifiP2pGroupListWrapper;

    @OplusCompatibleMethod
    private static Object getGroupListOCopmat(Object obj) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<List<WifiP2pGroup>> getGroupList;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WifiP2pGroupList.class);
        }
    }

    private WifiP2pGroupListNative(WifiP2pGroupList wifiP2pGroupList) {
        this.mWifiP2pGroupList = wifiP2pGroupList;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public WifiP2pGroupListNative(Object obj) {
        this.mWifiP2pGroupListWrapper = obj;
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public Collection<WifiP2pGroup> getGroupList() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (Collection) ReflectInfo.getGroupList.call(this.mWifiP2pGroupList, new Object[0]);
        }
        if (VersionUtils.isQ()) {
            if (this.mWifiP2pGroupListWrapper == null) {
                return null;
            }
            return (Collection) getGroupListOCopmat(this.mWifiP2pGroupListWrapper);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
