package android.view.inspector;

/* loaded from: classes2.dex */
public class StaticInspectionCompanionProvider implements InspectionCompanionProvider {
    private static final String COMPANION_SUFFIX = "$InspectionCompanion";

    @Override // android.view.inspector.InspectionCompanionProvider
    public <T> InspectionCompanion<T> provide(Class<T> cls) throws ClassNotFoundException {
        String companionName = cls.getName() + COMPANION_SUFFIX;
        try {
            Class<?> clsLoadClass = cls.getClassLoader().loadClass(companionName);
            if (!InspectionCompanion.class.isAssignableFrom(clsLoadClass)) {
                return null;
            }
            return (InspectionCompanion) clsLoadClass.newInstance();
        } catch (ClassNotFoundException e) {
            return null;
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(cause);
        }
    }
}
