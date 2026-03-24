package android.os;

/* loaded from: classes3.dex */
public interface IUserManagerExt {
    default boolean isMultiAppUserId(int userId) {
        return false;
    }
}
