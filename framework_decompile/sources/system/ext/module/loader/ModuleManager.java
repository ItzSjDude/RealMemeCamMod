package system.ext.module.loader;

import com.oplus.module.loader.Module;
import java.util.HashMap;
import java.util.Map;
import system.ext.module.loader.ModuleRegistry;
import system.ext.module.loader.utils.Valid;

/* loaded from: classes5.dex */
public class ModuleManager {
    private static final Map<String, ModuleRegistry> sModuleMap = new HashMap();

    private ModuleManager() {
    }

    public ModuleRegistry getRegistry(Module module) {
        String moduleKey = module.mModuleName + module.mJarName;
        Map<String, ModuleRegistry> map = sModuleMap;
        if (map.containsKey(moduleKey)) {
            return map.get(moduleKey);
        }
        ModuleRegistry registry = new ModuleRegistry.Builder().module(module).create();
        map.put(moduleKey, registry);
        return registry;
    }

    public ModuleRegistry getRegistry(String moduleName, String jarName) {
        String moduleKey = moduleName + jarName;
        Map<String, ModuleRegistry> map = sModuleMap;
        if (map.containsKey(moduleKey)) {
            return map.get(moduleKey);
        }
        ModuleRegistry registry = new ModuleRegistry.Builder().moduleName(moduleName).jarName(jarName).create();
        map.put(moduleKey, registry);
        return registry;
    }

    public ModuleRegistry getDefaultRegistry() {
        String moduleKey = "defaultdefault";
        Map<String, ModuleRegistry> map = sModuleMap;
        if (map.containsKey(moduleKey)) {
            return map.get(moduleKey);
        }
        ModuleRegistry registry = new ModuleRegistry.Builder().moduleName("default").jarName("default").registryNames("default").create();
        map.put(moduleKey, registry);
        return registry;
    }

    public ModuleRegistry register(String moduleName, String jarName, ClassLoader classLoader, String... registries) {
        String moduleKey = moduleName + jarName;
        Map<String, ModuleRegistry> map = sModuleMap;
        if (!Valid.isEmpty(map) && map.containsKey(moduleKey)) {
            return map.get(moduleKey);
        }
        ModuleRegistry.Builder builder = new ModuleRegistry.Builder();
        ModuleRegistry registry = builder.moduleName(moduleName).jarName(jarName).classloader(classLoader).registryNames(registries).create();
        map.put(moduleKey, registry);
        return registry;
    }

    private static class Singleton {
        private static final ModuleManager INSTANCE = new ModuleManager();

        private Singleton() {
        }
    }

    public static ModuleManager getInstance() {
        return Singleton.INSTANCE;
    }
}
