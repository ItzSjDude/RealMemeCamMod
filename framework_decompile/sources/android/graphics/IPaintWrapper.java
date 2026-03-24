package android.graphics;

/* loaded from: classes.dex */
public interface IPaintWrapper {
    default String getFontVariationSettings() {
        return null;
    }

    default void setFontVariationSettings(String fontVariationSettings) {
    }

    default Typeface getTypeface() {
        return null;
    }

    default void setTypeface(Typeface typeface) {
    }

    default void getSetTypeface(long paintStr, long typefaceStr) {
    }
}
