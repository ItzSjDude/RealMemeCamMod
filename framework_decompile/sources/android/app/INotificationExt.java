package android.app;

/* loaded from: classes.dex */
public interface INotificationExt {
    default boolean isTotalCustom(Notification notification) {
        return false;
    }
}
