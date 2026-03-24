package android.app.timezonedetector;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ShellCommand;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.text.format.DateFormat;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class TelephonyTimeZoneSuggestion implements Parcelable {
    public static final Parcelable.Creator<TelephonyTimeZoneSuggestion> CREATOR = new Parcelable.Creator<TelephonyTimeZoneSuggestion>() { // from class: android.app.timezonedetector.TelephonyTimeZoneSuggestion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TelephonyTimeZoneSuggestion createFromParcel(Parcel in) {
            return TelephonyTimeZoneSuggestion.createFromParcel(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TelephonyTimeZoneSuggestion[] newArray(int size) {
            return new TelephonyTimeZoneSuggestion[size];
        }
    };
    public static final int MATCH_TYPE_EMULATOR_ZONE_ID = 4;
    public static final int MATCH_TYPE_NA = 0;
    public static final int MATCH_TYPE_NETWORK_COUNTRY_AND_OFFSET = 3;
    public static final int MATCH_TYPE_NETWORK_COUNTRY_ONLY = 2;
    public static final int MATCH_TYPE_TEST_NETWORK_OFFSET_ONLY = 5;
    public static final int QUALITY_MULTIPLE_ZONES_WITH_DIFFERENT_OFFSETS = 3;
    public static final int QUALITY_MULTIPLE_ZONES_WITH_SAME_OFFSET = 2;
    public static final int QUALITY_NA = 0;
    public static final int QUALITY_SINGLE_ZONE = 1;
    private List<String> mDebugInfo;
    private final int mMatchType;
    private final int mQuality;
    private final int mSlotIndex;
    private final String mZoneId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MatchType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Quality {
    }

    public static TelephonyTimeZoneSuggestion createEmptySuggestion(int slotIndex, String debugInfo) {
        return new Builder(slotIndex).addDebugInfo(debugInfo).build();
    }

    private TelephonyTimeZoneSuggestion(Builder builder) {
        this.mSlotIndex = builder.mSlotIndex;
        this.mZoneId = builder.mZoneId;
        this.mMatchType = builder.mMatchType;
        this.mQuality = builder.mQuality;
        this.mDebugInfo = builder.mDebugInfo != null ? new ArrayList(builder.mDebugInfo) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TelephonyTimeZoneSuggestion createFromParcel(Parcel in) {
        int slotIndex = in.readInt();
        TelephonyTimeZoneSuggestion suggestion = new Builder(slotIndex).setZoneId(in.readString()).setMatchType(in.readInt()).setQuality(in.readInt()).build();
        List<String> debugInfo = in.readArrayList(TelephonyTimeZoneSuggestion.class.getClassLoader(), String.class);
        if (debugInfo != null) {
            suggestion.addDebugInfo(debugInfo);
        }
        return suggestion;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mSlotIndex);
        dest.writeString(this.mZoneId);
        dest.writeInt(this.mMatchType);
        dest.writeInt(this.mQuality);
        dest.writeList(this.mDebugInfo);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSlotIndex() {
        return this.mSlotIndex;
    }

    public String getZoneId() {
        return this.mZoneId;
    }

    public int getMatchType() {
        return this.mMatchType;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public List<String> getDebugInfo() {
        List<String> list = this.mDebugInfo;
        return list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }

    public void addDebugInfo(String debugInfo) {
        if (this.mDebugInfo == null) {
            this.mDebugInfo = new ArrayList();
        }
        this.mDebugInfo.add(debugInfo);
    }

    public void addDebugInfo(List<String> debugInfo) {
        if (this.mDebugInfo == null) {
            this.mDebugInfo = new ArrayList(debugInfo.size());
        }
        this.mDebugInfo.addAll(debugInfo);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        TelephonyTimeZoneSuggestion that = (TelephonyTimeZoneSuggestion) o;
        if (this.mSlotIndex == that.mSlotIndex && this.mMatchType == that.mMatchType && this.mQuality == that.mQuality && Objects.equals(this.mZoneId, that.mZoneId)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSlotIndex), this.mZoneId, Integer.valueOf(this.mMatchType), Integer.valueOf(this.mQuality));
    }

    public String toString() {
        return "TelephonyTimeZoneSuggestion{mSlotIndex=" + this.mSlotIndex + ", mZoneId='" + this.mZoneId + DateFormat.QUOTE + ", mMatchType=" + this.mMatchType + ", mQuality=" + this.mQuality + ", mDebugInfo=" + this.mDebugInfo + '}';
    }

    public static final class Builder {
        private List<String> mDebugInfo;
        private int mMatchType;
        private int mQuality;
        private final int mSlotIndex;
        private String mZoneId;

        public Builder(int slotIndex) {
            this.mSlotIndex = slotIndex;
        }

        public Builder setZoneId(String zoneId) {
            this.mZoneId = zoneId;
            return this;
        }

        public Builder setMatchType(int matchType) {
            this.mMatchType = matchType;
            return this;
        }

        public Builder setQuality(int quality) {
            this.mQuality = quality;
            return this;
        }

        public Builder addDebugInfo(String debugInfo) {
            if (this.mDebugInfo == null) {
                this.mDebugInfo = new ArrayList();
            }
            this.mDebugInfo.add(debugInfo);
            return this;
        }

        void validate() {
            int quality = this.mQuality;
            int matchType = this.mMatchType;
            if (this.mZoneId == null) {
                if (quality != 0 || matchType != 0) {
                    throw new RuntimeException("Invalid quality or match type for null zone ID. quality=" + quality + ", matchType=" + matchType);
                }
            } else {
                boolean qualityValid = quality == 1 || quality == 2 || quality == 3;
                boolean matchTypeValid = matchType == 2 || matchType == 3 || matchType == 4 || matchType == 5;
                if (!qualityValid || !matchTypeValid) {
                    throw new RuntimeException("Invalid quality or match type with zone ID. quality=" + quality + ", matchType=" + matchType);
                }
            }
        }

        public TelephonyTimeZoneSuggestion build() {
            validate();
            return new TelephonyTimeZoneSuggestion(this);
        }
    }

    public static TelephonyTimeZoneSuggestion parseCommandLineArg(ShellCommand cmd) throws IllegalArgumentException {
        Integer slotIndex = null;
        String zoneId = null;
        Integer quality = null;
        Integer matchType = null;
        while (true) {
            String opt = cmd.getNextArg();
            if (opt != null) {
                switch (opt) {
                    case "--slot_index":
                        slotIndex = Integer.valueOf(Integer.parseInt(cmd.getNextArgRequired()));
                        break;
                    case "--zone_id":
                        zoneId = cmd.getNextArgRequired();
                        break;
                    case "--quality":
                        quality = Integer.valueOf(parseQualityCommandLineArg(cmd.getNextArgRequired()));
                        break;
                    case "--match_type":
                        matchType = Integer.valueOf(parseMatchTypeCommandLineArg(cmd.getNextArgRequired()));
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown option: " + opt);
                }
            } else {
                if (slotIndex == null) {
                    throw new IllegalArgumentException("No slotIndex specified.");
                }
                Builder builder = new Builder(slotIndex.intValue());
                if (!TextUtils.isEmpty(zoneId) && !Session.SESSION_SEPARATION_CHAR_CHILD.equals(zoneId)) {
                    builder.setZoneId(zoneId);
                }
                if (quality != null) {
                    builder.setQuality(quality.intValue());
                }
                if (matchType != null) {
                    builder.setMatchType(matchType.intValue());
                }
                builder.addDebugInfo("Command line injection");
                return builder.build();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int parseQualityCommandLineArg(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 2
            r2 = 1
            switch(r0) {
                case -902265784: goto L20;
                case -650306251: goto L15;
                case 1611832522: goto La;
                default: goto L9;
            }
        L9:
            goto L2b
        La:
            java.lang.String r0 = "multiple_different"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r1
            goto L2c
        L15:
            java.lang.String r0 = "multiple_same"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r2
            goto L2c
        L20:
            java.lang.String r0 = "single"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 0
            goto L2c
        L2b:
            r0 = -1
        L2c:
            switch(r0) {
                case 0: goto L4b;
                case 1: goto L4a;
                case 2: goto L48;
                default: goto L2f;
            }
        L2f:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unrecognized quality: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L48:
            r0 = 3
            return r0
        L4a:
            return r1
        L4b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.timezonedetector.TelephonyTimeZoneSuggestion.parseQualityCommandLineArg(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int parseMatchTypeCommandLineArg(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 2
            r2 = 3
            switch(r0) {
                case -1592694013: goto L29;
                case 556438401: goto L1e;
                case 957831062: goto L14;
                case 1336193813: goto La;
                default: goto L9;
            }
        L9:
            goto L33
        La:
            java.lang.String r0 = "emulator"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 0
            goto L34
        L14:
            java.lang.String r0 = "country"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r1
            goto L34
        L1e:
            java.lang.String r0 = "test_network"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r2
            goto L34
        L29:
            java.lang.String r0 = "country_with_offset"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 1
            goto L34
        L33:
            r0 = -1
        L34:
            switch(r0) {
                case 0: goto L54;
                case 1: goto L53;
                case 2: goto L52;
                case 3: goto L50;
                default: goto L37;
            }
        L37:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unrecognized match_type: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L50:
            r0 = 5
            return r0
        L52:
            return r1
        L53:
            return r2
        L54:
            r0 = 4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.timezonedetector.TelephonyTimeZoneSuggestion.parseMatchTypeCommandLineArg(java.lang.String):int");
    }

    public static void printCommandLineOpts(PrintWriter pw) {
        pw.println("Telephony suggestion options:");
        pw.println("  --slot_index <number>");
        pw.println("  To withdraw a previous suggestion:");
        pw.println("    [--zone_id \"_\"]");
        pw.println("  To make a new suggestion:");
        pw.println("    --zone_id <Olson ID>");
        pw.println("    --quality <single|multiple_same|multiple_different>");
        pw.println("    --match_type <emulator|country_with_offset|country|test_network>");
        pw.println();
        pw.println("See " + TelephonyTimeZoneSuggestion.class.getName() + " for more information");
    }
}
