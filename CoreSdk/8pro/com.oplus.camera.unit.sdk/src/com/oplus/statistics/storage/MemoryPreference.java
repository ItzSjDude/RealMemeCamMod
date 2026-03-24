package com.oplus.statistics.storage;

import android.text.TextUtils;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MemoryPreference {
    private static final String TAG = "MemoryPreference";
    private Map<String, String> mMemoryPref = new HashMap();

    public String getString(String str, String str2) {
        String str3 = this.mMemoryPref.get(str);
        return TextUtils.isEmpty(str3) ? str2 : str3;
    }

    public void setString(String str, String str2) {
        this.mMemoryPref.put(str, str2);
    }

    public long getLong(final String str, long j) {
        final String str2 = this.mMemoryPref.get(str);
        if (TextUtils.isEmpty(str2)) {
            return j;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.storage.MemoryPreference$$ExternalSyntheticLambda1
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return MemoryPreference.lambda$getLong$0(str, str2, e);
                }
            });
            return j;
        }
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT 
      ("getLong key=")
      (r2v0 java.lang.String)
      (", value=")
      (r3v0 java.lang.String)
      (", exception=")
      (wrap:java.lang.String:0x001a: INVOKE (r4v0 java.lang.NumberFormatException) VIRTUAL call: java.lang.NumberFormatException.toString():java.lang.String A[MD:():java.lang.String (s), WRAPPED])
     A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$getLong$0(String str, String str2, NumberFormatException numberFormatException) {
        return "getLong key=" + str + ", value=" + str2 + ", exception=" + numberFormatException.toString();
    }

    public void setLong(String str, long j) {
        this.mMemoryPref.put(str, String.valueOf(j));
    }

    public int getInt(final String str, int i) {
        final String str2 = this.mMemoryPref.get(str);
        if (TextUtils.isEmpty(str2)) {
            return i;
        }
        try {
            return Integer.parseInt(str2);
        } catch (NumberFormatException e) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.storage.MemoryPreference$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return MemoryPreference.lambda$getInt$1(str, str2, e);
                }
            });
            return i;
        }
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT 
      ("getInt key=")
      (r2v0 java.lang.String)
      (", value=")
      (r3v0 java.lang.String)
      (", exception=")
      (wrap:java.lang.String:0x001a: INVOKE (r4v0 java.lang.NumberFormatException) VIRTUAL call: java.lang.NumberFormatException.toString():java.lang.String A[MD:():java.lang.String (s), WRAPPED])
     A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$getInt$1(String str, String str2, NumberFormatException numberFormatException) {
        return "getInt key=" + str + ", value=" + str2 + ", exception=" + numberFormatException.toString();
    }

    public void setInt(String str, long j) {
        this.mMemoryPref.put(str, String.valueOf(j));
    }
}
