package com.android.internal.app;

import android.app.LocaleManager;
import android.content.Context;
import android.os.LocaleList;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes4.dex */
public class LocaleStore {
    private static final HashMap<String, LocaleInfo> sLocaleCache = new HashMap<>();
    private static final String TAG = LocaleStore.class.getSimpleName();
    private static boolean sFullyInitialized = false;

    public static class LocaleInfo implements Serializable {
        private static final int SUGGESTION_TYPE_CFG = 2;
        private static final int SUGGESTION_TYPE_CURRENT = 4;
        private static final int SUGGESTION_TYPE_NONE = 0;
        private static final int SUGGESTION_TYPE_SIM = 1;
        private static final int SUGGESTION_TYPE_SYSTEM_LANGUAGE = 8;
        private String mFullCountryNameNative;
        private String mFullNameNative;
        private final String mId;
        private boolean mIsChecked;
        private boolean mIsPseudo;
        private boolean mIsTranslated;
        private String mLangScriptKey;
        private final Locale mLocale;
        private final Locale mParent;
        private int mSuggestionFlags;

        private LocaleInfo(Locale locale) {
            this.mLocale = locale;
            this.mId = locale.toLanguageTag();
            this.mParent = getParent(locale);
            this.mIsChecked = false;
            this.mSuggestionFlags = 0;
            this.mIsTranslated = false;
            this.mIsPseudo = false;
        }

        private LocaleInfo(String localeId) {
            this(Locale.forLanguageTag(localeId));
        }

        private static Locale getParent(Locale locale) {
            if (locale.getCountry().isEmpty()) {
                return null;
            }
            return new Locale.Builder().setLocale(locale).setRegion("").setExtension('u', "").build();
        }

        public String toString() {
            return this.mId;
        }

        public Locale getLocale() {
            return this.mLocale;
        }

        public Locale getParent() {
            return this.mParent;
        }

        public String getId() {
            return this.mId;
        }

        public boolean isTranslated() {
            return this.mIsTranslated;
        }

        public void setTranslated(boolean isTranslated) {
            this.mIsTranslated = isTranslated;
        }

