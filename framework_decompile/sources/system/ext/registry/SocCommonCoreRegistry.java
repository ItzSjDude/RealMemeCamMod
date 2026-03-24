package system.ext.registry;

import android.app.ActivityThreadSocExtImpl;
import android.app.ContextImplSocExtImpl;
import android.app.IActivityThreadSocExt;
import android.app.IContextImplSocExt;
import android.app.ILoadedApkSocExt;
import android.app.LoadedApkSocExtImpl;
import android.content.res.AssetManagerSocExtImpl;
import android.content.res.IAssetManagerSocExt;
import android.content.res.IResourcesImpSocExt;
import android.content.res.ResourcesImplSocExtImpl;
import android.hardware.CameraSocExtImpl;
import android.hardware.ICameraSocExt;
import android.hardware.camera2.CameraManagerSocExtImpl;
import android.hardware.camera2.ICameraManagerSocExt;
import android.util.apk.ApkSignatureVerifierSocExtImpl;
import android.util.apk.IApkSignatureVerifierSocExt;
import android.view.ChoreographerSocExtImpl;
import android.view.IChoreographerSocExt;
import android.view.ISurfaceSocExt;
import android.view.ISurfaceViewSocExt;
import android.view.IViewRootImplSocExt;
import android.view.IViewSocExt;
import android.view.SurfaceSocExtImpl;
import android.view.SurfaceViewSocExtImpl;
import android.view.ViewRootImplSocExtImpl;
import android.view.ViewSocExtImpl;
import android.widget.IOverScrollerSocExt;
import android.widget.IScrollerSocExt;
import android.widget.ISplineOverScrollerSocExt;
import android.widget.OverScrollerSocExtImpl;
import android.widget.ScrollerSocExtImpl;
import android.widget.SplineOverScrollerSocExtImpl;
import com.android.internal.os.IZygoteConfigSocExt;
import com.android.internal.os.ZygoteConfigSocExtImpl;
import com.android.server.ISystemConfigSocExt;
import com.android.server.SystemConfigSocExtImpl;
import system.ext.loader.core.ExtCreator;
import system.ext.loader.core.ExtRegistry;

/* loaded from: classes5.dex */
public class SocCommonCoreRegistry {
    static {
        ExtRegistry.registerExt(IZygoteConfigSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda0
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return ZygoteConfigSocExtImpl.getInstance(obj);
            }
        });
        ExtRegistry.registerExt(IChoreographerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda11
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ChoreographerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ISurfaceSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda12
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new SurfaceSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ICameraManagerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda13
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new CameraManagerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ICameraSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda14
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new CameraSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IActivityThreadSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda15
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ActivityThreadSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IActivityThreadSocExt.IStaticExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda16
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return ActivityThreadSocExtImpl.StaticExtImpl.getInstance(obj);
            }
        });
        ExtRegistry.registerExt(IOverScrollerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda17
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new OverScrollerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ISplineOverScrollerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda18
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new SplineOverScrollerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IViewSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda19
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ViewSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IViewRootImplSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda1
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ViewRootImplSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ISurfaceViewSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda2
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new SurfaceViewSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IAssetManagerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda3
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new AssetManagerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IContextImplSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda4
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ContextImplSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IContextImplSocExt.IStaticExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda5
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return ContextImplSocExtImpl.StaticExtImpl.getInstance(obj);
            }
        });
        ExtRegistry.registerExt(ILoadedApkSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda6
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new LoadedApkSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IApkSignatureVerifierSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda7
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return ApkSignatureVerifierSocExtImpl.getInstance(obj);
            }
        });
        ExtRegistry.registerExt(IResourcesImpSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda8
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ResourcesImplSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(IScrollerSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda9
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new ScrollerSocExtImpl(obj);
            }
        });
        ExtRegistry.registerExt(ISystemConfigSocExt.class, new ExtCreator() { // from class: system.ext.registry.SocCommonCoreRegistry$$ExternalSyntheticLambda10
            @Override // system.ext.loader.core.ExtCreator
            public final Object createExtWith(Object obj) {
                return new SystemConfigSocExtImpl(obj);
            }
        });
    }
}
