package system.ext.loader.preload;

import android.media.MediaMetrics;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class PreloadExtImpl implements IPreloadExt {
    private final String mTag = getClass().getSimpleName();
    private final List<String> mClasses = new ArrayList();

    protected void register(String className) {
        if (className == null) {
            Log.w(this.mTag, "register className is null");
            return;
        }
        synchronized (this.mClasses) {
            this.mClasses.add(className);
        }
    }

    @Override // system.ext.loader.preload.IPreloadExt
    public void preload(ClassLoader classLoader) {
        synchronized (this.mClasses) {
            for (String className : this.mClasses) {
                try {
                    try {
                        Class.forName(className, true, classLoader);
                        Log.i(this.mTag, "Success preloading: " + className);
                    } catch (ClassNotFoundException e) {
                        Log.w(this.mTag, "Class not found for preloading: " + className);
                    }
                } catch (UnsatisfiedLinkError e2) {
                    Log.w(this.mTag, "Problem preloading " + className + ": " + e2);
                } catch (Throwable t) {
                    Log.e(this.mTag, "Error preloading " + className + MediaMetrics.SEPARATOR, t);
                    if (t instanceof Error) {
                        throw ((Error) t);
                    }
                    if (t instanceof RuntimeException) {
                        throw ((RuntimeException) t);
                    }
                    throw new RuntimeException(t);
                }
            }
        }
    }
}
