package android.view.inspector;

/* loaded from: classes2.dex */
public interface InspectionCompanionProvider {
    <T> InspectionCompanion<T> provide(Class<T> cls);
}