        boolean isSuggested() {
            return this.mIsTranslated && this.mSuggestionFlags != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isSuggestionOfType(int suggestionMask) {
            return this.mIsTranslated && (this.mSuggestionFlags & suggestionMask) == suggestionMask;
        }

        public String getFullNameNative() {
            if (this.mFullNameNative == null) {
                Locale locale = this.mLocale;
                this.mFullNameNative = LocaleHelper.getDisplayName(locale, locale, true);
            }
            return this.mFullNameNative;
        }

        String getFullCountryNameNative() {
            if (this.mFullCountryNameNative == null) {
                Locale locale = this.mLocale;
                this.mFullCountryNameNative = LocaleHelper.getDisplayCountry(locale, locale);
            }
            return this.mFullCountryNameNative;
        }

        String getFullCountryNameInUiLanguage() {
            return LocaleHelper.getDisplayCountry(this.mLocale);
        }

        public String getFullNameInUiLanguage() {
            return LocaleHelper.getDisplayName(this.mLocale, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getLangScriptKey() {
            String languageTag;
            if (this.mLangScriptKey == null) {
                Locale baseLocale = new Locale.Builder().setLocale(this.mLocale).setExtension('u', "").build();
                Locale parentWithScript = getParent(LocaleHelper.addLikelySubtags(baseLocale));
                if (parentWithScript == null) {
                    languageTag = this.mLocale.toLanguageTag();
                } else {
                    languageTag = parentWithScript.toLanguageTag();
                }
                this.mLangScriptKey = languageTag;
            }
            return this.mLangScriptKey;
        }

        String getLabel(boolean countryMode) {
            if (countryMode) {
                return getFullCountryNameNative();
            }
            return getFullNameNative();
        }

        String getContentDescription(boolean countryMode) {
            if (countryMode) {
                return getFullCountryNameInUiLanguage();
            }
            return getFullNameInUiLanguage();
        }

        public boolean getChecked() {
            return this.mIsChecked;
        }

        public void setChecked(boolean checked) {
            this.mIsChecked = checked;
        }

        public boolean isAppCurrentLocale() {
            return (this.mSuggestionFlags & 4) > 0;
        }

        public boolean isSystemLocale() {
            return (this.mSuggestionFlags & 8) > 0;
        }
    }

    private static Set<String> getSimCountries(Context context) {
        Set<String> result = new HashSet<>();
        TelephonyManager tm = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        if (tm != null) {
            String iso = tm.getSimCountryIso().toUpperCase(Locale.US);
            if (!iso.isEmpty()) {
                result.add(iso);
            }
            String iso2 = tm.getNetworkCountryIso().toUpperCase(Locale.US);
            if (!iso2.isEmpty()) {
                result.add(iso2);
            }
        }
        return result;
    }

    public static void updateSimCountries(Context context) {
        Set<String> simCountries = getSimCountries(context);
        for (LocaleInfo li : sLocaleCache.values()) {
            if (simCountries.contains(li.getLocale().getCountry())) {
                li.mSuggestionFlags |= 1;
            }
        }
    }

    public static LocaleInfo getAppCurrentLocaleInfo(Context context, String appPackageName) {
        LocaleList localeList;
        if (appPackageName == null) {
            return null;
        }
        LocaleManager localeManager = (LocaleManager) context.getSystemService(LocaleManager.class);
        if (localeManager == null) {
            localeList = null;
        } else {
            try {
                localeList = localeManager.getApplicationLocales(appPackageName);
            } catch (IllegalArgumentException e) {
                Log.d(TAG, "IllegalArgumentException ", e);
            }
        }
        Locale locale = localeList == null ? null : localeList.get(0);
        if (locale != null) {
            LocaleInfo localeInfo = new LocaleInfo(locale);
            localeInfo.mSuggestionFlags |= 4;
            localeInfo.mIsTranslated = true;
            return localeInfo;
        }
        return null;
    }

    public static List<LocaleInfo> getSystemCurrentLocaleInfo() {
        List<LocaleInfo> localeList = new ArrayList<>();
        LocaleList systemLangList = LocaleList.getDefault();
        for (int i = 0; i < systemLangList.size(); i++) {
            LocaleInfo systemLocaleInfo = new LocaleInfo(systemLangList.get(i));
            systemLocaleInfo.mSuggestionFlags |= 1;
            systemLocaleInfo.mIsTranslated = true;
            localeList.add(systemLocaleInfo);
        }
        return localeList;
    }

    public static LocaleInfo getSystemDefaultLocaleInfo(boolean hasAppLanguage) {
        LocaleInfo systemDefaultInfo = new LocaleInfo("");
        systemDefaultInfo.mSuggestionFlags |= 8;
        if (hasAppLanguage) {
            systemDefaultInfo.mSuggestionFlags |= 4;
        }
        systemDefaultInfo.mIsTranslated = true;
        return systemDefaultInfo;
    }

    private static void addSuggestedLocalesForRegion(Locale locale) {
        if (locale == null) {
            return;
        }
        String country = locale.getCountry();
        if (country.isEmpty()) {
            return;
        }
        for (LocaleInfo li : sLocaleCache.values()) {
            if (country.equals(li.getLocale().getCountry())) {
                li.mSuggestionFlags |= 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0081 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void fillCache(android.content.Context r15) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.app.LocaleStore.fillCache(android.content.Context):void");
    }

    private static int getLevel(Set<String> ignorables, LocaleInfo li, boolean translatedOnly) {
        if (ignorables.contains(li.getId())) {
            return 0;
        }
        if (li.mIsPseudo) {
            return 2;
        }
        return ((!translatedOnly || li.isTranslated()) && li.getParent() != null) ? 2 : 0;
    }

    public static Set<LocaleInfo> getLevelLocales(Context context, Set<String> ignorables, LocaleInfo parent, boolean translatedOnly) {
        fillCache(context);
        String parentId = parent == null ? null : parent.getId();
        HashSet<LocaleInfo> result = new HashSet<>();
        for (LocaleInfo li : sLocaleCache.values()) {
            int level = getLevel(ignorables, li, translatedOnly);
            if (level == 2) {
                if (parent != null) {
                    if (parentId.equals(li.getParent().toLanguageTag())) {
                        result.add(li);
                    }
                } else if (li.isSuggestionOfType(1)) {
                    result.add(li);
                } else {
                    result.add(getLocaleInfo(li.getParent()));
                }
            }
        }
        return result;
    }

    public static LocaleInfo getLocaleInfo(Locale locale) {
        String id = locale.toLanguageTag();
        HashMap<String, LocaleInfo> map = sLocaleCache;
        if (!map.containsKey(id)) {
            LocaleInfo result = new LocaleInfo(locale);
            map.put(id, result);
            return result;
        }
        return map.get(id);
    }
}
