package android.app;

/* loaded from: classes.dex */
public interface INotificationChannelWrapper {
    default INotificationChannelExt getExtImpl() {
        return new INotificationChannelExt() { // from class: android.app.INotificationChannelWrapper.1
        };
    }
}
