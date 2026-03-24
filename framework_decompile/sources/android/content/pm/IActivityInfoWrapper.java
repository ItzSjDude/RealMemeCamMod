package android.content.pm;

/* loaded from: classes.dex */
public interface IActivityInfoWrapper {
    default IActivityInfoExt getExtImpl() {
        return new IActivityInfoExt() { // from class: android.content.pm.IActivityInfoWrapper.1
        };
    }
}
