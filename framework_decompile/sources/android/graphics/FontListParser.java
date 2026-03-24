package android.graphics;

import android.graphics.fonts.FontCustomizationParser;
import android.graphics.fonts.FontStyle;
import android.graphics.fonts.FontVariationAxis;
import android.graphics.fonts.SystemFonts;
import android.os.LocaleList;
import android.text.FontConfig;
import android.util.ArraySet;
import android.util.Xml;
import com.oplus.uifirst.IOplusUIFirstManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class FontListParser {
    public static final String ATTR_FALLBACK_FOR = "fallbackFor";
    public static final String ATTR_INDEX = "index";
    private static final String ATTR_LANG = "lang";
    private static final String ATTR_NAME = "name";
    public static final String ATTR_POSTSCRIPT_NAME = "postScriptName";
    public static final String ATTR_STYLE = "style";
    public static final String ATTR_STYLEVALUE = "stylevalue";
    public static final String ATTR_TAG = "tag";
    private static final String ATTR_VARIANT = "variant";
    public static final String ATTR_WEIGHT = "weight";
    private static final Pattern FILENAME_WHITESPACE_PATTERN = Pattern.compile("^[ \\n\\r\\t]+|[ \\n\\r\\t]+$");
    public static final String STYLE_ITALIC = "italic";
    public static final String STYLE_NORMAL = "normal";
    public static final String TAG_AXIS = "axis";
    private static final String TAG_FONT = "font";
    private static final String VARIANT_COMPACT = "compact";
    private static final String VARIANT_ELEGANT = "elegant";

    public static FontConfig parse(InputStream in) throws XmlPullParserException, IOException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(in, null);
        parser.nextTag();
        return readFamilies(parser, SystemFonts.SYSTEM_FONT_DIR, new FontCustomizationParser.Result(), null, 0L, 0, true);
    }

    public static FontConfig parse(String fontsXmlPath, String systemFontDir, String oemCustomizationXmlPath, String productFontDir, Map<String, File> updatableFontMap, long lastModifiedDate, int configVersion) throws XmlPullParserException, IOException {
        FontCustomizationParser.Result oemCustomization;
        if (oemCustomizationXmlPath != null) {
            try {
                InputStream is = new FileInputStream(oemCustomizationXmlPath);
                try {
                    try {
                        FontCustomizationParser.Result oemCustomization2 = FontCustomizationParser.parse(is, productFontDir, updatableFontMap);
                        is.close();
                        oemCustomization = oemCustomization2;
                    } catch (IOException e) {
                        oemCustomization = new FontCustomizationParser.Result();
                        InputStream is2 = new FileInputStream(fontsXmlPath);
                        XmlPullParser parser = Xml.newPullParser();
                        parser.setInput(is2, null);
                        parser.nextTag();
                        FontConfig families = readFamilies(parser, systemFontDir, oemCustomization, updatableFontMap, lastModifiedDate, configVersion, false);
                        is2.close();
                        return families;
                    }
                } finally {
                }
            } catch (IOException e2) {
            }
        } else {
            oemCustomization = new FontCustomizationParser.Result();
        }
        InputStream is22 = new FileInputStream(fontsXmlPath);
        try {
            XmlPullParser parser2 = Xml.newPullParser();
            parser2.setInput(is22, null);
            parser2.nextTag();
            FontConfig families2 = readFamilies(parser2, systemFontDir, oemCustomization, updatableFontMap, lastModifiedDate, configVersion, false);
            is22.close();
            return families2;
        } finally {
        }
    }

    public static FontConfig readFamilies(XmlPullParser parser, String fontDir, FontCustomizationParser.Result customization, Map<String, File> updatableFontMap, long lastModifiedDate, int configVersion, boolean allowNonExistingFile) throws XmlPullParserException, IOException {
        String name;
        List<FontConfig.FontFamily> families = new ArrayList<>();
        List<FontConfig.Alias> aliases = new ArrayList<>(customization.getAdditionalAliases());
        Map<String, FontConfig.FontFamily> oemNamedFamilies = customization.getAdditionalNamedFamilies();
        parser.require(2, null, "familyset");
        while (keepReading(parser)) {
            if (parser.getEventType() == 2) {
                String tag = parser.getName();
                if (tag.equals("family")) {
                    FontConfig.FontFamily family = readFamily(parser, fontDir, updatableFontMap, allowNonExistingFile);
                    if (family != null && ((name = family.getName()) == null || !oemNamedFamilies.containsKey(name))) {
                        families.add(family);
                    }
                } else if (tag.equals("alias")) {
                    aliases.add(readAlias(parser));
                } else {
                    skip(parser);
                }
            }
        }
        families.addAll(oemNamedFamilies.values());
        Set<String> namedFamilies = new ArraySet<>();
        for (int i = 0; i < families.size(); i++) {
            String name2 = families.get(i).getName();
            if (name2 != null) {
                namedFamilies.add(name2);
            }
        }
        List<FontConfig.Alias> filtered = new ArrayList<>();
        for (int i2 = 0; i2 < aliases.size(); i2++) {
            FontConfig.Alias alias = aliases.get(i2);
            if (namedFamilies.contains(alias.getOriginal())) {
                filtered.add(alias);
            }
        }
        return new FontConfig(families, filtered, lastModifiedDate, configVersion);
    }

    private static boolean keepReading(XmlPullParser parser) throws XmlPullParserException, IOException {
        int next = parser.next();
        return (next == 3 || next == 1) ? false : true;
    }

    public static FontConfig.FontFamily readFamily(XmlPullParser parser, String fontDir, Map<String, File> updatableFontMap, boolean allowNonExistingFile) throws XmlPullParserException, IOException {
        String name = parser.getAttributeValue(null, "name");
        String lang = parser.getAttributeValue("", ATTR_LANG);
        String variant = parser.getAttributeValue(null, "variant");
        String ignore = parser.getAttributeValue(null, "ignore");
        List<FontConfig.Font> fonts = new ArrayList<>();
        while (keepReading(parser)) {
            if (parser.getEventType() == 2) {
                String tag = parser.getName();
                if (tag.equals("font")) {
                    FontConfig.Font font = readFont(parser, fontDir, updatableFontMap, allowNonExistingFile);
                    if (font != null) {
                        fonts.add(font);
                    }
                } else {
                    skip(parser);
                }
            }
        }
        int intVariant = 0;
        if (variant != null) {
            if (variant.equals(VARIANT_COMPACT)) {
                intVariant = 1;
            } else if (variant.equals(VARIANT_ELEGANT)) {
                intVariant = 2;
            }
        }
        boolean skip = ignore != null && (ignore.equals("true") || ignore.equals(IOplusUIFirstManager.APP_START_ANIMATION));
        if (skip || fonts.isEmpty()) {
            return null;
        }
        return new FontConfig.FontFamily(fonts, name, LocaleList.forLanguageTags(lang), intVariant);
    }

    private static FontConfig.Font readFont(XmlPullParser xmlPullParser, String str, Map<String, File> map, boolean z) throws XmlPullParserException, IOException {
        String strSubstring;
        String str2;
        String str3;
        String fontVariationSettings;
        String attributeValue = xmlPullParser.getAttributeValue(null, ATTR_INDEX);
        int i = attributeValue == null ? 0 : Integer.parseInt(attributeValue);
        ArrayList arrayList = new ArrayList();
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "weight");
        int i2 = attributeValue2 == null ? 400 : Integer.parseInt(attributeValue2);
        boolean zEquals = STYLE_ITALIC.equals(xmlPullParser.getAttributeValue(null, "style"));
        String attributeValue3 = xmlPullParser.getAttributeValue(null, ATTR_FALLBACK_FOR);
        String attributeValue4 = xmlPullParser.getAttributeValue(null, ATTR_POSTSCRIPT_NAME);
        StringBuilder sb = new StringBuilder();
        while (keepReading(xmlPullParser)) {
            if (xmlPullParser.getEventType() == 4) {
                sb.append(xmlPullParser.getText());
            }
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(TAG_AXIS)) {
                    arrayList.add(readAxis(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        String strReplaceAll = FILENAME_WHITESPACE_PATTERN.matcher(sb).replaceAll("");
        if (attributeValue4 == null) {
            strSubstring = strReplaceAll.substring(0, strReplaceAll.length() - 4);
        } else {
            strSubstring = attributeValue4;
        }
        String strFindUpdatedFontFile = findUpdatedFontFile(strSubstring, map);
        if (strFindUpdatedFontFile != null) {
            str2 = strFindUpdatedFontFile;
            str3 = str + strReplaceAll;
        } else {
            str2 = str + strReplaceAll;
            str3 = null;
        }
        if (arrayList.isEmpty()) {
            fontVariationSettings = "";
        } else {
            fontVariationSettings = FontVariationAxis.toFontVariationSettings((FontVariationAxis[]) arrayList.toArray(new FontVariationAxis[0]));
        }
        File file = new File(str2);
        String str4 = str3;
        if (!z && !file.isFile()) {
            return null;
        }
        return new FontConfig.Font(file, str4 != null ? new File(str4) : null, strSubstring, new FontStyle(i2, zEquals ? 1 : 0), i, fontVariationSettings, attributeValue3);
    }

    private static String findUpdatedFontFile(String psName, Map<String, File> updatableFontMap) {
        File updatedFile;
        if (updatableFontMap != null && (updatedFile = updatableFontMap.get(psName)) != null) {
            return updatedFile.getAbsolutePath();
        }
        return null;
    }

    private static FontVariationAxis readAxis(XmlPullParser parser) throws XmlPullParserException, IOException {
        String tagStr = parser.getAttributeValue(null, "tag");
        String styleValueStr = parser.getAttributeValue(null, ATTR_STYLEVALUE);
        skip(parser);
        return new FontVariationAxis(tagStr, Float.parseFloat(styleValueStr));
    }

    public static FontConfig.Alias readAlias(XmlPullParser parser) throws XmlPullParserException, IOException, NumberFormatException {
        int weight;
        String name = parser.getAttributeValue(null, "name");
        String toName = parser.getAttributeValue(null, "to");
        String weightStr = parser.getAttributeValue(null, "weight");
        if (weightStr == null) {
            weight = 400;
        } else {
            weight = Integer.parseInt(weightStr);
        }
        skip(parser);
        return new FontConfig.Alias(name, toName, weight);
    }

    public static void skip(XmlPullParser parser) throws XmlPullParserException, IOException {
        int depth = 1;
        while (depth > 0) {
            switch (parser.next()) {
                case 1:
                    return;
                case 2:
                    depth++;
                    break;
                case 3:
                    depth--;
                    break;
            }
        }
    }
}
