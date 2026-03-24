package system.ext.module.loader;

import android.media.MediaMetrics;
import android.os.Build;
import android.util.Log;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.os.ClassLoaderFactory;
import com.oplus.module.loader.Module;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import system.ext.module.loader.utils.Valid;

/* loaded from: classes5.dex */
public class ModuleRegistry {
    private static final String TAG = "ModuleRegistry";
    private final ClassLoader mClassLoader;
    private final Map<String, ModuleCreator<?>> mCreators;
    private final String mDexPath;
    private boolean mInitialized;
    private final List<String> mRegistryNames;

    private ModuleRegistry(String dexPath, String libPath, ClassLoader parent) {
        ClassLoader parentClassLoader;
        this.mRegistryNames = new ArrayList();
        this.mCreators = new ConcurrentHashMap();
        this.mInitialized = false;
        this.mDexPath = dexPath;
        Log.d(TAG, "dexPath = " + dexPath);
        if (parent == null) {
            parentClassLoader = getClass().getClassLoader();
        } else {
            parentClassLoader = parent;
        }
        if (dexPath != null && parentClassLoader != null) {
            this.mClassLoader = ClassLoaderFactory.createClassLoader(dexPath, libPath, libPath, parent, 10000, true, null);
        } else {
            this.mClassLoader = parentClassLoader;
            Log.d(TAG, "dexPath is null.");
        }
    }

    public void initialize() {
        if (this.mInitialized) {
            return;
        }
        if (Valid.isEmpty((Collection) this.mRegistryNames)) {
            ModuleLogger.w(ModuleLogger.TAG, "Class is null for preloading");
        } else {
            this.mRegistryNames.forEach(new Consumer() { // from class: system.ext.module.loader.ModuleRegistry$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.m7401lambda$initialize$0$systemextmoduleloaderModuleRegistry((String) obj);
                }
            });
            this.mInitialized = true;
        }
    }

    /* renamed from: lambda$initialize$0$system-ext-module-loader-ModuleRegistry, reason: not valid java name */
    /* synthetic */ void m7401lambda$initialize$0$systemextmoduleloaderModuleRegistry(String t) {
        try {
            Class.forName(t, true, this.mClassLoader);
        } catch (ClassNotFoundException e) {
            ModuleLogger.w(ModuleLogger.TAG, "Class not found for preloading: " + t);
        } catch (UnsatisfiedLinkError e2) {
            ModuleLogger.w(ModuleLogger.TAG, "Problem preloading " + t + ": " + e2);
        } catch (Throwable e3) {
            ModuleLogger.e(ModuleLogger.TAG, "Error preloading " + t + MediaMetrics.SEPARATOR, e3);
            if (e3 instanceof Error) {
                throw ((Error) e3);
            }
            throw new RuntimeException(e3);
        }
    }

    public <T> void registerExt(String extName, ModuleCreator<T> extCreator) {
        Objects.requireNonNull(extName, "Module Ext class should not be null");
        Objects.requireNonNull(extCreator, "Module Ext creator should not be null");
        this.mCreators.put(extName, extCreator);
    }

    public <T> void registerExt(Class<T> extClass, ModuleCreator<T> extCreator) {
        Objects.requireNonNull(extClass, "extClass should not be null");
        registerExt(extClass.getName(), extCreator);
    }

    public <T> ModuleCreator<T> getExt(String extName) {
        Objects.requireNonNull(extName, "Module Ext class should not be null");
        return (ModuleCreator) this.mCreators.get(extName);
    }

    public int size() {
        return this.mCreators.size();
    }

    public static class Builder {
        private static final boolean ABI_64;
        private static final String COMMON_LIB_PATH = "/system_ext/%s/oplusex/";
        private static final String COMMON_PATH = "/system_ext/framework/oplusex/";
        private static final String JAR_SUFFIX = ".jar";
        private static final String MODULE_PREFIX = "com.oplus.";
        private String mJarName;
        private Module mModule;
        private String mModuleName;
        private ClassLoader mParent;
        private List<String> mRegistryNames;

        static {
            ABI_64 = Build.SUPPORTED_64_BIT_ABIS.length > 0;
        }

        public Builder moduleName(String moduleName) {
            this.mModuleName = moduleName;
            return this;
        }

        public Builder jarName(String jarName) {
            this.mJarName = jarName;
            return this;
        }

        public Builder registryNames(String... registryNames) {
            if (this.mRegistryNames == null) {
                this.mRegistryNames = new ArrayList();
            }
            for (String registryName : registryNames) {
                this.mRegistryNames.add(registryName);
            }
            return this;
        }

        public Builder module(Module module) {
            this.mModule = module;
            return this;
        }

        public Builder classloader(ClassLoader classLoader) {
            this.mParent = classLoader;
            return this;
        }

        public ModuleRegistry create() {
            Module module = this.mModule;
            if (module != null) {
                String dexPath = getJarPath(module.mModuleName, this.mModule.mJarName);
                String libPath = getLibPath(this.mModule.mModuleName);
                final ModuleRegistry registry = new ModuleRegistry(dexPath, libPath, this.mParent);
                List<String> registryNames = this.mModule.mRegistrys;
                if (!Valid.isEmpty((Collection) registryNames)) {
                    registryNames.forEach(new Consumer() { // from class: system.ext.module.loader.ModuleRegistry$Builder$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            registry.mRegistryNames.add((String) obj);
                        }
                    });
                }
                return registry;
            }
            String dexPath2 = this.mModuleName;
            if (!Valid.isEmpty(dexPath2) && !Valid.isEmpty(this.mJarName) && !Valid.isEmpty((Collection) this.mRegistryNames)) {
                String dexPath3 = getJarPath(this.mModuleName, this.mJarName);
                String libPath2 = getLibPath(this.mModuleName);
                final ModuleRegistry registry2 = new ModuleRegistry(dexPath3, libPath2, this.mParent);
                this.mRegistryNames.forEach(new Consumer() { // from class: system.ext.module.loader.ModuleRegistry$Builder$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        registry2.mRegistryNames.add((String) obj);
                    }
                });
                return registry2;
            }
            ModuleLogger.e(ModuleRegistry.TAG, "create fail,return default registry");
            final ModuleRegistry registry3 = ModuleManager.getInstance().getDefaultRegistry();
            if (!Valid.isEmpty((Collection) this.mRegistryNames)) {
                this.mRegistryNames.forEach(new Consumer() { // from class: system.ext.module.loader.ModuleRegistry$Builder$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        registry3.mRegistryNames.add((String) obj);
                    }
                });
            }
            return registry3;
        }

        private String getJarPath(String moduleName, String jarName) {
            String realModuleName = getRealModuleName(moduleName);
            if (!jarName.endsWith(JAR_SUFFIX)) {
                String jarPath = COMMON_PATH + realModuleName + "/" + jarName + JAR_SUFFIX;
                return jarPath;
            }
            String jarPath2 = COMMON_PATH + realModuleName + "/" + jarName;
            return jarPath2;
        }

        private String getLibPath(String moduleName) {
            String realModuleName = getRealModuleName(moduleName);
            return getCommonLibPath() + realModuleName;
        }

        private String getRealModuleName(String moduleName) {
            if (!moduleName.startsWith(MODULE_PREFIX)) {
                return MODULE_PREFIX + moduleName;
            }
            return moduleName;
        }

        private static String getCommonLibPath() {
            return ABI_64 ? String.format(COMMON_LIB_PATH, NativeLibraryHelper.LIB64_DIR_NAME) : String.format(COMMON_LIB_PATH, NativeLibraryHelper.LIB_DIR_NAME);
        }
    }
}
