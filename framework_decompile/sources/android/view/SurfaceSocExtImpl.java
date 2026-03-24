package android.view;

/* loaded from: classes3.dex */
public class SurfaceSocExtImpl implements ISurfaceSocExt {
    private Surface mSurface;

    public SurfaceSocExtImpl(Object obj) {
        this.mSurface = null;
        this.mSurface = (Surface) obj;
    }

    @Override // android.view.ISurfaceSocExt
    public boolean hookLockCanvas() {
        return false;
    }
}
