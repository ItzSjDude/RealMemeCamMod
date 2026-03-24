package android.view;

/* loaded from: classes3.dex */
public class ViewSocExtImpl implements IViewSocExt {
    private View mView;

    public ViewSocExtImpl(Object obj) {
        this.mView = null;
        this.mView = (View) obj;
    }

    @Override // android.view.IViewSocExt
    public void hookCheckAudioMsgView() {
    }

    @Override // android.view.IViewSocExt
    public void hookPerfHint(int visibility) {
    }
}
