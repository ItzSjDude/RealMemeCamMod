package com.oppo.inner.content.res;

import android.content.res.Configuration;
import android.content.res.OplusBaseConfiguration;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;
import com.oplus.inner.content.res.ConfigurationWrapper;

public class ConfigurationWrapper {
    public static void setFlipFont(Configuration configuration, int flipfont) {
        ConfigurationWrapper.setFlipFont(configuration, flipfont);
    }

    public static int getFlipFont(Configuration configuration) {
        return ConfigurationWrapper.getFlipFont(configuration);
    }

    public static int getThemeChanged(Configuration configuration) {
        return ConfigurationWrapper.getThemeChanged(configuration);
    }

    public static void setThemeChanged(Configuration configuration, int val) {
        ConfigurationWrapper.setThemeChanged(configuration, val);
    }

    public static long getThemeChangedFlags(Configuration configuration) {
        return ConfigurationWrapper.getThemeChangedFlags(configuration);
    }

    public static void setThemeChangedFlags(Configuration configuration, long val) {
        ConfigurationWrapper.setThemeChangedFlags(configuration, val);
    }

    public static int getAccessibleChanged(Configuration configuration) {
        return ConfigurationWrapper.getAccessibleChanged(configuration);
    }

    public static void setAccessibleChanged(Configuration configuration, int val) {
        ConfigurationWrapper.setAccessibleChanged(configuration, val);
    }

    public static long getUxIconConfig(Configuration configuration) {
        return ConfigurationWrapper.getUxIconConfig(configuration);
    }

    public static void setUxIconConfig(Configuration configuration, long val) {
        ConfigurationWrapper.setUxIconConfig(configuration, val);
    }

    public static long getMaterialColor(Configuration configuration) {
        return ConfigurationWrapper.getMaterialColor(configuration);
    }

    public static void setMaterialColor(Configuration configuration, long val) {
        ConfigurationWrapper.setMaterialColor(configuration, val);
    }

    public static String getIconPackName(Configuration configuration) {
        return ConfigurationWrapper.getIconPackName(configuration);
    }

    public static void setIconPackName(Configuration configuration, String val) {
        ConfigurationWrapper.setIconPackName(configuration, val);
    }

    public static String getCustomThemePath(Configuration configuration) {
        return ConfigurationWrapper.getCustomThemePath(configuration);
    }

    public static void setCustomThemePath(Configuration configuration, String val) {
        ConfigurationWrapper.setCustomThemePath(configuration, val);
    }

    public static void setDarkModeStyleArgs(Configuration configuration, float bgMaxL, float fgMaxL, float dialogBgMaxL) {
        ConfigurationWrapper.setDarkModeStyleArgs(configuration, bgMaxL, fgMaxL, dialogBgMaxL);
    }

    public static boolean isDarkModeIconOpen(Configuration configuration) {
        return ConfigurationWrapper.isDarkModeIconOpen(configuration);
    }

    public static void toggleDarkModeIconConfig(Configuration configuration) {
        ConfigurationWrapper.toggleDarkModeIconConfig(configuration);
    }

}