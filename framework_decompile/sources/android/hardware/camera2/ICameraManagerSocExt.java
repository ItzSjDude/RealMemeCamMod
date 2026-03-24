package android.hardware.camera2;

/* loaded from: classes.dex */
public interface ICameraManagerSocExt {
    default boolean needExposeAuxCamera() {
        return true;
    }
}
