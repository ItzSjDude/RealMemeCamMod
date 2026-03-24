package android.app;

/* loaded from: classes.dex */
public interface IEmbeddedActivityExt {
    default boolean blockEmbeddingIfNeeded() {
        return false;
    }

    default boolean hasFeatureEmbedding() {
        return false;
    }

    default boolean hasFeatureLayout() {
        return false;
    }
}
