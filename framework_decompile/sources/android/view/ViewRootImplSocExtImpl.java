package android.view;

import android.content.Context;
import android.graphics.BLASTBufferQueue;
import android.util.BoostFramework;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class ViewRootImplSocExtImpl implements IViewRootImplSocExt {
    private boolean mHaveMoveEvent = false;
    private ViewRootImpl mViewRootImpl;

    public ViewRootImplSocExtImpl(Object obj) {
        this.mViewRootImpl = null;
        this.mViewRootImpl = (ViewRootImpl) obj;
    }

    @Override // android.view.IViewRootImplSocExt
    public void setBLASTBufferQueue(BLASTBufferQueue bLASTBufferQueue) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        BoostFramework.ScrollOptimizer.setBLASTBufferQueue(bLASTBufferQueue);
    }

    @Override // android.view.IViewRootImplSocExt
    public void setHaveMoveEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == 2) {
            this.mHaveMoveEvent = true;
        } else if (action == 1) {
            this.mHaveMoveEvent = false;
        }
    }

    @Override // android.view.IViewRootImplSocExt
    public void hookScrollPerfHint(Context context) {
    }

    @Override // android.view.IViewRootImplSocExt
    public void hookMotionEventPerfHint(MotionEvent event, Context context) {
    }

    @Override // android.view.IViewRootImplSocExt
    public void scaleMotionEvent(InputEvent inputEvent) {
    }

    @Override // android.view.IViewRootImplSocExt
    public void setSurfaceCreated(boolean created) {
    }

    @Override // android.view.IViewRootImplSocExt
    public void hookFinishDrawingPerfHint() {
    }

    @Override // android.view.IViewRootImplSocExt
    public void hookOnFrameDrawPerfHint() {
    }
}
