package com.oplus.statistics.data;

/* JADX INFO: loaded from: classes.dex */
public class SettingKeyBean {
    public static final String DEFAULE_VALUE = "default_value";
    public static final String HTTP_POST_KEY = "http_post_key";
    public static final String METHOD_NAME = "method_name";
    public static final String SETTING_KEY = "setting_key";
    private String mDefaultValue;
    private String mHttpPostKey;
    private String mMethodName;
    private String mSettingKey;

    public SettingKeyBean() {
    }

    public SettingKeyBean(String str, String str2) {
        this.mSettingKey = str;
        this.mMethodName = str2;
    }

    public SettingKeyBean(String str, String str2, String str3) {
        this.mSettingKey = str;
        this.mMethodName = str2;
        this.mHttpPostKey = str3;
    }

    public String getSettingKey() {
        return this.mSettingKey;
    }

    public void setSettingKey(String str) {
        this.mSettingKey = str;
    }

    public String getHttpPostKey() {
        return this.mHttpPostKey;
    }

    public void setHttpPostKey(String str) {
        this.mHttpPostKey = str;
    }

    public String getMethodName() {
        return this.mMethodName;
    }

    public void setMethodName(String str) {
        this.mMethodName = str;
    }

    public String getDefaultValue() {
        return this.mDefaultValue;
    }

    public void setDefaultValue(String str) {
        this.mDefaultValue = str;
    }
}
