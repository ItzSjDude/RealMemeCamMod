package android.util;

import android.app.admin.DevicePolicyManager;
import android.app.admin.DevicePolicyResources;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.internal.R;
import java.util.function.Supplier;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public class IconDrawableFactory {
    protected final Context mContext;
    protected final DevicePolicyManager mDpm;
    protected final boolean mEmbedShadow;
    private IIconDrawableFactoryExt mIconDrwableFactoryExt = (IIconDrawableFactoryExt) ExtLoader.type(IIconDrawableFactoryExt.class).base(this).create();
    protected final LauncherIcons mLauncherIcons;
    protected final PackageManager mPm;
    protected final UserManager mUm;

    private IconDrawableFactory(Context context, boolean embedShadow) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mUm = (UserManager) context.getSystemService(UserManager.class);
        this.mDpm = (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class);
        this.mLauncherIcons = new LauncherIcons(context);
        this.mEmbedShadow = embedShadow;
    }

    protected boolean needsBadging(ApplicationInfo appInfo, int userId) {
        return appInfo.isInstantApp() || this.mUm.hasBadge(userId);
    }

    public Drawable getBadgedIcon(ApplicationInfo appInfo) {
        return getBadgedIcon(appInfo, UserHandle.getUserId(appInfo.uid));
    }

    public Drawable getBadgedIcon(ApplicationInfo appInfo, int userId) {
        return getBadgedIcon(appInfo, appInfo, userId);
    }

    public Drawable getBadgedIcon(PackageItemInfo itemInfo, ApplicationInfo appInfo, final int userId) throws Resources.NotFoundException {
        Drawable icon = this.mPm.loadUnbadgedItemIcon(itemInfo, appInfo);
        if (!this.mEmbedShadow && !needsBadging(appInfo, userId)) {
            return icon;
        }
        if (!this.mIconDrwableFactoryExt.isOemIcons()) {
            icon = getShadowedIcon(icon);
        }
        if (appInfo.isInstantApp()) {
            int badgeColor = Resources.getSystem().getColor(R.color.instant_app_badge, null);
            Drawable badge = this.mContext.getDrawable(R.drawable.ic_instant_icon_badge_bolt);
            icon = this.mLauncherIcons.getBadgedDrawable(icon, badge, badgeColor);
        }
        if (this.mIconDrwableFactoryExt.isMultiAppUserId(userId)) {
            return this.mIconDrwableFactoryExt.hookgetBadgedIcon(icon);
        }
        if (this.mUm.hasBadge(userId)) {
            Drawable badge2 = this.mDpm.getResources().getDrawable(getUpdatableUserIconBadgeId(userId), DevicePolicyResources.Drawables.Style.SOLID_COLORED, new Supplier() { // from class: android.util.IconDrawableFactory$$ExternalSyntheticLambda0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return this.f$0.m4825lambda$getBadgedIcon$0$androidutilIconDrawableFactory(userId);
                }
            });
            return this.mLauncherIcons.getBadgedDrawable(icon, badge2, this.mUm.getUserBadgeColor(userId));
        }
        return icon;
    }

    private String getUpdatableUserIconBadgeId(int userId) {
        return this.mUm.isManagedProfile(userId) ? DevicePolicyResources.Drawables.WORK_PROFILE_ICON_BADGE : DevicePolicyResources.UNDEFINED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getDefaultUserIconBadge, reason: merged with bridge method [inline-methods] */
    public Drawable m4825lambda$getBadgedIcon$0$androidutilIconDrawableFactory(int userId) {
        return this.mContext.getResources().getDrawable(this.mUm.getUserIconBadgeResId(userId));
    }

    public Drawable getShadowedIcon(Drawable icon) {
        return this.mLauncherIcons.wrapIconDrawableWithShadow(icon);
    }

    public static IconDrawableFactory newInstance(Context context) {
        return new IconDrawableFactory(context, true);
    }

    public static IconDrawableFactory newInstance(Context context, boolean embedShadow) {
        return new IconDrawableFactory(context, embedShadow);
    }
}
