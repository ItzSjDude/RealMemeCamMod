package android.graphics;

/* loaded from: classes.dex */
public interface IPathWrapper {
    default IPathExt getPathExt() {
        return new IPathExt() { // from class: android.graphics.IPathWrapper.1
        };
    }
}
