package android.graphics.fonts;

import android.graphics.FontListParser;
import android.graphics.Typeface;
import android.graphics.fonts.ISystemFontExt;
import android.text.FontConfig;
import android.util.ArrayMap;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public final class SystemFonts {
    private static final String DEFAULT_FAMILY = "sans-serif";
    private static final String FONTS_XML;
    private static final Object LOCK;
    public static final String OEM_FONT_DIR;
    private static final String OEM_XML;
    private static ISystemFontExt.IStaticExt STATIC_EXT = null;
    public static final String SYSTEM_FONT_DIR = "/system/fonts/";
    private static final String TAG = "SystemFonts";
    private static Set<Font> sAvailableFonts;

    static {
        ISystemFontExt.IStaticExt iStaticExt = (ISystemFontExt.IStaticExt) ExtLoader.type(ISystemFontExt.IStaticExt.class).create();
        STATIC_EXT = iStaticExt;
        FONTS_XML = iStaticExt.getSystemFontConfig("/system/etc/fonts.xml");
        OEM_XML = STATIC_EXT.getOemCustomizationConfigXml("/product/etc/fonts_customization.xml");
        OEM_FONT_DIR = STATIC_EXT.getOemCustomizationFilePath("/product/fonts/");
        LOCK = new Object();
    }

    private SystemFonts() {
    }

    public static Set<Font> getAvailableFonts() {
        Set<Font> set;
        synchronized (LOCK) {
            if (sAvailableFonts == null) {
                sAvailableFonts = Font.getAvailableFonts();
            }
            set = sAvailableFonts;
        }
        return set;
    }

    public static void resetAvailableFonts() {
        synchronized (LOCK) {
            sAvailableFonts = null;
        }
    }

    private static ByteBuffer mmap(String fullPath) throws IOException {
        try {
            FileInputStream file = new FileInputStream(fullPath);
            try {
                FileChannel fileChannel = file.getChannel();
                long fontSize = fileChannel.size();
                MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, fontSize);
                file.close();
                return map;
            } finally {
            }
        } catch (IOException e) {
            return null;
        }
    }

    private static void pushFamilyToFallback(FontConfig.FontFamily xmlFamily, ArrayMap<String, ArrayList<FontFamily>> fallbackMap, Map<String, ByteBuffer> cache) throws IOException {
        String languageTags = xmlFamily.getLocaleList().toLanguageTags();
        int variant = xmlFamily.getVariant();
        ArrayList<FontConfig.Font> defaultFonts = new ArrayList<>();
        ArrayMap<String, ArrayList<FontConfig.Font>> specificFallbackFonts = new ArrayMap<>();
        for (FontConfig.Font font : xmlFamily.getFonts()) {
            String fallbackName = font.getFontFamilyName();
            if (fallbackName == null) {
                defaultFonts.add(font);
            } else {
                ArrayList<FontConfig.Font> fallback = specificFallbackFonts.get(fallbackName);
                if (fallback == null) {
                    fallback = new ArrayList<>();
                    specificFallbackFonts.put(fallbackName, fallback);
                }
                fallback.add(font);
            }
        }
        FontFamily defaultFamily = defaultFonts.isEmpty() ? null : createFontFamily(xmlFamily.getName(), defaultFonts, languageTags, variant, cache);
        for (int i = 0; i < fallbackMap.size(); i++) {
            String name = fallbackMap.keyAt(i);
            ArrayList<FontConfig.Font> fallback2 = specificFallbackFonts.get(name);
            if (fallback2 == null) {
                String familyName = xmlFamily.getName();
                if (defaultFamily != null && (familyName == null || !familyName.equals(name))) {
                    fallbackMap.valueAt(i).add(defaultFamily);
                }
            } else {
                FontFamily family = createFontFamily(xmlFamily.getName(), fallback2, languageTags, variant, cache);
                if (family != null) {
                    fallbackMap.valueAt(i).add(family);
                } else if (defaultFamily != null) {
                    fallbackMap.valueAt(i).add(defaultFamily);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0037 A[EXC_TOP_SPLITTER, PHI: r5
      0x0037: PHI (r5v2 'buffer' java.nio.ByteBuffer) = (r5v1 'buffer' java.nio.ByteBuffer), (r5v3 'buffer' java.nio.ByteBuffer) binds: [B:9:0x0024, B:14:0x0034] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.fonts.FontFamily createFontFamily(java.lang.String r8, java.util.List<android.text.FontConfig.Font> r9, java.lang.String r10, int r11, java.util.Map<java.lang.String, java.nio.ByteBuffer> r12) throws java.io.IOException {
        /*
            int r0 = r9.size()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 0
            r2 = 0
        La:
            int r3 = r9.size()
            if (r2 >= r3) goto L84
            java.lang.Object r3 = r9.get(r2)
            android.text.FontConfig$Font r3 = (android.text.FontConfig.Font) r3
            java.io.File r4 = r3.getFile()
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.Object r5 = r12.get(r4)
            java.nio.ByteBuffer r5 = (java.nio.ByteBuffer) r5
            if (r5 != 0) goto L37
            boolean r6 = r12.containsKey(r4)
            if (r6 == 0) goto L2d
            goto L7a
        L2d:
            java.nio.ByteBuffer r5 = mmap(r4)
            r12.put(r4, r5)
            if (r5 != 0) goto L37
            goto L7a
        L37:
            android.graphics.fonts.Font$Builder r6 = new android.graphics.fonts.Font$Builder     // Catch: java.io.IOException -> L7d
            java.io.File r7 = new java.io.File     // Catch: java.io.IOException -> L7d
            r7.<init>(r4)     // Catch: java.io.IOException -> L7d
            r6.<init>(r5, r7, r10)     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.FontStyle r7 = r3.getStyle()     // Catch: java.io.IOException -> L7d
            int r7 = r7.getWeight()     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.Font$Builder r6 = r6.setWeight(r7)     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.FontStyle r7 = r3.getStyle()     // Catch: java.io.IOException -> L7d
            int r7 = r7.getSlant()     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.Font$Builder r6 = r6.setSlant(r7)     // Catch: java.io.IOException -> L7d
            int r7 = r3.getTtcIndex()     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.Font$Builder r6 = r6.setTtcIndex(r7)     // Catch: java.io.IOException -> L7d
            java.lang.String r7 = r3.getFontVariationSettings()     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.Font$Builder r6 = r6.setFontVariationSettings(r7)     // Catch: java.io.IOException -> L7d
            android.graphics.fonts.Font r6 = r6.build()     // Catch: java.io.IOException -> L7d
            if (r0 != 0) goto L77
            android.graphics.fonts.FontFamily$Builder r7 = new android.graphics.fonts.FontFamily$Builder
            r7.<init>(r6)
            r0 = r7
            goto L7a
        L77:
            r0.addFont(r6)
        L7a:
            int r2 = r2 + 1
            goto La
        L7d:
            r1 = move-exception
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            r6.<init>(r1)
            throw r6
        L84:
            if (r0 != 0) goto L87
            goto L8c
        L87:
            r1 = 0
            android.graphics.fonts.FontFamily r1 = r0.build(r10, r11, r1)
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.graphics.fonts.SystemFonts.createFontFamily(java.lang.String, java.util.List, java.lang.String, int, java.util.Map):android.graphics.fonts.FontFamily");
    }

    private static void appendNamedFamily(FontConfig.FontFamily xmlFamily, ArrayMap<String, ByteBuffer> bufferCache, ArrayMap<String, ArrayList<FontFamily>> fallbackListMap) throws IOException {
        String familyName = xmlFamily.getName();
        FontFamily family = createFontFamily(familyName, xmlFamily.getFontList(), xmlFamily.getLocaleList().toLanguageTags(), xmlFamily.getVariant(), bufferCache);
        if (family == null) {
            return;
        }
        ArrayList<FontFamily> fallback = new ArrayList<>();
        fallback.add(family);
        fallbackListMap.put(familyName, fallback);
    }

    public static FontConfig getSystemFontConfig(Map<String, File> updatableFontMap, long lastModifiedDate, int configVersion) {
        return getSystemFontConfigInternal(FONTS_XML, SYSTEM_FONT_DIR, OEM_XML, OEM_FONT_DIR, updatableFontMap, lastModifiedDate, configVersion);
    }

    public static FontConfig getSystemPreinstalledFontConfig() {
        return STATIC_EXT.apendIndividualFontFamily(getSystemFontConfigInternal(FONTS_XML, SYSTEM_FONT_DIR, OEM_XML, OEM_FONT_DIR, null, 0L, 0));
    }

    static FontConfig getSystemFontConfigInternal(String fontsXml, String systemFontDir, String oemXml, String productFontDir, Map<String, File> updatableFontMap, long lastModifiedDate, int configVersion) {
        try {
            return FontListParser.parse(fontsXml, systemFontDir, oemXml, productFontDir, updatableFontMap, lastModifiedDate, configVersion);
        } catch (IOException e) {
            Log.e(TAG, "Failed to open/read system font configurations.", e);
            return new FontConfig(Collections.emptyList(), Collections.emptyList(), 0L, 0);
        } catch (XmlPullParserException e2) {
            Log.e(TAG, "Failed to parse the system font configuration.", e2);
            return new FontConfig(Collections.emptyList(), Collections.emptyList(), 0L, 0);
        }
    }

    public static Map<String, FontFamily[]> buildSystemFallback(FontConfig fontConfig) {
        return buildSystemFallback(fontConfig, new ArrayMap());
    }

    public static Map<String, FontFamily[]> buildSystemFallback(FontConfig fontConfig, ArrayMap<String, ByteBuffer> outBufferCache) throws IOException {
        Map<String, FontFamily[]> fallbackMap = new ArrayMap<>();
        List<FontConfig.FontFamily> xmlFamilies = fontConfig.getFontFamilies();
        ArrayMap<String, ArrayList<FontFamily>> fallbackListMap = new ArrayMap<>();
        for (FontConfig.FontFamily xmlFamily : xmlFamilies) {
            String familyName = xmlFamily.getName();
            if (familyName != null) {
                appendNamedFamily(xmlFamily, outBufferCache, fallbackListMap);
            }
        }
        for (int i = 0; i < xmlFamilies.size(); i++) {
            FontConfig.FontFamily xmlFamily2 = xmlFamilies.get(i);
            if (i == 0 || xmlFamily2.getName() == null) {
                pushFamilyToFallback(xmlFamily2, fallbackListMap, outBufferCache);
            }
        }
        for (int i2 = 0; i2 < fallbackListMap.size(); i2++) {
            String fallbackName = fallbackListMap.keyAt(i2);
            List<FontFamily> familyList = fallbackListMap.valueAt(i2);
            fallbackMap.put(fallbackName, (FontFamily[]) familyList.toArray(new FontFamily[0]));
        }
        return fallbackMap;
    }

    public static Map<String, Typeface> buildSystemTypefaces(FontConfig fontConfig, Map<String, FontFamily[]> fallbackMap) {
        ArrayMap<String, Typeface> result = new ArrayMap<>();
        Typeface.initSystemDefaultTypefaces(fallbackMap, fontConfig.getAliases(), result);
        return result;
    }
}
