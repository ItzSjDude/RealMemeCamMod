package android.telephony;

/* loaded from: classes3.dex */
public interface ISignalStrengthWrapper {
    default int getOemLevel0() {
        return 0;
    }

    default int getOemLevel1() {
        return 0;
    }

    default void setOemLevel(int oemLevel0, int oemLevel1) {
    }

    default void setFake(boolean isFake) {
    }

    default boolean isFake() {
        return false;
    }

    default void copyFrom(SignalStrength s) {
    }

    default int getLteRsrp() {
        return 0;
    }

    default int getLteRssnr() {
        return 0;
    }

    default int getNrRsrp() {
        return 0;
    }

    default int getNrSinr() {
        return 0;
    }
}
