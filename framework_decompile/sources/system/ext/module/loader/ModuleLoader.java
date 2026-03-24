package system.ext.module.loader;

import com.oplus.module.loader.Module;
import system.ext.module.loader.ModuleCreator;

/* loaded from: classes5.dex */
public class ModuleLoader {
    private static final boolean DEFAULT_DEBUG_DUMMY = true;
    private static final boolean DEFAULT_DEBUG_CREATE = true;

    static {
        ModuleLogger.d(ModuleLogger.TAG, "DEFAULT_DEBUG_DUMMY=true, DEFAULT_DEBUG_CREATE=true");
    }

    protected ModuleLoader() {
    }

    public static <T> T dummy(Class<T> cls) {
        return (T) dummy(cls, false);
    }

    public static <T> T dummy(Class<T> cls, boolean z) {
        return (T) dummy(cls, z, ModuleLogger.TAG);
    }

    public static <T> T dummy(Class<T> cls, boolean z, String str) {
        return (T) ModuleDummy.create(cls, z, str);
    }

    public static <T> Builder<T> type(Class<T> moduleClass) {
        Builder<T> builder = new Builder<>();
        return builder.type(moduleClass);
    }

    public static class Builder<T> {
        protected Object mBase;
        protected ModuleCreator.DummyCreator<T> mDummyCreator;
        protected Class<T> mExtClass;
        protected String mJarName;
        protected Module mModule;
        protected String mModuleName;
        private ModuleRegistry mModuleRegistry;
        protected boolean mEnableDummy = true;
        protected boolean mDebugDummy = ModuleLoader.DEFAULT_DEBUG_DUMMY;
        protected boolean mDebugCreate = ModuleLoader.DEFAULT_DEBUG_CREATE;
        protected String mLogTag = ModuleLogger.TAG;

        protected Builder() {
        }

        public Builder<T> module(Module module) {
            this.mModule = module;
            return this;
        }

        public Builder<T> moduleName(String moduleName) {
            this.mModuleName = moduleName;
            return this;
        }

        public Builder<T> jarName(String jarName) {
            this.mJarName = jarName;
            return this;
        }

        public Builder<T> type(Class<T> extClass) {
            this.mExtClass = extClass;
            return this;
        }

        public Builder<T> base(Object base) {
            this.mBase = base;
            return this;
        }

        public Builder<T> enableDebug(boolean value, ModuleDebug type) {
            if (type == ModuleDebug.CREATE) {
                this.mDebugCreate = value;
            } else if (type == ModuleDebug.DUMMY) {
                this.mDebugDummy = value;
            }
            return this;
        }

        public Builder<T> enableDummy(boolean value) {
            this.mEnableDummy = value;
            return this;
        }

        public Builder<T> registerDummy(ModuleCreator.DummyCreator<T> creator) {
            this.mDummyCreator = creator;
            return this;
        }

        public T create() {
            if (getRegistry() != null) {
                return create(this.mModuleRegistry);
            }
            throw new NullPointerException("mModuleRegistry is null,please check");
        }

        private ModuleRegistry getRegistry() {
            ModuleRegistry moduleRegistry = this.mModuleRegistry;
            if (moduleRegistry != null) {
                return moduleRegistry;
            }
            if (this.mModule != null) {
                ModuleRegistry registry = ModuleManager.getInstance().getRegistry(this.mModule);
                this.mModuleRegistry = registry;
                return registry;
            }
            if (this.mModuleName != null && this.mJarName != null) {
                ModuleRegistry registry2 = ModuleManager.getInstance().getRegistry(this.mModuleName, this.mJarName);
                this.mModuleRegistry = registry2;
                if (registry2 == null) {
                    this.mModuleRegistry = ModuleManager.getInstance().getDefaultRegistry();
                }
                return this.mModuleRegistry;
            }
            ModuleRegistry defaultRegistry = ModuleManager.getInstance().getDefaultRegistry();
            this.mModuleRegistry = defaultRegistry;
            return defaultRegistry;
        }

        private T create(ModuleRegistry moduleRegistry) {
            ModuleCreator<T> ext = moduleRegistry.getExt(this.mExtClass.getName());
            if (ext != null) {
                log(this.mDebugCreate, this.mExtClass, "createExt");
                return ext.create(this.mBase);
            }
            if (moduleRegistry.size() == 0) {
                moduleRegistry.initialize();
                if (moduleRegistry.size() > 0) {
                    return create(moduleRegistry);
                }
            }
            if (this.mEnableDummy) {
                log(this.mDebugDummy, this.mExtClass, "createDummy");
                ModuleCreator.DummyCreator<T> dummyCreator = this.mDummyCreator;
                if (dummyCreator != null) {
                    return dummyCreator.create();
                }
                return (T) ModuleDummy.create(this.mExtClass, this.mDebugDummy, this.mLogTag);
            }
            log(true, this.mExtClass, "createNull");
            return null;
        }

        private void log(boolean debug, Class<T> moduleClass, String msg) {
            if (debug) {
                ModuleLogger.d(this.mLogTag, msg + " : " + moduleClass);
            }
        }
    }
}
