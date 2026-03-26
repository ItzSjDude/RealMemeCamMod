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
        @Override
        public void run() {
            HttpsURLConnection httpsURLConnection = null;
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                String str = this.val$appid + "-" + jCurrentTimeMillis;
                Mac mac = Mac.getInstance("HmacSHA256");
                mac.init(new SecretKeySpec(this.val$secret_key.getBytes(StandardCharsets.UTF_8), "HmacSHA256"));
                String strEncodeToString = Base64.encodeToString(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2);

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

                if (this.result.http_status == 200) {
                    bufferedReader = new BufferedReader(
                            new InputStreamReader(httpsURLConnection.getInputStream(), StandardCharsets.UTF_8));
                    String line;
                    while ((line = bufferedReader.readLine()) != null) {
                        sb.append(line);
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
                } else {
                    Log.e(YTFetchLicenseHelper.TAG, "connection status: " + this.result.http_status);
                }
            } catch (Exception e) {
                Log.e(YTFetchLicenseHelper.TAG, "Error fetching license: " + e.getMessage());
                e.printStackTrace();
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
            }
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
