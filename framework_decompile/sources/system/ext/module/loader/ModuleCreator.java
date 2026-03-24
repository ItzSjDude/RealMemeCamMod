package system.ext.module.loader;

/* loaded from: classes5.dex */
public interface ModuleCreator<T> {

    public interface DummyCreator<T> {
        T create();
    }

    T create(Object obj);
}
