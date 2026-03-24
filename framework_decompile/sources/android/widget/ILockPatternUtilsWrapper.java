package android.widget;

import com.android.internal.widget.ILockPatternUtilsExt;

/* loaded from: classes4.dex */
public interface ILockPatternUtilsWrapper {
    default ILockPatternUtilsExt getLockPatternUtilsExt() {
        return null;
    }

    default boolean getDebug() {
        return false;
    }

    default String getTag() {
        return null;
    }

    default boolean getBoolean(String secureSettingKey, boolean defaultValue, int userId) {
        return false;
    }

    default void setBoolean(String secureSettingKey, boolean enabled, int userId) {
    }

    default long getLong(String secureSettingKey, long defaultValue, int userHandle) {
        return 0L;
    }

    default void setLong(String secureSettingKey, long value, int userHandle) {
    }
}
