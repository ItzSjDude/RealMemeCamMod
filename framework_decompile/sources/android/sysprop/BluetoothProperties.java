package android.sysprop;

import android.os.SystemProperties;
import android.telephony.ims.RcsContactPresenceTuple;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class BluetoothProperties {
    private BluetoothProperties() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean tryParseBoolean(java.lang.String r2) {
        /*
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r0 = r2.toLowerCase(r0)
            int r1 = r0.hashCode()
            switch(r1) {
                case 48: goto L2d;
                case 49: goto L23;
                case 3569038: goto L18;
                case 97196323: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L37
        Le:
            java.lang.String r1 = "false"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Ld
            r0 = 3
            goto L38
        L18:
            java.lang.String r1 = "true"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Ld
            r0 = 1
            goto L38
        L23:
            java.lang.String r1 = "1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Ld
            r0 = 0
            goto L38
        L2d:
            java.lang.String r1 = "0"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Ld
            r0 = 2
            goto L38
        L37:
            r0 = -1
        L38:
            switch(r0) {
                case 0: goto L40;
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3d;
                default: goto L3b;
            }
        L3b:
            r0 = 0
            return r0
        L3d:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            return r0
        L40:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.sysprop.BluetoothProperties.tryParseBoolean(java.lang.String):java.lang.Boolean");
    }

    private static Integer tryParseInteger(String str) {
        try {
            return Integer.valueOf(str);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Integer tryParseUInt(String str) {
        try {
            return Integer.valueOf(Integer.parseUnsignedInt(str));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Long tryParseLong(String str) {
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Long tryParseULong(String str) {
        try {
            return Long.valueOf(Long.parseUnsignedLong(str));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Double tryParseDouble(String str) {
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static String tryParseString(String str) {
        if ("".equals(str)) {
            return null;
        }
        return str;
    }

    private static <T extends Enum<T>> T tryParseEnum(Class<T> cls, String str) {
        try {
            return (T) Enum.valueOf(cls, str.toUpperCase(Locale.US));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private static <T> List<T> tryParseList(Function<String, T> elementParser, String str) {
        if ("".equals(str)) {
            return new ArrayList();
        }
        List<T> ret = new ArrayList<>();
        int p = 0;
        while (true) {
            StringBuilder sb = new StringBuilder();
            while (p < str.length() && str.charAt(p) != ',') {
                if (str.charAt(p) == '\\') {
                    p++;
                }
                if (p == str.length()) {
                    break;
                }
                sb.append(str.charAt(p));
                p++;
            }
            ret.add(elementParser.apply(sb.toString()));
            if (p == str.length()) {
                return ret;
            }
            p++;
        }
    }

    private static <T extends Enum<T>> List<T> tryParseEnumList(Class<T> enumType, String str) {
        if ("".equals(str)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String element : str.split(",")) {
            arrayList.add(tryParseEnum(enumType, element));
        }
        return arrayList;
    }

    private static String escape(String str) {
        return str.replaceAll("([\\\\,])", "\\\\$1");
    }

    private static <T> String formatList(List<T> list) {
        StringJoiner joiner = new StringJoiner(",");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            T element = it.next();
            joiner.add(element == null ? "" : escape(element.toString()));
        }
        return joiner.toString();
    }

    private static String formatUIntList(List<Integer> list) {
        StringJoiner joiner = new StringJoiner(",");
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            Integer element = it.next();
            joiner.add(element == null ? "" : escape(Integer.toUnsignedString(element.intValue())));
        }
        return joiner.toString();
    }

    private static String formatULongList(List<Long> list) {
        StringJoiner joiner = new StringJoiner(",");
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            Long element = it.next();
            joiner.add(element == null ? "" : escape(Long.toUnsignedString(element.longValue())));
        }
        return joiner.toString();
    }

    private static <T extends Enum<T>> String formatEnumList(List<T> list, Function<T, String> elementFormatter) {
        StringJoiner joiner = new StringJoiner(",");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            T element = it.next();
            joiner.add(element == null ? "" : elementFormatter.apply(element));
        }
        return joiner.toString();
    }

    public enum snoop_default_mode_values {
        EMPTY("empty"),
        DISABLED("disabled"),
        FILTERED("filtered"),
        FULL(RcsContactPresenceTuple.ServiceCapabilities.DUPLEX_MODE_FULL),
        SNOOPHEADERSFILTERED("snoopheadersfiltered"),
        MEDIAPKTSFILTERED("mediapktsfiltered"),
        PROFILESFILTERED("profilesfiltered");

        private final String propValue;

        snoop_default_mode_values(String propValue) {
            this.propValue = propValue;
        }

        public String getPropValue() {
            return this.propValue;
        }
    }

    public static Optional<snoop_default_mode_values> snoop_default_mode() {
        String value = SystemProperties.get("persist.bluetooth.btsnoopdefaultmode");
        return Optional.ofNullable((snoop_default_mode_values) tryParseEnum(snoop_default_mode_values.class, value));
    }

    public static void snoop_default_mode(snoop_default_mode_values value) {
        SystemProperties.set("persist.bluetooth.btsnoopdefaultmode", value == null ? "" : value.getPropValue());
    }

    public enum snoop_log_mode_values {
        EMPTY("empty"),
        DISABLED("disabled"),
        FILTERED("filtered"),
        FULL(RcsContactPresenceTuple.ServiceCapabilities.DUPLEX_MODE_FULL),
        SNOOPHEADERSFILTERED("snoopheadersfiltered"),
        MEDIAPKTSFILTERED("mediapktsfiltered"),
        PROFILESFILTERED("profilesfiltered");

        private final String propValue;

        snoop_log_mode_values(String propValue) {
            this.propValue = propValue;
        }

        public String getPropValue() {
            return this.propValue;
        }
    }

    public static Optional<snoop_log_mode_values> snoop_log_mode() {
        String value = SystemProperties.get("persist.bluetooth.btsnooplogmode");
        return Optional.ofNullable((snoop_log_mode_values) tryParseEnum(snoop_log_mode_values.class, value));
    }

    public static void snoop_log_mode(snoop_log_mode_values value) {
        SystemProperties.set("persist.bluetooth.btsnooplogmode", value == null ? "" : value.getPropValue());
    }

    public static Optional<Boolean> factory_reset() {
        String value = SystemProperties.get("persist.bluetooth.factoryreset");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static void factory_reset(Boolean value) {
        SystemProperties.set("persist.bluetooth.factoryreset", value == null ? "" : value.toString());
    }

    public static Optional<Boolean> isGapLePrivacyEnabled() {
        String value = SystemProperties.get("bluetooth.core.gap.le.privacy.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<String> getDefaultDeviceName() {
        String value = SystemProperties.get("bluetooth.device.default_name");
        return Optional.ofNullable(tryParseString(value));
    }

    public static List<Integer> getClassOfDevice() {
        String value = SystemProperties.get("bluetooth.device.class_of_device");
        return tryParseList(new Function() { // from class: android.sysprop.BluetoothProperties$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return BluetoothProperties.tryParseUInt((String) obj);
            }
        }, value);
    }

    public static Optional<Integer> getHardwareOperatingVoltageMv() {
        String value = SystemProperties.get("bluetooth.hardware.power.operating_voltage_mv");
        return Optional.ofNullable(tryParseInteger(value));
    }

    public static Optional<Integer> getHardwareIdleCurrentMa() {
        String value = SystemProperties.get("bluetooth.hardware.power.idle_cur_ma");
        return Optional.ofNullable(tryParseInteger(value));
    }

    public static Optional<Integer> getHardwareTxCurrentMa() {
        String value = SystemProperties.get("bluetooth.hardware.power.tx_cur_ma");
        return Optional.ofNullable(tryParseInteger(value));
    }

    public static Optional<Integer> getHardwareRxCurrentMa() {
        String value = SystemProperties.get("bluetooth.hardware.power.rx_cur_ma");
        return Optional.ofNullable(tryParseInteger(value));
    }

    public static Optional<Boolean> isSupportPersistedStateEnabled() {
        String value = SystemProperties.get("bluetooth.framework.support_persisted_state");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isAdapterAddressValidationEnabled() {
        String value = SystemProperties.get("bluetooth.framework.adapter_address_validation");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileA2dpSinkEnabled() {
        String value = SystemProperties.get("bluetooth.profile.a2dp.sink.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileA2dpSourceEnabled() {
        String value = SystemProperties.get("bluetooth.profile.a2dp.source.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileAshaCentralEnabled() {
        String value = SystemProperties.get("bluetooth.profile.asha.central.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileAvrcpControllerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.avrcp.controller.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileAvrcpTargetEnabled() {
        String value = SystemProperties.get("bluetooth.profile.avrcp.target.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileBapBroadcastAssistEnabled() {
        String value = SystemProperties.get("bluetooth.profile.bap.broadcast.assist.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileBapBroadcastSourceEnabled() {
        String value = SystemProperties.get("bluetooth.profile.bap.broadcast.source.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileBapUnicastClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.bap.unicast.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileBasClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.bas.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileBassClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.bass.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileCsipSetCoordinatorEnabled() {
        String value = SystemProperties.get("bluetooth.profile.csip.set_coordinator.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileGattEnabled() {
        String value = SystemProperties.get("bluetooth.profile.gatt.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileHapClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.hap.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileHfpAgEnabled() {
        String value = SystemProperties.get("bluetooth.profile.hfp.ag.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileHfpHfEnabled() {
        String value = SystemProperties.get("bluetooth.profile.hfp.hf.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileHidDeviceEnabled() {
        String value = SystemProperties.get("bluetooth.profile.hid.device.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileHidHostEnabled() {
        String value = SystemProperties.get("bluetooth.profile.hid.host.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileMapClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.map.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileMapServerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.map.server.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileMcpServerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.mcp.server.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileOppEnabled() {
        String value = SystemProperties.get("bluetooth.profile.opp.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfilePanNapEnabled() {
        String value = SystemProperties.get("bluetooth.profile.pan.nap.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfilePanPanuEnabled() {
        String value = SystemProperties.get("bluetooth.profile.pan.panu.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfilePbapClientEnabled() {
        String value = SystemProperties.get("bluetooth.profile.pbap.client.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfilePbapServerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.pbap.server.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileSapServerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.sap.server.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileCcpServerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.ccp.server.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> isProfileVcpControllerEnabled() {
        String value = SystemProperties.get("bluetooth.profile.vcp.controller.enabled");
        return Optional.ofNullable(tryParseBoolean(value));
    }
}
