package com.oplus.shield.utils;

import android.content.Context;
import com.oplus.shield.Constants;
import com.oplus.shield.authcode.info.PublicKeyInfo;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class SignVerifyUtils {
    private static final int PERMISSION_LENGTH_BYTE_LEN = 4;
    private static final int RESERVED_BYTE_LEN = 4;
    private static final int VERSION_BYTE_LEN = 2;

    public static boolean isVerify(Context context, String str, byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        boolean z;
        byte[] targetSignerBytes = getTargetSignerBytes(context, str, bArr, i, bArr2, bArr3, bArr4);
        try {
            Signature signature = Signature.getInstance("SHA256withECDSA");
            List<PublicKeyInfo> publicKeyInfos = getPublicKeyInfos();
            z = false;
            for (int i2 = 0; i2 < publicKeyInfos.size(); i2++) {
                try {
                    if (Constants.PUBLIC_KEY_STATUS_OK.equals(publicKeyInfos.get(i2).getStatus())) {
                        boolean isSignerSuccess = isSignerSuccess(publicKeyInfos.get(i2).getPublicKey(), signature, targetSignerBytes, bArr5);
                        if (isSignerSuccess) {
                            return true;
                        }
                        z = isSignerSuccess;
                    }
                } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
                    e = e;
                    e.printStackTrace();
                    PLog.e("Verify signing get an exception is " + e.getMessage());
                    return z;
                }
            }
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e2) {
            e = e2;
            z = false;
        }
        return z;
    }

    private static boolean isSignerSuccess(String str, Signature signature, byte[] bArr, byte[] bArr2) throws InvalidKeyException, SignatureException {
        PublicKey convertPublicKey = convertPublicKey(Base64Utils.base642Byte(str), "EC");
        if (convertPublicKey == null) {
            return false;
        }
        signature.initVerify(convertPublicKey);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    private static List<PublicKeyInfo> getPublicKeyInfos() {
        ArrayList arrayList = new ArrayList();
        PublicKeyInfo publicKeyInfo = new PublicKeyInfo();
        publicKeyInfo.setPublicKey(Constants.OPLUS_PUBLIC_CODE);
        publicKeyInfo.setStatus(Constants.PUBLIC_KEY_STATUS_OK);
        arrayList.add(publicKeyInfo);
        return arrayList;
    }

    private static PublicKey convertPublicKey(byte[] bArr, String str) {
        try {
            return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            PLog.e("convertPublicKey get exception - " + e.getMessage());
            return null;
        }
    }

    private static byte[] getTargetSignerBytes(Context context, String str, byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte[] covertByteDigestNoSha1 = CertUtils.covertByteDigestNoSha1(str, CertUtils.getCertificateSHA1(context, str));
        byte[] bArr5 = new byte[covertByteDigestNoSha1.length + i + 2 + 4 + 4];
        SystemUtils.arraycopy(bArr, 0, bArr5, 0, 1);
        SystemUtils.arraycopy(bArr2, 0, bArr5, 1, 1);
        SystemUtils.arraycopy(covertByteDigestNoSha1, 0, bArr5, 2, covertByteDigestNoSha1.length);
        SystemUtils.arraycopy(bArr3, 0, bArr5, covertByteDigestNoSha1.length + 2, 4);
        SystemUtils.arraycopy(bArr4, 0, bArr5, covertByteDigestNoSha1.length + 6, i);
        SystemUtils.arraycopy(SystemUtils.int2byte(i), 0, bArr5, covertByteDigestNoSha1.length + i + 6, 4);
        return bArr5;
    }
}
