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

/* loaded from: classes.dex */
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
     * renamed from:
     * com.tencent.youtu.xsdk.YTFetchLicenseHelper$1FetchThreadRunnable reason:
     * invalid class name
     */
    /* loaded from: classes.dex */
    class C1FetchThreadRunnable implements Runnable {
        FetchLicenseResult result;
        final /* synthetic */ String val$appid;
        final /* synthetic */ String val$secret_key;
        final /* synthetic */ String val$url_str;
        final /* synthetic */ String val$var6;
        final /* synthetic */ String val$var7;
        final /* synthetic */ String val$var8;
        final /* synthetic */ String val$var9;

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
            this.result = new FetchLicenseResult();
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpsURLConnection httpsURLConnection;
            BufferedReader bufferedReader = null;
            try {
                try {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Mac mac = Mac.getInstance("HmacSHA256");
                    mac.init(new SecretKeySpec(this.val$secret_key.getBytes(StandardCharsets.UTF_8), "HmacSHA256"));
                    String encodeToString = Base64.encodeToString(
                            mac.doFinal((this.val$appid + "-" + currentTimeMillis).getBytes(StandardCharsets.UTF_8)),
                            2);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("app_id", this.val$appid);
                    jSONObject.put("auth_string", encodeToString);
                    jSONObject.put("machine_type", this.val$var7);
                    jSONObject.put("machine_id", this.val$var6);
                    jSONObject.put("machine_info", this.val$var8);
                    jSONObject.put(ApsParameters.KEY_PACKAGE_NAME, this.val$var9);
                    jSONObject.put("time_stamp", currentTimeMillis);
                    String jSONObject2 = jSONObject.toString();
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
                        dataOutputStream.write(jSONObject2.getBytes(StandardCharsets.UTF_8));
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        this.result.http_status = httpsURLConnection.getResponseCode();
                        if (this.result.http_status == 200) {
                            BufferedReader bufferedReader2 = new BufferedReader(
                                    new InputStreamReader(httpsURLConnection.getInputStream(), StandardCharsets.UTF_8));
                            try {
                                StringBuilder sb = new StringBuilder();
                                while (true) {
                                    String readLine = bufferedReader2.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb.append(readLine);
                                }
                                JSONObject jSONObject3 = new JSONObject(sb.toString());
                                if (jSONObject3.has("error_code")) {
                                    this.result.error_code = jSONObject3.optInt("error_code");
                                    this.result.error_msg = jSONObject3.optString("error_msg");
                                    if (this.result.error_code == 0) {
                                        this.result.license = jSONObject3.optString("license");
                                        this.result.bind_type = jSONObject3.optString("bind_type");
                                        this.result.auth_type = jSONObject3.optString("auth_type");
                                    }
                                }
                                bufferedReader = bufferedReader2;
                            } catch (MalformedURLException e) {
                                e = e;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (ProtocolException e3) {
                                e = e3;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (SocketTimeoutException e5) {
                                e = e5;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (IOException e7) {
                                e = e7;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e8) {
                                        e8.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (InvalidKeyException e9) {
                                e = e9;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (NoSuchAlgorithmException e11) {
                                e = e11;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (JSONException e13) {
                                e = e13;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e15) {
                                        e15.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection != null) {
                                    httpsURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } else {
                            Log.e(YTFetchLicenseHelper.TAG, "connection status: " + this.result.http_status);
                        }
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
                    } catch (MalformedURLException e17) {
                    } catch (ProtocolException e18) {
                    } catch (SocketTimeoutException e19) {
                    } catch (IOException e20) {
                    } catch (InvalidKeyException e21) {
                    } catch (NoSuchAlgorithmException e22) {
                    } catch (JSONException e23) {
                    }
                } catch (Throwable th2) {
                }
            } catch (MalformedURLException e24) {
                httpsURLConnection = null;
            } catch (ProtocolException e25) {
                httpsURLConnection = null;
            } catch (SocketTimeoutException e26) {
                httpsURLConnection = null;
            } catch (IOException e27) {
                httpsURLConnection = null;
            } catch (InvalidKeyException e28) {
                httpsURLConnection = null;
            } catch (NoSuchAlgorithmException e29) {
                httpsURLConnection = null;
            } catch (JSONException e30) {
                httpsURLConnection = null;
            } catch (Throwable th3) {
                httpsURLConnection = null;
            }
            if (httpsURLConnection != null) {
                httpsURLConnection.disconnect();
            }
        }
    }

    /* loaded from: classes.dex */
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
