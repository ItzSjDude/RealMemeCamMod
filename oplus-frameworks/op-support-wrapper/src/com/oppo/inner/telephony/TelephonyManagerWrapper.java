package com.oppo.inner.telephony;

import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.List;
import com.oplus.inner.telephony.TelephonyManagerWrapper;

public class TelephonyManagerWrapper {
    public static int getNetworkClass(TelephonyManager telephonyManager, int networkType) {
        return TelephonyManagerWrapper.getNetworkClass(telephonyManager, networkType);
    }

    public static String getTelephonyProperty(TelephonyManager telephonyManager, int phoneId, String property, String defaultVal) {
        return TelephonyManagerWrapper.getTelephonyProperty(telephonyManager, phoneId, property, defaultVal);
    }

    public static boolean isMultiSimEnabled(TelephonyManager telephonyManager) {
        return TelephonyManagerWrapper.isMultiSimEnabled(telephonyManager);
    }

    public static String getIccAuthentication(TelephonyManager telephonyManager, int subId, int appType, int authType, String data) {
        return TelephonyManagerWrapper.getIccAuthentication(telephonyManager, subId, appType, authType, data);
    }

    public static boolean setRoamingOverride(TelephonyManager telephonyManager, List<String> gsmRoamingList, List<String> gsmNonRoamingList, List<String> cdmaRoamingList, List<String> cdmaNonRoamingList) {
        return TelephonyManagerWrapper.setRoamingOverride(telephonyManager, gsmRoamingList, gsmNonRoamingList, cdmaRoamingList, cdmaNonRoamingList);
    }

    public static int getPreferredNetworkType(TelephonyManager telephonyManager, int subId) {
        return TelephonyManagerWrapper.getPreferredNetworkType(telephonyManager, subId);
    }

    public static String getSimCountryIso(TelephonyManager telephonyManager, int subId) {
        return TelephonyManagerWrapper.getSimCountryIso(telephonyManager, subId);
    }

    public static boolean hasIccCard(TelephonyManager telephonyManager, int slotIndex) {
        return TelephonyManagerWrapper.hasIccCard(telephonyManager, slotIndex);
    }

    public static int getSlotIndex(TelephonyManager telephonyManager) {
        return TelephonyManagerWrapper.getSlotIndex(telephonyManager);
    }

}