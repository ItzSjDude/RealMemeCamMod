package com.oplus.oms.split.splitload;

import android.content.Context;
import java.io.File;
import java.util.List;

final class SplitMultipleModeLoaderImpl extends SplitLoader {
    
    public SplitMultipleModeLoaderImpl(Context context) {
        super(context);
    }

    
    @Override // com.oplus.oms.split.splitload.SplitLoader
    public SplitDexClassLoader loadCode(ClassLoader parent, String moduleNames, List<String> dexPaths, File optimizedDirectory, File librarySearchPath, List<String> dependencies) throws SplitLoadException {
        try {
            return SplitDexClassLoader.create(parent, moduleNames, dexPaths, optimizedDirectory, librarySearchPath, dependencies);
        } catch (Throwable e) {
            throw new SplitLoadException(-27, e);
        }
    }
}
