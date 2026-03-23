package com.oplus.shield.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes.dex */
public class CertUtils {
    private static final String CERTIFICATE_FOMAT_X509 = "X509";

    @Target({ElementType.PARAMETER})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    private @interface TargetAlgorithm {
    }

    public static String getCertificateSHA1(Context context, String str) {
        return getCertificateWithAlgorithm(context, "SHA1", str);
    }

    public static String getCertificateSHA256(Context context, String str) {
        return getCertificateWithAlgorithm(context, "SHA256", str);
    }

    public static byte[] covertByteDigestNoSha1(String str, String str2) {
        String replaceColon = replaceColon(str2);
        return (str + replaceColon).getBytes(StandardCharsets.UTF_8);
    }

    public static String getSignaturesSHA256(PackageInfo packageInfo) {
        Signature[] signatureArr = packageInfo.signatures;
        return (signatureArr == null || signatureArr.length <= 0) ? "" : getSingleCertificate(signatureArr[0].toByteArray(), "SHA256");
    }

    private static String getCertificateWithAlgorithm(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT < 28) {
            Signature[] packageSignatures = getPackageSignatures(context, str2);
            return (packageSignatures == null || packageSignatures.length <= 0) ? "" : getSingleCertificate(packageSignatures[0].toByteArray(), str);
        }
        SigningInfo packageSigningInfo = getPackageSigningInfo(context, str2);
        if (packageSigningInfo == null) {
            return "";
        }
        Signature[] apkContentsSigners = packageSigningInfo.getApkContentsSigners();
        if (apkContentsSigners.length == 1) {
            return getSingleCertificate(apkContentsSigners[0].toByteArray(), str);
        }
        if (packageSigningInfo.hasMultipleSigners()) {
            return mergeMultipleCertificateString(apkContentsSigners, str);
        }
        return getSingleCertificate(apkContentsSigners[0].toByteArray(), str);
    }

    @SuppressLint({"NewApi"})
    private static SigningInfo getPackageSigningInfo(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 134217728);
        } catch (PackageManager.NameNotFoundException e) {
            PLog.e("get packageInfo exception " + e.getMessage());
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.signingInfo;
    }

    private static Signature[] getPackageSignatures(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            PLog.e("get packageInfo exception " + e.getMessage());
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.signatures;
    }

    private static String getSingleCertificate(byte[] bArr, String str) {
        return getHexStringCertificate(getCertificateFromFactory(getCertificateFactory(), new ByteArrayInputStream(bArr)), str);
    }

    private static String replaceColon(String str) {
        return str.contains(":") ? str.replaceAll(":", "") : str;
    }

    private static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    private static CertificateFactory getCertificateFactory() {
        try {
            return CertificateFactory.getInstance(CERTIFICATE_FOMAT_X509);
        } catch (Exception e) {
            PLog.e("get instance of CertificateFactory exception " + e.getMessage());
            return null;
        }
    }

    private static X509Certificate getCertificateFromFactory(CertificateFactory certificateFactory, InputStream inputStream) {
        if (certificateFactory != null) {
            try {
                return (X509Certificate) certificateFactory.generateCertificate(inputStream);
            } catch (Exception e) {
                PLog.e("get X509Certificate from CertificateFactory exception " + e.getMessage());
                return null;
            }
        }
        return null;
    }

    private static String getHexStringCertificate(X509Certificate x509Certificate, String str) {
        try {
            return x509Certificate != null ? byte2HexFormatted(MessageDigest.getInstance(str).digest(x509Certificate.getEncoded())) : "";
        } catch (NoSuchAlgorithmException | CertificateEncodingException e) {
            PLog.e("getHexStringCertificate from X509Certificate exception " + e.getMessage());
            return "";
        }
    }

    private static String mergeMultipleCertificateString(Signature[] signatureArr, String str) {
        String[] strArr = new String[signatureArr.length];
        for (int i = 0; i < signatureArr.length; i++) {
            strArr[i] = getSingleCertificate(signatureArr[i].toByteArray(), str);
        }
        Arrays.sort(strArr);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (i2 != strArr.length - 1) {
                sb.append(strArr[i2]);
                sb.append(":");
            } else {
                sb.append(strArr[i2]);
            }
        }
        return sb.toString();
    }
}
