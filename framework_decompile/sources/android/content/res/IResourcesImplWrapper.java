package android.content.res;

import android.graphics.drawable.Drawable;
import android.util.LongSparseArray;

/* loaded from: classes.dex */
public interface IResourcesImplWrapper {
    default LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
        return null;
    }

    default LongSparseArray<Drawable.ConstantState> getPreloadedColorDrawables() {
        return null;
    }

    default LongSparseArray<ConstantState<ComplexColor>> getPreloadedComplexColors() {
        return null;
    }
}
