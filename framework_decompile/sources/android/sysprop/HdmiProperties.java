package android.sysprop;

import android.os.SystemProperties;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class HdmiProperties {
    private HdmiProperties() {
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
        throw new UnsupportedOperationException("Method not decompiled: android.sysprop.HdmiProperties.tryParseBoolean(java.lang.String):java.lang.Boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Integer tryParseInteger(String str) {
        try {
            return Integer.valueOf(str);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Integer tryParseUInt(String str) {
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

    @Deprecated
    public static List<Integer> device_type() {
        String value = SystemProperties.get("ro.hdmi.device_type");
        return tryParseList(new Function() { // from class: android.sysprop.HdmiProperties$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return HdmiProperties.tryParseInteger((String) obj);
            }
        }, value);
    }

    public enum cec_device_types_values {
        TV("tv"),
        RECORDING_DEVICE("recording_device"),
        RESERVED("reserved"),
        TUNER("tuner"),
        PLAYBACK_DEVICE("playback_device"),
        AUDIO_SYSTEM("audio_system"),
        PURE_CEC_SWITCH("pure_cec_switch"),
        VIDEO_PROCESSOR("video_processor");

        private final String propValue;

        cec_device_types_values(String propValue) {
            this.propValue = propValue;
        }

        public String getPropValue() {
            return this.propValue;
        }
    }

    public static List<cec_device_types_values> cec_device_types() {
        String value = SystemProperties.get("ro.hdmi.cec_device_types");
        return tryParseEnumList(cec_device_types_values.class, value);
    }

    public static Optional<String> arc_port() {
        String value = SystemProperties.get("ro.hdmi.property_sytem_audio_device_arc_port");
        return Optional.ofNullable(tryParseString(value));
    }

    public static Optional<Boolean> forward_volume_keys_when_system_audio_mode_off() {
        String value = SystemProperties.get("ro.hdmi.cec_audio_device_forward_volume_keys_system_audio_mode_off");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public static Optional<Boolean> is_switch() {
        String value = SystemProperties.get("ro.hdmi.property_is_device_hdmi_cec_switch");
        return Optional.ofNullable(tryParseBoolean(value));
    }

    public enum playback_device_action_on_routing_control_values {
        NONE("none"),
        WAKE_UP_ONLY("wake_up_only"),
        WAKE_UP_AND_SEND_ACTIVE_SOURCE("wake_up_and_send_active_source");

        private final String propValue;

        playback_device_action_on_routing_control_values(String propValue) {
            this.propValue = propValue;
        }

        public String getPropValue() {
            return this.propValue;
        }
    }

    public static Optional<playback_device_action_on_routing_control_values> playback_device_action_on_routing_control() {
        String value = SystemProperties.get("ro.hdmi.cec.source.playback_device_action_on_routing_control");
        return Optional.ofNullable((playback_device_action_on_routing_control_values) tryParseEnum(playback_device_action_on_routing_control_values.class, value));
    }
}
