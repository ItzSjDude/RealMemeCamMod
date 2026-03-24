package android.graphics.drawable;

/* loaded from: classes.dex */
public interface IAdaptiveIconDrawableWrapper {
    default IAdaptiveIconDrawableExt getAdaptiveIconDrawableExt() {
        return new IAdaptiveIconDrawableExt() { // from class: android.graphics.drawable.IAdaptiveIconDrawableWrapper.1
        };
    }
}
