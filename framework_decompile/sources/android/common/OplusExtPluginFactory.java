package android.common;

import android.common.OplusFeatureList;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefConstructor;

/* loaded from: classes.dex */
public class OplusExtPluginFactory implements IOplusCommonFactory {
    public static RefConstructor<OplusExtPluginFactory> constructor;
    private static volatile OplusExtPluginFactory sInstance = null;
    public static Class<?> TYPE = RefClass.load((Class<?>) OplusExtPluginFactory.class, "oplus.android.OplusExtPluginFactoryImp");

    public static synchronized OplusExtPluginFactory getInstance() {
        RefConstructor<OplusExtPluginFactory> refConstructor;
        if (sInstance == null && (refConstructor = constructor) != null) {
            sInstance = refConstructor.newInstance();
            if (sInstance == null) {
                sInstance = new OplusExtPluginFactory();
            }
        }
        return sInstance;
    }

    @Override // android.common.IOplusCommonFactory
    public boolean isValid(int index) {
        return index < OplusFeatureList.OplusIndex.EndAOSPExtensionPluginFactory.ordinal() && index > OplusFeatureList.OplusIndex.StartAOSPExtensionPluginFactory.ordinal();
    }
}
