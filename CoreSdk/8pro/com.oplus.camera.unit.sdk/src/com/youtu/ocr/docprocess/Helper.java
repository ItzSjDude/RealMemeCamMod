package com.youtu.ocr.docprocess;

/* JADX INFO: loaded from: classes.dex */
public class Helper {
    public static final Helper sharedInstance = new Helper();

    public String getAARVersion() {
        return "2021_11_11.1.3.3.9";
    }

    public native String getSDKVersion();
}
