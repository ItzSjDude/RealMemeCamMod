package com.oplus.shield.authcode;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.oplus.shield.Constants;
import com.oplus.shield.authcode.info.AuthResult;
import com.oplus.shield.utils.Base64Utils;
import com.oplus.shield.utils.PLog;
import com.oplus.shield.utils.PackageUtils;
import com.oplus.shield.utils.ParseUtils;
import com.oplus.shield.utils.SignVerifyUtils;
import com.oplus.shield.utils.SystemUtils;
/* loaded from: classes.dex */
public class Authentication {
    private static final int CHECK_SUCCESS_CODE = 1;

    @NonNull
    public static AuthResult checkAuthCode(Context context, String str) {
        String appPlatformData = PackageUtils.getAppPlatformData(context, str);
        if (!isPackageNameEmpty(str) || !isAuthCodeEmpty(appPlatformData)) {
            return new AuthResult("", 1004, new byte[0], null);
        }
        try {
            for (String str2 : SystemUtils.getSplitString(appPlatformData, Constants.SEMICOLON_REGEX)) {
                byte[][] checkSingleAuthCode = checkSingleAuthCode(str, str2, context);
                if (checkSingleAuthCode[0][0] == 1) {
                    return new AuthResult(str, 1001, checkSingleAuthCode[1], appPlatformData);
                }
            }
            return new AuthResult(str, 1002, new byte[0], null);
        } catch (Exception e) {
            PLog.e("Check key get exception " + e.getMessage());
            return new AuthResult(str, 1002, new byte[0], null);
        }
    }

    private static boolean isPackageNameEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            PLog.e("Get target packageName is empty");
            return false;
        }
        return true;
    }

    private static boolean isAuthCodeEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            PLog.e("Get target application authCode is empty");
            return false;
        }
        return true;
    }

    private static byte[][] checkSingleAuthCode(String str, String str2, Context context) {
        byte[][] bArr = {new byte[]{0}};
        try {
            if (isSignerSuccess(str, str2, context)) {
                return new byte[][]{new byte[]{1}, getPermission(str2), getExpiration(str2)};
            }
            PLog.i("Signature verify failed.");
            return bArr;
        } catch (Exception e) {
            PLog.e("Check key get exception " + e.getMessage());
            return bArr;
        }
    }

    private static boolean isSignerSuccess(String str, String str2, Context context) {
        byte[] base642Byte = Base64Utils.base642Byte(str2);
        byte[] parseVersion = ParseUtils.parseVersion(base642Byte);
        byte[] bArr = {8};
        int byte2int = SystemUtils.byte2int(ParseUtils.parsePermissionLength(base642Byte));
        return SignVerifyUtils.isVerify(context, str, parseVersion, byte2int, bArr, ParseUtils.parseExpiration(base642Byte, byte2int), ParseUtils.parsePermission(base642Byte, byte2int), ParseUtils.parseDigest(base642Byte, byte2int));
    }

    private static byte[] getPermission(String str) {
        byte[] base642Byte = Base64Utils.base642Byte(str);
        return ParseUtils.parsePermission(base642Byte, SystemUtils.byte2int(ParseUtils.parsePermissionLength(base642Byte)));
    }

    private static byte[] getExpiration(String str) {
        byte[] base642Byte = Base64Utils.base642Byte(str);
        return ParseUtils.parseExpiration(base642Byte, SystemUtils.byte2int(ParseUtils.parsePermissionLength(base642Byte)));
    }
}
