package android.graphics;

import android.common.IOplusCommonFeature;
import android.common.OplusFeatureList;
import java.util.Map;

/* loaded from: classes.dex */
public interface ITypefaceExt extends IOplusCommonFeature {
    public static final ITypefaceExt DEFAULT = new ITypefaceExt() { // from class: android.graphics.ITypefaceExt.1
    };

    @Override // android.common.IOplusCommonFeature
    default OplusFeatureList.OplusIndex index() {
        return OplusFeatureList.OplusIndex.ITypefaceExt;
    }

    @Override // android.common.IOplusCommonFeature
    default ITypefaceExt getDefault() {
        return DEFAULT;
    }

    default void setSystemTypeface(boolean isSystemFont) {
    }

    default boolean isSystemTypeface() {
        return true;
    }

    default void initFontsForserializeFontMap() {
    }

    default Typeface getTypeface() {
        return null;
    }

    default void createIndividualTypefae() {
    }

    default boolean createTypefaceForCustom(Map<String, Typeface> outSystemFontMap, Map.Entry<String, android.graphics.fonts.FontFamily[]> entry) {
        return false;
    }

    default Typeface replaceSysSans(Typeface typeface, String familyName) {
        return typeface;
    }
}
