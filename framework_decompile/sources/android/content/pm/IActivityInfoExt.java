package android.content.pm;

import android.os.Parcel;
import android.util.Printer;

/* loaded from: classes.dex */
public interface IActivityInfoExt {
    default void setOplusFlags(int flags) {
    }

    default int getOplusFlags() {
        return 0;
    }

    default Object getActivityInfo() {
        return null;
    }

    default void copy(IActivityInfoExt other) {
    }

    default void readFromParcel(Parcel in) {
    }

    default void writeToParcel(Parcel dest) {
    }

    default void dumpFront(Printer pw, String prefix) {
    }

    default int getRealConfigChanged(String name, int changes) {
        return changes;
    }

    default void setOverrideMinAspectRatioForCompatMode(float minAspectRatio) {
    }

    default float getRawOverrideMinAspectRatioForCompatMode() {
        return -1.0f;
    }

    default float getOverrideMinAspectRatioForCompatMode() {
        return 0.0f;
    }

    default void disableOverrideMinAspectRatioForCompatMode(boolean disable) {
    }

    default boolean inOplusCompatMode() {
        return false;
    }
}
