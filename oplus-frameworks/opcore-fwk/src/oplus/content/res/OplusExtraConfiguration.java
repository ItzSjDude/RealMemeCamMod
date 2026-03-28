package oplus.content.res;

public class OplusExtraConfiguration {
    public int mFlipFont = 0;
    public int mFontVariant = 0;
    public int mAccessibleChanged = 0;
    public String mThemePrefix = "";
    public String mIconPackName = "";
    public long mMaterialColor = 0;
    public int mThemeChanged = 0;
    public long mThemeChangedFlags = 0;
    public long mUxIconConfig = 0;
    public float mDarkModeBackgroundMaxL = 0.0f;
    public float mDarkModeForegroundMinL = 0.0f;
    public float mDarkModeDialogBgMaxL = 0.0f;
    public int mFontVariationSettings = 0;

    public OplusExtraConfiguration() {
    }

    public void setTo(OplusExtraConfiguration other) {
        if (other == null)
            return;
        this.mFlipFont = other.mFlipFont;
        this.mFontVariant = other.mFontVariant;
        this.mAccessibleChanged = other.mAccessibleChanged;
        this.mThemePrefix = other.mThemePrefix;
        this.mIconPackName = other.mIconPackName;
        this.mMaterialColor = other.mMaterialColor;
        this.mThemeChanged = other.mThemeChanged;
        this.mThemeChangedFlags = other.mThemeChangedFlags;
        this.mUxIconConfig = other.mUxIconConfig;
        this.mDarkModeBackgroundMaxL = other.mDarkModeBackgroundMaxL;
        this.mDarkModeForegroundMinL = other.mDarkModeForegroundMinL;
        this.mDarkModeDialogBgMaxL = other.mDarkModeDialogBgMaxL;
        this.mFontVariationSettings = other.mFontVariationSettings;
    }
}