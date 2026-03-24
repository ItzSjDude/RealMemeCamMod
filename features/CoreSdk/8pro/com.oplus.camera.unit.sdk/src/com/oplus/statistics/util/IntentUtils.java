package com.oplus.statistics.util;

import android.content.Intent;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class IntentUtils {
    private static final String TAG = "IntentUtils";

    public static boolean getBooleanExtra(Intent intent, String str, boolean z) {
        try {
            return intent.getBooleanExtra(str, z);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.IntentUtils$$ExternalSyntheticLambda2
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return IntentUtils.lambda$getBooleanExtra$0(e);
                }
            });
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getBooleanExtra$0(Exception exc) {
        return "intent getBooleanExtra exception:" + exc;
    }

    public static String getStringExtra(Intent intent, String str) {
        try {
            return intent.getStringExtra(str);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.IntentUtils$$ExternalSyntheticLambda3
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return IntentUtils.lambda$getStringExtra$1(e);
                }
            });
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getStringExtra$1(Exception exc) {
        return "intent getStringExtra exception:" + exc;
    }

    public static int getIntExtra(Intent intent, String str, int i) {
        try {
            return intent.getIntExtra(str, i);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.IntentUtils$$ExternalSyntheticLambda1
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return IntentUtils.lambda$getIntExtra$2(e);
                }
            });
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getIntExtra$2(Exception exc) {
        return "intent getIntExtra exception:" + exc;
    }

    public static long getLongExtra(Intent intent, String str, long j) {
        try {
            return intent.getLongExtra(str, j);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.IntentUtils$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return IntentUtils.lambda$getLongExtra$3(e);
                }
            });
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getLongExtra$3(Exception exc) {
        return "intent getLongExtra exception:" + exc;
    }

    public static ArrayList<String> getStringArrayListExtra(Intent intent, String str) {
        try {
            return intent.getStringArrayListExtra(str);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.IntentUtils$$ExternalSyntheticLambda4
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return IntentUtils.lambda$getStringArrayListExtra$4(e);
                }
            });
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getStringArrayListExtra$4(Exception exc) {
        return "intent getStringArrayListExtra exception:" + exc;
    }
}
