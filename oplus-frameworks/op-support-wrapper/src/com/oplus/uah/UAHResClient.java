package com.oplus.uah;

import android.util.Log;

public class UAHResClient {
    private static final String TAG = "UAHResClientShim";
    private static volatile UAHResClient sInstance;

    public static UAHResClient getInstance() {
        if (sInstance == null) {
            synchronized (UAHResClient.class) {
                if (sInstance == null) {
                    sInstance = new UAHResClient();
                }
            }
        }
        return sInstance;
    }

    public static UAHResClient get(Class clz) {
        return getInstance();
    }

    public void setUahConfig(int i, int i2, String str) {
        Log.d(TAG, "setUahConfig: type=" + i + ", value=" + i2 + ", pkg=" + str);
    }

    public int setUahConfig(int i, String str) {
        Log.d(TAG, "setUahConfig: type=" + i + ", pkg=" + str);
        return 0;
    }

    public int releaseUahConfig() {
        Log.d(TAG, "releaseUahConfig");
        return 0;
    }
}
