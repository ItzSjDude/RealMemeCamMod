package android.widget;

/* loaded from: classes4.dex */
public interface IScrollViewWrapper {
    default IOplusScrollViewExt getExtImpl() {
        return new IOplusScrollViewExt() { // from class: android.widget.IScrollViewWrapper.1
        };
    }

    default OverScroller getOverScroller() {
        return null;
    }
}
