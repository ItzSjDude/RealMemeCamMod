package com.oplus.oms.split.splitload;

import android.content.Context;
import java.io.File;
import java.util.List;

abstract class SplitLoader {
    private final Context mContext;

    
    public SplitLoader(Context context) {
        this.mContext = context;
    }

    
    public SplitDexClassLoader loadCode(ClassLoader parent, String moduleNames, List<String> dexPaths, File optimizedDirectory, File librarySearchPath, List<String> dependencies) throws SplitLoadException {
        return null;
    }

    
    public void loadCode2(ClassLoader parent, List<String> dexPaths, File optimizedDirectory, File librarySearchPath) throws SplitLoadException {
    }

    
    public final void loadResources(String splitResDir) throws SplitLoadException {
        try {
            SplitCompatResourcesLoader.loadResources(this.mContext, this.mContext.getResources(), splitResDir);
        } catch (Throwable throwable) {
            throw new SplitLoadException(-21, throwable);
        }
    }
}
