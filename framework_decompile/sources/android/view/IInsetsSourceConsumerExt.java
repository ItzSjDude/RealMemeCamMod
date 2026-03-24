package android.view;

import android.view.SurfaceControl;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public interface IInsetsSourceConsumerExt {
    default void updateLeashPositionIfNeeded(InsetsSourceControl control, InsetsSourceControl lastControl, boolean needAnimation, boolean isAnimationPending, Supplier<SurfaceControl.Transaction> transactionSupplier) {
    }
}
