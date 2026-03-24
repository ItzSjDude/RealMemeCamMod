package com.oplus.compat.os;

import android.os.Parcel;
import android.util.ArraySet;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.ParcelWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class ParcelNative {
    private static final String TAG = "ParcelNative";

    @OplusCompatibleMethod
    private static Object readArraySetCompat(Parcel parcel, ClassLoader classLoader) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object readStringArrayCompat(Parcel parcel) {
        return null;
    }

    @OplusCompatibleMethod
    private static void writeArraySetCompat(Parcel parcel, ArraySet<? extends Object> arraySet) {
    }

    private ParcelNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public static final String[] readStringArray(Parcel parcel) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return parcel.readStringArray();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ParcelWrapper.readStringArray(parcel);
        }
        if (VersionUtils.isQ()) {
            return (String[]) readStringArrayCompat(parcel);
        }
        if (VersionUtils.isL()) {
            return parcel.readStringArray();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static ArraySet<? extends Object> readArraySet(Parcel parcel, ClassLoader classLoader) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return parcel.readArraySet(classLoader);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ParcelWrapper.readArraySet(parcel, classLoader);
        }
        if (VersionUtils.isQ()) {
            return (ArraySet) readArraySetCompat(parcel, classLoader);
        }
        throw new UnSupportedApiVersionException();
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void writeArraySet(Parcel parcel, ArraySet<? extends Object> arraySet) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                parcel.writeArraySet(arraySet);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ParcelWrapper.writeArraySet(parcel, arraySet);
        } else if (VersionUtils.isQ()) {
            writeArraySetCompat(parcel, arraySet);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}
