package android.app;

/* loaded from: classes.dex */
public interface ISystemServiceRegistryExt {

    public interface IStaticExt {
        default int checkAppPackageName(int state) {
            return state;
        }

        default void registerService() {
        }
    }
}
