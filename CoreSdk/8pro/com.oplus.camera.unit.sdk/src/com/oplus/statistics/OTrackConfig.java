package com.oplus.statistics;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class OTrackConfig {
    public static final OTrackConfig DUMMY = new OTrackConfig();
    public static final int ENV_DEBUG = 1;
    public static final int ENV_RELEASE = 0;
    public static final int HEADER_FLAG_GUID = 4;
    public static final int HEADER_FLAG_IMEI = 1;
    public static final int HEADER_FLAG_PCBA = 2;
    private String mAppName;
    private int mEnv;
    private int mHeaderFlag;
    private String mPackageName;
    private String mVersionName;

    @Retention(RetentionPolicy.SOURCE)
    public @interface EnvType {
    }

    private OTrackConfig() {
        this.mPackageName = "";
        this.mVersionName = "";
        this.mAppName = "";
    }

    private OTrackConfig(Builder builder) {
        this.mPackageName = "";
        this.mVersionName = "";
        this.mAppName = "";
        this.mEnv = builder.env;
        this.mPackageName = builder.packageName;
        this.mVersionName = builder.versionName;
        this.mAppName = builder.appName;
        this.mHeaderFlag = builder.headerFlag;
    }

    public int getEnv() {
        return this.mEnv;
    }

    public int getHeaderFlag() {
        return this.mHeaderFlag;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void setPackageName(String packageName) {
        this.mPackageName = packageName;
    }

    public String getVersionName() {
        return this.mVersionName;
    }

    public void setVersionName(String versionName) {
        this.mVersionName = versionName;
    }

    public String getAppName() {
        return this.mAppName;
    }

    public void setAppName(String appName) {
        this.mAppName = appName;
    }

    public static class Builder {
        private String appName;
        private int env = 0;
        private int headerFlag;
        private String packageName;
        private String versionName;

        public OTrackConfig build() {
            return new OTrackConfig(this);
        }

        public Builder setEnv(int env) {
            this.env = env;
            return this;
        }

        public Builder setPackageName(String packageName) {
            this.packageName = packageName;
            return this;
        }

        public Builder setVersionName(String versionName) {
            this.versionName = versionName;
            return this;
        }

        public Builder setAppName(String appName) {
            this.appName = appName;
            return this;
        }

        public Builder enableImeiHeader() {
            this.headerFlag |= 1;
            return this;
        }

        public Builder enableGuidHeader() {
            this.headerFlag |= 4;
            return this;
        }

        public Builder enablePcbaHeader() {
            this.headerFlag |= 2;
            return this;
        }
    }
}
