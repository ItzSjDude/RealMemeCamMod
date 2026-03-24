package android.bluetooth;

/* loaded from: classes.dex */
public interface IBluetoothAdapterExt {
    default boolean hookEnable(String permission, int pid, int uid) {
        return false;
    }

    default boolean hookDisable(String permission, int pid, int uid) {
        return false;
    }

    default void setSpeakerphoneOn(boolean on, int callingPid, String callingPackage) {
    }

    default boolean isBluetoothScoAvailableOffCall() {
        return true;
    }

    default void startBluetoothSco(int callingPid, String callingPackage) {
    }

    default void stopBluetoothSco(int callingPid, String callingPackage) {
    }

    default void setMode(int mode, int callingPid, String callingPackage) {
    }

    default boolean oplusSetBTCTddMode(int tddMode) {
        return false;
    }
}
