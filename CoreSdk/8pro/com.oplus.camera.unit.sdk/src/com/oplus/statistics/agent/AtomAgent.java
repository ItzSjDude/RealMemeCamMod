package com.oplus.statistics.agent;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.statistics.data.CommonBean;
import com.oplus.statistics.data.TrackEvent;
import com.oplus.statistics.util.ApkInfoUtil;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class AtomAgent {
    private static final String APP_ID = "appId";
    private static final String APP_PACKAGE = "appPackage";
    private static final Uri ATOM_DELEGATE = Uri.parse("content://com.oplus.atom.db_sys/atom_delegate");
    private static final String EVENT_ID = "eventID";
    private static final String LOG_MAP = "logMap";
    private static final String LOG_TAG = "logTag";
    private static final String TAG = "AtomAgent";

    public static void recordAtomCommon(Context context, CommonBean commonBean) {
        addTaskForAtom(context, commonBean);
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT 
      ("AtomAgent add Task error -- bean or context is null--")
      (r2v0 com.oplus.statistics.data.TrackEvent)
      (wrap:java.lang.String:SGET  A[WRAPPED] com.oplus.ocs.camera.common.util.CameraConstant.JSON_CONNECTOR_COMMA java.lang.String)
      (r3v0 android.content.Context)
     A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$addTaskForAtom$0(TrackEvent trackEvent, Context context) {
        return "AtomAgent add Task error -- bean or context is null--" + trackEvent + CameraConstant.JSON_CONNECTOR_COMMA + context;
    }

    private static void addTaskForAtom(final Context context, final TrackEvent trackEvent) {
        if (trackEvent == null || context == null) {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.agent.AtomAgent$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return AtomAgent.lambda$addTaskForAtom$0(trackEvent, context);
                }
            });
            return;
        }
        CommonBean commonBean = (CommonBean) trackEvent;
        ContentValues contentValues = new ContentValues();
        contentValues.put(APP_ID, Integer.valueOf(commonBean.getAppID()));
        contentValues.put(APP_PACKAGE, ApkInfoUtil.getPackageName(context));
        contentValues.put(LOG_TAG, commonBean.getLogTag());
        contentValues.put(EVENT_ID, commonBean.getEventID());
        contentValues.put(LOG_MAP, commonBean.getLogMap());
        try {
            context.getContentResolver().insert(ATOM_DELEGATE, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
