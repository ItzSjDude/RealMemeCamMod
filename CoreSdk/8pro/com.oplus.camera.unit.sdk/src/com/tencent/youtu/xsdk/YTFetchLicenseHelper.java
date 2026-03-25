package com.tencent.youtu.xsdk;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.statistics.DataTypeConstants;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class YTFetchLicenseHelper {
    private static String TAG = "YTCommon_FetchLicense";

    public FetchLicenseResult fetchLicenseOnline(Context context, String str, String str2, String str3,
            YTDeviceInfo yTDeviceInfo) {
        C1FetchThreadRunnable c1FetchThreadRunnable = new C1FetchThreadRunnable(str2, str3,
                yTDeviceInfo == null ? "ANDROID" : yTDeviceInfo.platform,
                yTDeviceInfo == null ? "" : yTDeviceInfo.device_id,
                yTDeviceInfo != null ? yTDeviceInfo.device_info_encrypted : "", context.getPackageName(), str);
        Thread thread = new Thread(c1FetchThreadRunnable);
        try {
            thread.start();
            thread.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return c1FetchThreadRunnable.result;
    }

    /*
     * JADX INFO: renamed from:
     * com.tencent.youtu.xsdk.YTFetchLicenseHelper$1FetchThreadRunnable, reason:
     * invalid class name
     */
    class C1FetchThreadRunnable implements Runnable {
        FetchLicenseResult result;
        final /* synthetic */ String val$appid;
        final /* synthetic */ String val$secret_key;
        final /* synthetic */ String val$url_str;
        final /* synthetic */ String val$var6;
        final /* synthetic */ String val$var7;
        final /* synthetic */ String val$var8;
        final /* synthetic */ String val$var9;

        /* JADX DEBUG: Incorrect args count in method signature: ()V */
        C1FetchThreadRunnable(String str, String str2, String str3, String str4, String str5, String str6,
                String str7) {
            this.val$appid = str;
            this.val$secret_key = str2;
            this.val$var7 = str3;
            this.val$var6 = str4;
            this.val$var8 = str5;
            this.val$var9 = str6;
            this.val$url_str = str7;
            Objects.requireNonNull(YTFetchLicenseHelper.this);
            this.result = YTFetchLicenseHelper.this.new FetchLicenseResult();
        }

        /* JADX DEBUG: Don't trust debug lines info. Repeating lines: [120=9, 122=9] */
        @Override // java.lang.Runnable
        public void run() {
            HttpsURLConnection httpsURLConnection;
            StringBuilder sb;
            BufferedReader bufferedReader = null;
            try {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    String str = this.val$appid + "-" + jCurrentTimeMillis;
                    Mac mac = Mac.getInstance("HmacSHA256");
                    mac.init(new SecretKeySpec(this.val$secret_key.getBytes(StandardCharsets.UTF_8), "HmacSHA256"));
                    String strEncodeToString = Base64.encodeToString(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)),
                            2);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("app_id", this.val$appid);
                    jSONObject.put("auth_string", strEncodeToString);
                    jSONObject.put("machine_type", this.val$var7);
                    jSONObject.put("machine_id", this.val$var6);
                    jSONObject.put("machine_info", this.val$var8);
                    jSONObject.put(ApsParameters.KEY_PACKAGE_NAME, this.val$var9);
                    jSONObject.put("time_stamp", jCurrentTimeMillis);
                    String string = jSONObject.toString();
                    httpsURLConnection = (HttpsURLConnection) new URL(this.val$url_str).openConnection();
                    try {
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setUseCaches(false);
                        httpsURLConnection.setInstanceFollowRedirects(false);
                        httpsURLConnection.setRequestProperty("Content-type", "application/json");
                        httpsURLConnection.setConnectTimeout(5000);
                        httpsURLConnection.setReadTimeout(5000);
                        httpsURLConnection.connect();
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.write(string.getBytes(StandardCharsets.UTF_8));
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        this.result.http_status = httpsURLConnection.getResponseCode();
                    } catch (MalformedURLException e) {
                        e = e;
                    } catch (ProtocolException e2) {
                        e = e2;
                    } catch (SocketTimeoutException e3) {
                        e = e3;
                    } catch (IOException e4) {
                        e = e4;
                    } catch (InvalidKeyException e5) {
                        e = e5;
                    } catch (NoSuchAlgorithmException e6) {
                        e = e6;
                    } catch (JSONException e7) {
                        e = e7;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (MalformedURLException e8) {
                e = e8;
                httpsURLConnection = null;
            } catch (ProtocolException e9) {
                e = e9;
                httpsURLConnection = null;
            } catch (SocketTimeoutException e10) {
                e = e10;
                httpsURLConnection = null;
            } catch (IOException e11) {
                e = e11;
                httpsURLConnection = null;
            } catch (InvalidKeyException e12) {
                e = e12;
                httpsURLConnection = null;
            } catch (NoSuchAlgorithmException e13) {
                e = e13;
                httpsURLConnection = null;
            } catch (JSONException e14) {
                e = e14;
                httpsURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                httpsURLConnection = null;
            }
            if (this.result.http_status == 200) {
                BufferedReader bufferedReader2 = new BufferedReader(
                        new InputStreamReader(httpsURLConnection.getInputStream(), StandardCharsets.UTF_8));
                try {
                    sb = new StringBuilder();
                } catch (MalformedURLException e15) {
                    e = e15;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e16) {
                            e16.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (ProtocolException e17) {
                    e = e17;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e18) {
                            e18.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (SocketTimeoutException e19) {
                    e = e19;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e20) {
                            e20.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (IOException e21) {
                    e = e21;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (InvalidKeyException e23) {
                    e = e23;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e24) {
                            e24.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (NoSuchAlgorithmException e25) {
                    e = e25;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e26) {
                            e26.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (JSONException e27) {
                    e = e27;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e28) {
                            e28.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e29) {
                            e29.printStackTrace();
                        }
                    }
                    if (httpsURLConnection == null) {
                        throw new RuntimeException(th);
                    }
                    httpsURLConnection.disconnect();
                    throw new RuntimeException(th);
                }
                while (true) {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                    httpsURLConnection.disconnect();
                }
                JSONObject jSONObject2 = new JSONObject(sb.toString());
                if (jSONObject2.has("error_code")) {
                    this.result.error_code = jSONObject2.optInt("error_code");
                    this.result.error_msg = jSONObject2.optString("error_msg");
                    if (this.result.error_code == 0) {
                        this.result.license = jSONObject2.optString("license");
                        this.result.bind_type = jSONObject2.optString("bind_type");
                        this.result.auth_type = jSONObject2.optString("auth_type");
                    }
                }
                bufferedReader = bufferedReader2;
            } else {
                Log.e(YTFetchLicenseHelper.TAG, "connection status: " + this.result.http_status);
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e30) {
                    e30.printStackTrace();
                }
            }
            if (httpsURLConnection == null) {
                return;
            }
            httpsURLConnection.disconnect();
        }
    }

    public class FetchLicenseResult {
        public int error_code = DataTypeConstants.APP_LOG;
        public int http_status = -1;
        public String error_msg = "";
        public String license = "";
        public String bind_type = "";
        public String auth_type = "";

        public FetchLicenseResult() {
        }
    }
}
