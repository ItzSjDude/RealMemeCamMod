package android.widget;

/* loaded from: classes4.dex */
public interface IOverScrollerWrapper {
    default IOplusOverScrollerExt getExtImpl() {
        return new IOplusOverScrollerExt() { // from class: android.widget.IOverScrollerWrapper.1
        };
    }

    default int getMode() {
        return 0;
    }
}
