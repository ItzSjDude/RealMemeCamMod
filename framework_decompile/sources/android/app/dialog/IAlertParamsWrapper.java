package android.app.dialog;

/* loaded from: classes.dex */
public interface IAlertParamsWrapper {
    default IAlertParamsExt getAlertParamsExt() {
        return new IAlertParamsExt() { // from class: android.app.dialog.IAlertParamsWrapper.1
        };
    }
}
