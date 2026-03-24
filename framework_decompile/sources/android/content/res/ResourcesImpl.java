package android.content.res;

import android.animation.Animator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.AssetManager;
import android.content.res.FontResourcesParser;
import android.content.res.Resources;
import android.content.res.XmlBlock;
import android.graphics.ImageDecoder;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.icu.text.PluralRules;
import android.os.Build;
import android.os.LocaleList;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Slog;
import android.util.TypedValue;
import android.util.Xml;
import android.view.DisplayAdjustments;
import com.android.internal.util.GrowingArrayUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Supplier;
import libcore.util.NativeAllocationRegistry;
import org.xmlpull.v1.XmlPullParserException;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class ResourcesImpl {
    private static final int ID_OTHER = 16777220;
    static final String TAG = "Resources";
    private static final boolean TRACE_FOR_MISS_PRELOAD = false;
    private static final boolean TRACE_FOR_PRELOAD = false;
    private static final int XML_BLOCK_CACHE_SIZE = 4;
    private static boolean sPreloaded;
    final AssetManager mAssets;
    private final Configuration mConfiguration;
    private final DisplayAdjustments mDisplayAdjustments;
    private final DisplayMetrics mMetrics;
    private PluralRules mPluralRule;
    private boolean mPreloading;
    public IResourcesImplExt mResourcesImplExt;
    public IResourcesImpSocExt mSocExt;
    private IResourcesImplWrapper mWrapper;
    public static boolean DEBUG_LOAD = false;
    public static boolean DEBUG_CONFIG = false;
    private static final Object sSync = new Object();
    private static final LongSparseArray<Drawable.ConstantState> sPreloadedColorDrawables = new LongSparseArray<>();
    private static final LongSparseArray<ConstantState<ComplexColor>> sPreloadedComplexColors = new LongSparseArray<>();
    private static final LongSparseArray<Drawable.ConstantState>[] sPreloadedDrawables = {new LongSparseArray<>(), new LongSparseArray<>()};
    private static final NativeAllocationRegistry sThemeRegistry = NativeAllocationRegistry.createMalloced(ResourcesImpl.class.getClassLoader(), AssetManager.getThemeFreeFunction());
    private final Object mAccessLock = new Object();
    private final Configuration mTmpConfig = new Configuration();
    private final DrawableCache mDrawableCache = new DrawableCache();
    private final DrawableCache mColorDrawableCache = new DrawableCache();
    private final ConfigurationBoundResourceCache<ComplexColor> mComplexColorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<Animator> mAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<StateListAnimator> mStateListAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ThreadLocal<LookupStack> mLookupStack = ThreadLocal.withInitial(new Supplier() { // from class: android.content.res.ResourcesImpl$$ExternalSyntheticLambda1
        @Override // java.util.function.Supplier
        public final Object get() {
            return ResourcesImpl.lambda$new$0();
        }
    });
    private int mLastCachedXmlBlockIndex = -1;
    private final int[] mCachedXmlBlockCookies = new int[4];
    private final String[] mCachedXmlBlockFiles = new String[4];
    private final XmlBlock[] mCachedXmlBlocks = new XmlBlock[4];

    static /* synthetic */ LookupStack lambda$new$0() {
        return new LookupStack();
    }

    public ResourcesImpl(AssetManager assets, DisplayMetrics metrics, Configuration config, DisplayAdjustments displayAdjustments) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mMetrics = displayMetrics;
        Configuration configuration = new Configuration();
        this.mConfiguration = configuration;
        this.mResourcesImplExt = null;
        this.mSocExt = (IResourcesImpSocExt) ExtLoader.type(IResourcesImpSocExt.class).base(this).create();
        this.mWrapper = new ResourcesImplWrapper();
        this.mAssets = assets;
        displayMetrics.setToDefaults();
        this.mDisplayAdjustments = displayAdjustments;
        configuration.setToDefaults();
        this.mResourcesImplExt = (IResourcesImplExt) ExtLoader.type(IResourcesImplExt.class).base(this).create();
        updateConfiguration(config, metrics, displayAdjustments.getCompatibilityInfo());
    }

    public DisplayAdjustments getDisplayAdjustments() {
        return this.mDisplayAdjustments;
    }

    public AssetManager getAssets() {
        return this.mAssets;
    }

    DisplayMetrics getDisplayMetrics() {
        if (DEBUG_CONFIG) {
            Slog.v(TAG, "Returning DisplayMetrics: " + this.mMetrics.widthPixels + "x" + this.mMetrics.heightPixels + " " + this.mMetrics.density);
        }
        DisplayMetrics adjustMetrics = this.mResourcesImplExt.getCompactWindowMetrics(this, this.mMetrics);
        if (adjustMetrics != null) {
            return adjustMetrics;
        }
        DisplayMetrics autoLayoutMetrics = this.mResourcesImplExt.hookGetDisplayMetrics(this.mMetrics);
        if (autoLayoutMetrics != null) {
            return autoLayoutMetrics;
        }
        return this.mMetrics;
    }

    Configuration getConfiguration() {
        return this.mConfiguration;
    }

    Configuration[] getSizeConfigurations() {
        return this.mAssets.getSizeConfigurations();
    }

    CompatibilityInfo getCompatibilityInfo() {
        return this.mDisplayAdjustments.getCompatibilityInfo();
    }

    private PluralRules getPluralRule() {
        PluralRules pluralRules;
        synchronized (sSync) {
            if (this.mPluralRule == null) {
                this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
            }
            pluralRules = this.mPluralRule;
        }
        return pluralRules;
    }

    void getValue(int id, TypedValue outValue, boolean resolveRefs) throws Resources.NotFoundException {
        boolean found = this.mAssets.getResourceValue(id, 0, outValue, resolveRefs);
        if (found) {
            this.mResourcesImplExt.getExValue(id, outValue, resolveRefs);
        } else {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(id));
        }
    }

    void getValueForDensity(int id, int density, TypedValue outValue, boolean resolveRefs) throws Resources.NotFoundException {
        boolean found = this.mAssets.getResourceValue(id, density, outValue, resolveRefs);
        if (found) {
            this.mResourcesImplExt.getExValue(id, outValue, resolveRefs);
        } else {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(id));
        }
    }

    void getValue(String name, TypedValue outValue, boolean resolveRefs) throws Resources.NotFoundException {
        int id = getIdentifier(name, "string", null);
        if (id != 0) {
            getValue(id, outValue, resolveRefs);
        } else {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("String resource name " + name);
        }
    }

    int getIdentifier(String name, String defType, String defPackage) {
        if (name == null) {
            throw new NullPointerException("name is null");
        }
        try {
            return Integer.parseInt(name);
        } catch (Exception e) {
            return this.mAssets.getResourceIdentifier(name, defType, defPackage);
        }
    }

    String getResourceName(int resid) throws Resources.NotFoundException {
        String str = this.mAssets.getResourceName(resid);
        if (str != null) {
            return str;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(resid));
    }

    String getResourcePackageName(int resid) throws Resources.NotFoundException {
        String str = this.mAssets.getResourcePackageName(resid);
        if (str != null) {
            return str;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(resid));
    }

    String getResourceTypeName(int resid) throws Resources.NotFoundException {
        String str = this.mAssets.getResourceTypeName(resid);
        if (str != null) {
            return str;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(resid));
    }

    String getResourceEntryName(int resid) throws Resources.NotFoundException {
        String str = this.mAssets.getResourceEntryName(resid);
        if (str != null) {
            return str;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(resid));
    }

    String getLastResourceResolution() throws Resources.NotFoundException {
        String str = this.mAssets.getLastResourceResolution();
        if (str != null) {
            return str;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Associated AssetManager hasn't resolved a resource");
    }

    CharSequence getQuantityText(int id, int quantity) throws Resources.NotFoundException {
        PluralRules rule = getPluralRule();
        CharSequence res = this.mAssets.getResourceBagText(id, attrForQuantityCode(rule.select(quantity)));
        if (res != null) {
            return res;
        }
        CharSequence res2 = this.mAssets.getResourceBagText(id, ID_OTHER);
        if (res2 != null) {
            return res2;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Plural resource ID #0x" + Integer.toHexString(id) + " quantity=" + quantity + " item=" + rule.select(quantity));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int attrForQuantityCode(java.lang.String r1) {
        /*
            int r0 = r1.hashCode()
            switch(r0) {
                case 101272: goto L34;
                case 110182: goto L29;
                case 115276: goto L1e;
                case 3343967: goto L13;
                case 3735208: goto L8;
                default: goto L7;
            }
        L7:
            goto L3e
        L8:
            java.lang.String r0 = "zero"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L3f
        L13:
            java.lang.String r0 = "many"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 4
            goto L3f
        L1e:
            java.lang.String r0 = "two"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L3f
        L29:
            java.lang.String r0 = "one"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L3f
        L34:
            java.lang.String r0 = "few"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 3
            goto L3f
        L3e:
            r0 = -1
        L3f:
            switch(r0) {
                case 0: goto L56;
                case 1: goto L52;
                case 2: goto L4e;
                case 3: goto L4a;
                case 4: goto L46;
                default: goto L42;
            }
        L42:
            r0 = 16777220(0x1000004, float:2.3509898E-38)
            return r0
        L46:
            r0 = 16777225(0x1000009, float:2.3509912E-38)
            return r0
        L4a:
            r0 = 16777224(0x1000008, float:2.350991E-38)
            return r0
        L4e:
            r0 = 16777223(0x1000007, float:2.3509907E-38)
            return r0
        L52:
            r0 = 16777222(0x1000006, float:2.3509904E-38)
            return r0
        L56:
            r0 = 16777221(0x1000005, float:2.35099E-38)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.res.ResourcesImpl.attrForQuantityCode(java.lang.String):int");
    }

    AssetFileDescriptor openRawResourceFd(int id, TypedValue tempValue) throws Resources.NotFoundException {
        getValue(id, tempValue, true);
        try {
            return this.mAssets.openNonAssetFd(tempValue.assetCookie, tempValue.string.toString());
        } catch (Exception e) {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("File " + tempValue.string.toString() + " from resource ID #0x" + Integer.toHexString(id), e);
        }
    }

    InputStream openRawResource(int id, TypedValue value) throws Resources.NotFoundException {
        getValue(id, value, true);
        InputStream input = this.mResourcesImplExt.openThemeRawResource(id, value);
        if (input != null) {
            return input;
        }
        try {
            return this.mAssets.openNonAsset(value.assetCookie, value.string.toString(), 2);
        } catch (Exception e) {
            this.mResourcesImplExt.debuglogApkAssets();
            Resources.NotFoundException rnf = new Resources.NotFoundException("File " + (value.string == null ? "(null)" : value.string.toString()) + " from resource ID #0x" + Integer.toHexString(id));
            rnf.initCause(e);
            throw rnf;
        }
    }

    ConfigurationBoundResourceCache<Animator> getAnimatorCache() {
        return this.mAnimatorCache;
    }

    ConfigurationBoundResourceCache<StateListAnimator> getStateListAnimatorCache() {
        return this.mStateListAnimatorCache;
    }

    public void updateConfiguration(Configuration config, DisplayMetrics metrics, CompatibilityInfo compat) {
        int width;
        int height;
        int keyboardHidden;
        Locale bestLocale;
        Trace.traceBegin(8192L, "ResourcesImpl#updateConfiguration");
        try {
            synchronized (this.mAccessLock) {
                try {
                    if (DEBUG_CONFIG) {
                        Log.i(TAG, "updateConfiguration" + this + "  " + Log.getStackTraceString(new Throwable()));
                    }
                    if (DEBUG_CONFIG) {
                        try {
                            Slog.i(TAG, "**** Updating config of " + this + ": old config is " + this.mConfiguration + " old compat is " + this.mDisplayAdjustments.getCompatibilityInfo());
                            Slog.i(TAG, "**** Updating config of " + this + ": new config is " + config + " new compat is " + compat);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                    if (compat != null) {
                        this.mDisplayAdjustments.setCompatibilityInfo(compat);
                    }
                    if (metrics != null) {
                        this.mMetrics.setTo(metrics);
                    }
                    this.mDisplayAdjustments.getCompatibilityInfo().applyToDisplayMetrics(this.mMetrics);
                    int configChanges = calcConfigChanges(config);
                    LocaleList locales = this.mConfiguration.getLocales();
                    if (locales.isEmpty()) {
                        locales = LocaleList.getDefault();
                        this.mConfiguration.setLocales(locales);
                    }
                    if ((configChanges & 4) != 0 && locales.size() > 1) {
                        String[] availableLocales = this.mAssets.getNonSystemLocales();
                        if (LocaleList.isPseudoLocalesOnly(availableLocales)) {
                            availableLocales = this.mAssets.getLocales();
                            if (LocaleList.isPseudoLocalesOnly(availableLocales)) {
                                availableLocales = null;
                            }
                        }
                        if (availableLocales != null && (bestLocale = locales.getFirstMatchWithEnglishSupported(availableLocales)) != null && bestLocale != locales.get(0)) {
                            this.mConfiguration.setLocales(new LocaleList(bestLocale, locales));
                        }
                    }
                    if (this.mConfiguration.densityDpi != 0) {
                        this.mMetrics.densityDpi = this.mConfiguration.densityDpi;
                        this.mMetrics.density = this.mConfiguration.densityDpi * 0.00625f;
                    }
                    DisplayMetrics displayMetrics = this.mMetrics;
                    displayMetrics.scaledDensity = displayMetrics.density * (this.mConfiguration.fontScale != 0.0f ? this.mConfiguration.fontScale : 1.0f);
                    if (this.mMetrics.widthPixels >= this.mMetrics.heightPixels) {
                        width = this.mMetrics.widthPixels;
                        height = this.mMetrics.heightPixels;
                    } else {
                        width = this.mMetrics.heightPixels;
                        height = this.mMetrics.widthPixels;
                    }
                    if (this.mConfiguration.keyboardHidden == 1 && this.mConfiguration.hardKeyboardHidden == 2) {
                        keyboardHidden = 3;
                    } else {
                        keyboardHidden = this.mConfiguration.keyboardHidden;
                    }
                    this.mAssets.setConfiguration(this.mConfiguration.mcc, this.mConfiguration.mnc, adjustLanguageTag(this.mConfiguration.getLocales().get(0).toLanguageTag()), this.mConfiguration.orientation, this.mConfiguration.touchscreen, this.mConfiguration.densityDpi, this.mConfiguration.keyboard, keyboardHidden, this.mConfiguration.navigation, width, height, this.mConfiguration.smallestScreenWidthDp, this.mConfiguration.screenWidthDp, this.mConfiguration.screenHeightDp, this.mConfiguration.screenLayout, this.mConfiguration.uiMode, this.mConfiguration.colorMode, Build.VERSION.RESOURCES_SDK_INT);
                    if (DEBUG_CONFIG) {
                        Slog.i(TAG, "**** Updating config of " + this + ": final config is " + this.mConfiguration + " final compat is " + this.mDisplayAdjustments.getCompatibilityInfo());
                    }
                    this.mDrawableCache.onConfigurationChange(configChanges);
                    this.mColorDrawableCache.onConfigurationChange(configChanges);
                    this.mComplexColorCache.onConfigurationChange(configChanges);
                    this.mAnimatorCache.onConfigurationChange(configChanges);
                    this.mStateListAnimatorCache.onConfigurationChange(configChanges);
                    flushLayoutCache();
                    this.mResourcesImplExt.checkUpdate(configChanges, false);
                    this.mResourcesImplExt.updateCompactWindowAdjustments(null, this.mConfiguration);
                    synchronized (sSync) {
                        if (this.mPluralRule != null) {
                            this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public int calcConfigChanges(Configuration config) {
        if (config == null) {
            return -1;
        }
        this.mTmpConfig.setTo(config);
        int density = config.densityDpi;
        if (density == 0) {
            density = this.mMetrics.noncompatDensityDpi;
        }
        this.mDisplayAdjustments.getCompatibilityInfo().applyToConfiguration(density, this.mTmpConfig);
        if (this.mTmpConfig.getLocales().isEmpty()) {
            this.mTmpConfig.setLocales(LocaleList.getDefault());
        }
        return this.mConfiguration.updateFrom(this.mTmpConfig);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String adjustLanguageTag(java.lang.String r6) {
        /*
            r0 = 45
            int r0 = r6.indexOf(r0)
            r1 = 0
            r2 = -1
            if (r0 != r2) goto Le
            r3 = r6
            java.lang.String r4 = ""
            goto L16
        Le:
            java.lang.String r3 = r6.substring(r1, r0)
            java.lang.String r4 = r6.substring(r0)
        L16:
            int r5 = r3.hashCode()
            switch(r5) {
                case 3325: goto L32;
                case 3355: goto L29;
                case 3856: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto L3c
        L1e:
            java.lang.String r1 = "yi"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L1d
            r1 = 1
            goto L3d
        L29:
            java.lang.String r5 = "id"
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L1d
            goto L3d
        L32:
            java.lang.String r1 = "he"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L1d
            r1 = 2
            goto L3d
        L3c:
            r1 = r2
        L3d:
            switch(r1) {
                case 0: goto L48;
                case 1: goto L45;
                case 2: goto L42;
                default: goto L40;
            }
        L40:
            r1 = r3
            goto L4b
        L42:
            java.lang.String r1 = "iw"
            goto L4b
        L45:
            java.lang.String r1 = "ji"
            goto L4b
        L48:
            java.lang.String r1 = "in"
        L4b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r2 = r2.append(r1)
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.res.ResourcesImpl.adjustLanguageTag(java.lang.String):java.lang.String");
    }

    public void flushLayoutCache() {
        synchronized (this.mCachedXmlBlocks) {
            Arrays.fill(this.mCachedXmlBlockCookies, 0);
            Arrays.fill(this.mCachedXmlBlockFiles, (Object) null);
            XmlBlock[] cachedXmlBlocks = this.mCachedXmlBlocks;
            for (int i = 0; i < 4; i++) {
                XmlBlock oldBlock = cachedXmlBlocks[i];
                if (oldBlock != null) {
                    oldBlock.close();
                }
            }
            Arrays.fill(cachedXmlBlocks, (Object) null);
        }
    }

    public void clearAllCaches() {
        synchronized (this.mAccessLock) {
            this.mDrawableCache.clear();
            this.mColorDrawableCache.clear();
            this.mComplexColorCache.clear();
            this.mAnimatorCache.clear();
            this.mStateListAnimatorCache.clear();
            flushLayoutCache();
        }
    }

    Drawable loadDrawable(Resources wrapper, TypedValue value, int id, int density, Resources.Theme theme) throws Resources.NotFoundException {
        String name;
        boolean isColorDrawable;
        DrawableCache caches;
        long key;
        Drawable.ConstantState cs;
        Drawable dr;
        boolean needsNewDrawableAfterCache;
        Drawable dr2;
        Drawable dr3;
        Drawable.ConstantState state;
        Drawable cachedDrawable;
        boolean canApplyTheme = true;
        boolean useCache = density == 0 || value.density == this.mMetrics.densityDpi;
        if (density > 0 && value.density > 0 && value.density != 65535) {
            if (value.density != density) {
                value.density = (value.density * this.mMetrics.densityDpi) / density;
            } else {
                value.density = this.mMetrics.densityDpi;
            }
        }
        try {
            if (value.type >= 28 && value.type <= 31) {
                DrawableCache caches2 = this.mColorDrawableCache;
                isColorDrawable = true;
                caches = caches2;
                key = value.data;
            } else {
                DrawableCache caches3 = this.mDrawableCache;
                isColorDrawable = false;
                caches = caches3;
                key = (value.assetCookie << 32) | value.data;
            }
            boolean isColorDrawable2 = this.mPreloading;
            if (isColorDrawable2 || !useCache || (cachedDrawable = caches.getInstance(key, wrapper, theme)) == null) {
                Drawable socDrawable = this.mSocExt.getCachedDrawable(this.mAccessLock, wrapper, key, id);
                if (socDrawable != null) {
                    return socDrawable;
                }
                if (!isColorDrawable) {
                    cs = sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].get(key);
                } else {
                    cs = sPreloadedColorDrawables.get(key);
                }
                if (cs != null) {
                    dr = cs.newDrawable(wrapper);
                } else if (isColorDrawable) {
                    dr = new ColorDrawable(value.data);
                } else {
                    dr = loadDrawableForCookie(wrapper, value, id, density);
                }
                if (!(dr instanceof DrawableContainer)) {
                    needsNewDrawableAfterCache = false;
                } else {
                    needsNewDrawableAfterCache = true;
                }
                if (dr == null || !dr.canApplyTheme()) {
                    canApplyTheme = false;
                }
                if (canApplyTheme && theme != null) {
                    Drawable dr4 = dr.mutate();
                    dr4.applyTheme(theme);
                    dr4.clearMutated();
                    dr2 = dr4;
                } else {
                    dr2 = dr;
                }
                if (dr2 == null) {
                    dr3 = dr2;
                } else {
                    dr2.setChangingConfigurations(value.changingConfigurations);
                    if (!useCache) {
                        dr3 = dr2;
                    } else {
                        dr3 = dr2;
                        cacheDrawable(value, isColorDrawable, caches, theme, canApplyTheme, key, dr3);
                        if (needsNewDrawableAfterCache && (state = dr3.getConstantState()) != null) {
                            Drawable dr5 = state.newDrawable(wrapper);
                            return dr5;
                        }
                    }
                }
                return dr3;
            }
            cachedDrawable.setChangingConfigurations(value.changingConfigurations);
            return cachedDrawable;
        } catch (Exception e) {
            try {
                name = getResourceName(id);
            } catch (Resources.NotFoundException e2) {
                name = "(missing name)";
            }
            this.mResourcesImplExt.debuglogApkAssets();
            Resources.NotFoundException nfe = new Resources.NotFoundException("Drawable " + name + " with resource ID #0x" + Integer.toHexString(id), e);
            nfe.setStackTrace(new StackTraceElement[0]);
            throw nfe;
        }
    }

    private void cacheDrawable(TypedValue value, boolean isColorDrawable, DrawableCache caches, Resources.Theme theme, boolean usesTheme, long key, Drawable dr) {
        Drawable.ConstantState cs = dr.getConstantState();
        if (cs == null) {
            return;
        }
        if (this.mPreloading) {
            int changingConfigs = cs.getChangingConfigurations();
            if (isColorDrawable) {
                if (verifyPreloadConfig(changingConfigs, 0, value.resourceId, "drawable")) {
                    sPreloadedColorDrawables.put(key, cs);
                    return;
                }
                return;
            } else {
                if (verifyPreloadConfig(changingConfigs, 8192, value.resourceId, "drawable")) {
                    if ((changingConfigs & 8192) != 0) {
                        sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].put(key, cs);
                        return;
                    }
                    LongSparseArray<Drawable.ConstantState>[] longSparseArrayArr = sPreloadedDrawables;
                    longSparseArrayArr[0].put(key, cs);
                    longSparseArrayArr[1].put(key, cs);
                    return;
                }
                return;
            }
        }
        synchronized (this.mAccessLock) {
            caches.put(key, theme, cs, usesTheme);
            this.mSocExt.putCacheList(key, dr, value.resourceId, isColorDrawable);
        }
    }

    private boolean verifyPreloadConfig(int changingConfigurations, int allowVarying, int resourceId, String name) {
        String resName;
        if (((-1073745921) & changingConfigurations & (~allowVarying)) != 0) {
            try {
                resName = getResourceName(resourceId);
            } catch (Resources.NotFoundException e) {
                resName = "?";
            }
            Log.w(TAG, "Preloaded " + name + " resource #0x" + Integer.toHexString(resourceId) + " (" + resName + ") that varies with configuration!!");
            return false;
        }
        return true;
    }

    private Drawable decodeImageDrawable(AssetManager.AssetInputStream ais, Resources wrapper, TypedValue value) {
        ImageDecoder.Source src = new ImageDecoder.AssetInputStreamSource(ais, wrapper, value);
        try {
            return ImageDecoder.decodeDrawable(src, new ImageDecoder.OnHeaderDecodedListener() { // from class: android.content.res.ResourcesImpl$$ExternalSyntheticLambda0
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    imageDecoder.setAllocator(1);
                }
            });
        } catch (IOException e) {
            return null;
        }
    }

    private Drawable loadDrawableForCookie(Resources wrapper, TypedValue value, int id, int density) throws Exception {
        if (value.string == null) {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("Resource \"" + getResourceName(id) + "\" (" + Integer.toHexString(id) + ") is not a Drawable (color or path): " + value);
        }
        String file = value.string.toString();
        if (DEBUG_LOAD) {
            Log.v(TAG, "Loading drawable for cookie " + value.assetCookie + ": " + file);
        }
        Trace.traceBegin(8192L, file);
        LookupStack stack = this.mLookupStack.get();
        try {
            if (stack.contains(id)) {
                throw new Exception("Recursive reference in drawable");
            }
            stack.push(id);
            try {
                Drawable dr = this.mResourcesImplExt.loadOverlayDrawable(wrapper, value, id);
                if (dr == null) {
                    if (file.endsWith(".xml")) {
                        String typeName = getResourceTypeName(id);
                        if (typeName != null && typeName.equals("color")) {
                            dr = loadColorOrXmlDrawable(wrapper, value, id, density, file);
                        } else {
                            dr = loadXmlDrawable(wrapper, value, id, density, file);
                        }
                    } else {
                        InputStream is = this.mAssets.openNonAsset(value.assetCookie, file, 2);
                        AssetManager.AssetInputStream ais = (AssetManager.AssetInputStream) is;
                        dr = decodeImageDrawable(ais, wrapper, value);
                    }
                }
                Trace.traceEnd(8192L);
                return dr;
            } finally {
                stack.pop();
            }
        } catch (Exception | StackOverflowError e) {
            Trace.traceEnd(8192L);
            this.mResourcesImplExt.debuglogApkAssets();
            Resources.NotFoundException rnf = new Resources.NotFoundException("File " + file + " from drawable resource ID #0x" + Integer.toHexString(id));
            rnf.initCause(e);
            throw rnf;
        }
    }

    private Drawable loadColorOrXmlDrawable(Resources wrapper, TypedValue value, int id, int density, String file) throws XmlPullParserException {
        try {
            ColorStateList csl = loadColorStateList(wrapper, value, id, null);
            return new ColorStateListDrawable(csl);
        } catch (Resources.NotFoundException originalException) {
            try {
                return loadXmlDrawable(wrapper, value, id, density, file);
            } catch (Exception e) {
                this.mResourcesImplExt.debuglogApkAssets();
                throw originalException;
            }
        }
    }

    private Drawable loadXmlDrawable(Resources wrapper, TypedValue value, int id, int density, String file) throws XmlPullParserException, Resources.NotFoundException, IOException {
        XmlResourceParser rp = loadXmlResourceParser(file, id, value.assetCookie, "drawable");
        try {
            Drawable drawableCreateFromXmlForDensity = Drawable.createFromXmlForDensity(wrapper, rp, density, null);
            if (rp != null) {
                rp.close();
            }
            return drawableCreateFromXmlForDensity;
        } catch (Throwable th) {
            if (rp != null) {
                try {
                    rp.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public Typeface loadFont(Resources wrapper, TypedValue value, int id) {
        if (value.string == null) {
            this.mResourcesImplExt.debuglogApkAssets();
            throw new Resources.NotFoundException("Resource \"" + getResourceName(id) + "\" (" + Integer.toHexString(id) + ") is not a Font: " + value);
        }
        String file = value.string.toString();
        if (!file.startsWith("res/")) {
            return null;
        }
        Typeface cached = Typeface.findFromCache(this.mAssets, file);
        if (cached != null) {
            return cached;
        }
        if (DEBUG_LOAD) {
            Log.v(TAG, "Loading font for cookie " + value.assetCookie + ": " + file);
        }
        Trace.traceBegin(8192L, file);
        try {
            try {
                try {
                    if (!file.endsWith("xml")) {
                        return new Typeface.Builder(this.mAssets, file, false, value.assetCookie).build();
                    }
                    XmlResourceParser rp = loadXmlResourceParser(file, id, value.assetCookie, Context.FONT_SERVICE);
                    FontResourcesParser.FamilyResourceEntry familyEntry = FontResourcesParser.parse(rp, wrapper);
                    if (familyEntry == null) {
                        return null;
                    }
                    return Typeface.createFromResources(familyEntry, this.mAssets, file);
                } catch (IOException e) {
                    Log.e(TAG, "Failed to read xml resource " + file, e);
                    return null;
                }
            } catch (XmlPullParserException e2) {
                Log.e(TAG, "Failed to parse xml resource " + file, e2);
                return null;
            }
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    private ComplexColor loadComplexColorFromName(Resources wrapper, Resources.Theme theme, TypedValue value, int id) throws XmlPullParserException {
        long key = (value.assetCookie << 32) | value.data;
        ConfigurationBoundResourceCache<ComplexColor> cache = this.mComplexColorCache;
        ComplexColor complexColor = cache.getInstance(key, wrapper, theme);
        if (complexColor != null) {
            return complexColor;
        }
        LongSparseArray<ConstantState<ComplexColor>> longSparseArray = sPreloadedComplexColors;
        ConstantState<ComplexColor> factory = longSparseArray.get(key);
        if (factory != null) {
            complexColor = factory.newInstance2(wrapper, theme);
        }
        if (complexColor == null) {
            complexColor = loadComplexColorForCookie(wrapper, value, id, theme);
        }
        if (complexColor != null) {
            complexColor.setBaseChangingConfigurations(value.changingConfigurations);
            if (this.mPreloading) {
                if (verifyPreloadConfig(complexColor.getChangingConfigurations(), 0, value.resourceId, "color")) {
                    longSparseArray.put(key, complexColor.getConstantState());
                }
            } else {
                cache.put(key, theme, complexColor.getConstantState());
            }
        }
        return complexColor;
    }

    ComplexColor loadComplexColor(Resources wrapper, TypedValue value, int id, Resources.Theme theme) {
        long key = (value.assetCookie << 32) | value.data;
        if (value.type >= 28 && value.type <= 31) {
            return getColorStateListFromInt(value, key);
        }
        String file = value.string.toString();
        if (file.endsWith(".xml")) {
            try {
                ComplexColor complexColor = loadComplexColorFromName(wrapper, theme, value, id);
                return complexColor;
            } catch (Exception e) {
                this.mResourcesImplExt.debuglogApkAssets();
                Resources.NotFoundException rnf = new Resources.NotFoundException("File " + file + " from complex color resource ID #0x" + Integer.toHexString(id));
                rnf.initCause(e);
                throw rnf;
            }
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("File " + file + " from drawable resource ID #0x" + Integer.toHexString(id) + ": .xml extension required");
    }

    ColorStateList loadColorStateList(Resources wrapper, TypedValue value, int id, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException {
        long key = (value.assetCookie << 32) | value.data;
        if (value.type >= 28 && value.type <= 31) {
            return getColorStateListFromInt(value, key);
        }
        ComplexColor complexColor = loadComplexColorFromName(wrapper, theme, value, id);
        if (complexColor != null && (complexColor instanceof ColorStateList)) {
            return (ColorStateList) complexColor;
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("Can't find ColorStateList from drawable resource ID #0x" + Integer.toHexString(id));
    }

    private ColorStateList getColorStateListFromInt(TypedValue value, long key) {
        LongSparseArray<ConstantState<ComplexColor>> longSparseArray = sPreloadedComplexColors;
        ConstantState<ComplexColor> factory = longSparseArray.get(key);
        if (factory != null) {
            return (ColorStateList) factory.newInstance2();
        }
        ColorStateList csl = ColorStateList.valueOf(value.data);
        if (this.mPreloading && verifyPreloadConfig(value.changingConfigurations, 0, value.resourceId, "color")) {
            longSparseArray.put(key, csl.getConstantState());
        }
        return csl;
    }

    private ComplexColor loadComplexColorForCookie(Resources wrapper, TypedValue value, int id, Resources.Theme theme) throws XmlPullParserException {
        int type;
        if (value.string == null) {
            throw new UnsupportedOperationException("Can't convert to ComplexColor: type=0x" + value.type);
        }
        String file = value.string.toString();
        if (DEBUG_LOAD) {
            Log.v(TAG, "Loading ComplexColor for cookie " + value.assetCookie + ": " + file);
        }
        ComplexColor complexColor = null;
        Trace.traceBegin(8192L, file);
        if (file.endsWith(".xml")) {
            try {
                XmlResourceParser parser = loadXmlResourceParser(file, id, value.assetCookie, "ComplexColor");
                AttributeSet attrs = Xml.asAttributeSet(parser);
                do {
                    type = parser.next();
                    if (type == 2) {
                        break;
                    }
                } while (type != 1);
                if (type != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = parser.getName();
                if (name.equals("gradient")) {
                    complexColor = GradientColor.createFromXmlInner(wrapper, parser, attrs, theme);
                } else if (name.equals("selector")) {
                    complexColor = ColorStateList.createFromXmlInner(wrapper, parser, attrs, theme);
                }
                parser.close();
                Trace.traceEnd(8192L);
                return complexColor;
            } catch (Exception e) {
                Trace.traceEnd(8192L);
                this.mResourcesImplExt.debuglogApkAssets();
                Resources.NotFoundException rnf = new Resources.NotFoundException("File " + file + " from ComplexColor resource ID #0x" + Integer.toHexString(id));
                rnf.initCause(e);
                throw rnf;
            }
        }
        Trace.traceEnd(8192L);
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("File " + file + " from drawable resource ID #0x" + Integer.toHexString(id) + ": .xml extension required");
    }

    XmlResourceParser loadXmlResourceParser(String file, int id, int assetCookie, String type) throws Resources.NotFoundException {
        if (id != 0) {
            try {
                synchronized (this.mCachedXmlBlocks) {
                    int[] cachedXmlBlockCookies = this.mCachedXmlBlockCookies;
                    String[] cachedXmlBlockFiles = this.mCachedXmlBlockFiles;
                    XmlBlock[] cachedXmlBlocks = this.mCachedXmlBlocks;
                    int num = cachedXmlBlockFiles.length;
                    for (int i = 0; i < num; i++) {
                        if (cachedXmlBlockCookies[i] == assetCookie && cachedXmlBlockFiles[i] != null && cachedXmlBlockFiles[i].equals(file)) {
                            return cachedXmlBlocks[i].newParser(id);
                        }
                    }
                    XmlBlock block = this.mAssets.openXmlBlockAsset(assetCookie, file);
                    if (block != null) {
                        int pos = (this.mLastCachedXmlBlockIndex + 1) % num;
                        this.mLastCachedXmlBlockIndex = pos;
                        XmlBlock oldBlock = cachedXmlBlocks[pos];
                        if (oldBlock != null) {
                            oldBlock.close();
                        }
                        cachedXmlBlockCookies[pos] = assetCookie;
                        cachedXmlBlockFiles[pos] = file;
                        cachedXmlBlocks[pos] = block;
                        return block.newParser(id);
                    }
                }
            } catch (Exception e) {
                this.mResourcesImplExt.debuglogApkAssets();
                Resources.NotFoundException rnf = new Resources.NotFoundException("File " + file + " from xml type " + type + " resource ID #0x" + Integer.toHexString(id));
                rnf.initCause(e);
                throw rnf;
            }
        }
        this.mResourcesImplExt.debuglogApkAssets();
        throw new Resources.NotFoundException("File " + file + " from xml type " + type + " resource ID #0x" + Integer.toHexString(id));
    }

    public final void startPreloading() {
        synchronized (sSync) {
            if (sPreloaded) {
                throw new IllegalStateException("Resources already preloaded");
            }
            sPreloaded = true;
            this.mPreloading = true;
            this.mConfiguration.densityDpi = DisplayMetrics.DENSITY_DEVICE;
            updateConfiguration(null, null, null);
        }
    }

    void finishPreloading() {
        if (this.mPreloading) {
            this.mPreloading = false;
            flushLayoutCache();
        }
    }

    static int getAttributeSetSourceResId(AttributeSet set) {
        if (set == null || !(set instanceof XmlBlock.Parser)) {
            return 0;
        }
        return ((XmlBlock.Parser) set).getSourceResId();
    }

    LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
        return sPreloadedDrawables[0];
    }

    ThemeImpl newThemeImpl() {
        return new ThemeImpl();
    }

    void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "class=" + getClass());
        pw.println(prefix + "assets");
        this.mAssets.dump(pw, prefix + "  ");
    }

    public class ThemeImpl {
        private AssetManager mAssets;
        private final long mTheme;
        private final Resources.ThemeKey mKey = new Resources.ThemeKey();
        private int mThemeResId = 0;

        ThemeImpl() {
            AssetManager assetManager = ResourcesImpl.this.mAssets;
            this.mAssets = assetManager;
            long jCreateTheme = assetManager.createTheme();
            this.mTheme = jCreateTheme;
            ResourcesImpl.sThemeRegistry.registerNativeAllocation(this, jCreateTheme);
        }

        protected void finalize() throws Throwable {
            super.finalize();
            this.mAssets.releaseTheme(this.mTheme);
        }

        Resources.ThemeKey getKey() {
            return this.mKey;
        }

        long getNativeTheme() {
            return this.mTheme;
        }

        int getAppliedStyleResId() {
            return this.mThemeResId;
        }

        int getParentThemeIdentifier(int resId) {
            if (resId > 0) {
                return this.mAssets.getParentThemeIdentifier(resId);
            }
            return 0;
        }

        void applyStyle(int resId, boolean force) {
            this.mAssets.applyStyleToTheme(this.mTheme, resId, force);
            this.mThemeResId = resId;
            this.mKey.append(resId, force);
        }

        void setTo(ThemeImpl other) {
            this.mAssets.setThemeTo(this.mTheme, other.mAssets, other.mTheme);
            this.mThemeResId = other.mThemeResId;
            this.mKey.setTo(other.getKey());
        }

        TypedArray obtainStyledAttributes(Resources.Theme wrapper, AttributeSet set, int[] attrs, int defStyleAttr, int defStyleRes) {
            int len = attrs.length;
            TypedArray array = TypedArray.obtain(wrapper.getResources(), len);
            XmlBlock.Parser parser = (XmlBlock.Parser) set;
            this.mAssets.applyStyle(this.mTheme, defStyleAttr, defStyleRes, parser, attrs, array.mDataAddress, array.mIndicesAddress);
            array.mTheme = wrapper;
            array.mXml = parser;
            return ResourcesImpl.this.mResourcesImplExt.replaceTypedArray(array);
        }

        TypedArray resolveAttributes(Resources.Theme wrapper, int[] values, int[] attrs) {
            int len = attrs.length;
            if (values == null || len != values.length) {
                throw new IllegalArgumentException("Base attribute values must the same length as attrs");
            }
            TypedArray array = TypedArray.obtain(wrapper.getResources(), len);
            this.mAssets.resolveAttrs(this.mTheme, 0, 0, values, attrs, array.mData, array.mIndices);
            array.mTheme = wrapper;
            array.mXml = null;
            return ResourcesImpl.this.mResourcesImplExt.replaceTypedArray(array);
        }

        boolean resolveAttribute(int resid, TypedValue outValue, boolean resolveRefs) {
            return this.mAssets.getThemeValue(this.mTheme, resid, outValue, resolveRefs);
        }

        int[] getAllAttributes() {
            return this.mAssets.getStyleAttributes(getAppliedStyleResId());
        }

        int getChangingConfigurations() {
            int nativeChangingConfig = AssetManager.nativeThemeGetChangingConfigurations(this.mTheme);
            return ActivityInfo.activityInfoConfigNativeToJava(nativeChangingConfig);
        }

        public void dump(int priority, String tag, String prefix) {
            this.mAssets.dumpTheme(this.mTheme, priority, tag, prefix);
        }

        String[] getTheme() {
            int n = this.mKey.mCount;
            String[] themes = new String[n * 2];
            int i = 0;
            int j = n - 1;
            while (i < themes.length) {
                int resId = this.mKey.mResId[j];
                boolean forced = this.mKey.mForce[j];
                try {
                    themes[i] = ResourcesImpl.this.getResourceName(resId);
                } catch (Resources.NotFoundException e) {
                    themes[i] = Integer.toHexString(i);
                }
                themes[i + 1] = forced ? "forced" : "not forced";
                i += 2;
                j--;
            }
            return themes;
        }

        void rebase() {
            rebase(this.mAssets);
        }

        void rebase(AssetManager newAssets) {
            this.mAssets = this.mAssets.rebaseTheme(this.mTheme, newAssets, this.mKey.mResId, this.mKey.mForce, this.mKey.mCount);
        }

        public int[] getAttributeResolutionStack(int defStyleAttr, int defStyleRes, int explicitStyleRes) {
            return this.mAssets.getAttributeResolutionStack(this.mTheme, defStyleAttr, defStyleRes, explicitStyleRes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LookupStack {
        private int[] mIds;
        private int mSize;

        private LookupStack() {
            this.mIds = new int[4];
            this.mSize = 0;
        }

        public void push(int id) {
            this.mIds = GrowingArrayUtils.append(this.mIds, this.mSize, id);
            this.mSize++;
        }

        public boolean contains(int id) {
            for (int i = 0; i < this.mSize; i++) {
                if (this.mIds[i] == id) {
                    return true;
                }
            }
            return false;
        }

        public void pop() {
            this.mSize--;
        }
    }

    public IResourcesImplWrapper getWrapper() {
        return this.mWrapper;
    }

    private class ResourcesImplWrapper implements IResourcesImplWrapper {
        private ResourcesImplWrapper() {
        }

        @Override // android.content.res.IResourcesImplWrapper
        public LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
            return ResourcesImpl.this.getPreloadedDrawables();
        }

        @Override // android.content.res.IResourcesImplWrapper
        public LongSparseArray<Drawable.ConstantState> getPreloadedColorDrawables() {
            return ResourcesImpl.sPreloadedColorDrawables;
        }

        @Override // android.content.res.IResourcesImplWrapper
        public LongSparseArray<ConstantState<ComplexColor>> getPreloadedComplexColors() {
            return ResourcesImpl.sPreloadedComplexColors;
        }
    }
}
