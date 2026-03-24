package android.telephony.data;

/* loaded from: classes3.dex */
public interface IApnSettingExt {
    default int oemGetApnTypesBitmaskFromString(String types, String operatorNumeric) {
        return 0;
    }

    default boolean oemMergeApnIgnoreProtocolType(ApnSetting firstApn, ApnSetting secondApn) {
        return false;
    }

    default boolean oemMergeApnIgnoreUserPasswordAuthType(ApnSetting firstApn, ApnSetting secondApn) {
        return false;
    }

    default boolean oemEqualsProfileId(int oldProfileId, int newProfileId) {
        return true;
    }
}
