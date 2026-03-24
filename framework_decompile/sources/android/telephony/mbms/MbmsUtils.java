package android.telephony.mbms;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.telecom.Logging.Session;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public class MbmsUtils {
    private static final String LOG_TAG = "MbmsUtils";

    public static boolean isContainedIn(File parent, File child) throws IOException {
        try {
            String parentPath = parent.getCanonicalPath();
            String childPath = child.getCanonicalPath();
            return childPath.startsWith(parentPath);
        } catch (IOException e) {
            throw new RuntimeException("Failed to resolve canonical paths: " + e);
        }
    }

    public static ComponentName toComponentName(ComponentInfo ci) {
        return new ComponentName(ci.packageName, ci.name);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.ComponentName getOverrideServiceName(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            int r1 = r6.hashCode()
            switch(r1) {
                case -1374878107: goto L1d;
                case -407466459: goto L13;
                case 1752202112: goto L9;
                default: goto L8;
            }
        L8:
            goto L27
        L9:
            java.lang.String r1 = "android.telephony.action.EmbmsGroupCall"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L8
            r1 = 2
            goto L28
        L13:
            java.lang.String r1 = "android.telephony.action.EmbmsDownload"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L8
            r1 = 0
            goto L28
        L1d:
            java.lang.String r1 = "android.telephony.action.EmbmsStreaming"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L8
            r1 = 1
            goto L28
        L27:
            r1 = -1
        L28:
            switch(r1) {
                case 0: goto L34;
                case 1: goto L30;
                case 2: goto L2c;
                default: goto L2b;
            }
        L2b:
            goto L38
        L2c:
            java.lang.String r0 = "mbms-group-call-service-override"
            goto L38
        L30:
            java.lang.String r0 = "mbms-streaming-service-override"
            goto L38
        L34:
            java.lang.String r0 = "mbms-download-service-override"
        L38:
            r1 = 0
            if (r0 != 0) goto L3c
            return r1
        L3c:
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5e
            java.lang.String r3 = r5.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5e
            r4 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5e
            android.os.Bundle r3 = r2.metaData
            if (r3 != 0) goto L50
            return r1
        L50:
            android.os.Bundle r3 = r2.metaData
            java.lang.String r3 = r3.getString(r0)
            if (r3 != 0) goto L59
            return r1
        L59:
            android.content.ComponentName r1 = android.content.ComponentName.unflattenFromString(r3)
            return r1
        L5e:
            r2 = move-exception
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.mbms.MbmsUtils.getOverrideServiceName(android.content.Context, java.lang.String):android.content.ComponentName");
    }

    public static android.content.pm.ServiceInfo getMiddlewareServiceInfo(Context context, String serviceAction) {
        List<ResolveInfo> services;
        PackageManager packageManager = context.getPackageManager();
        Intent queryIntent = new Intent();
        queryIntent.setAction(serviceAction);
        ComponentName overrideService = getOverrideServiceName(context, serviceAction);
        if (overrideService == null) {
            services = packageManager.queryIntentServices(queryIntent, 1048576);
        } else {
            queryIntent.setComponent(overrideService);
            services = packageManager.queryIntentServices(queryIntent, 131072);
        }
        if (services == null || services.size() == 0) {
            Log.w(LOG_TAG, "No MBMS services found, cannot get service info");
            return null;
        }
        if (services.size() > 1) {
            Log.w(LOG_TAG, "More than one MBMS service found, cannot get unique service");
            return null;
        }
        return services.get(0).serviceInfo;
    }

    public static int startBinding(Context context, String serviceAction, ServiceConnection serviceConnection) {
        Intent bindIntent = new Intent();
        android.content.pm.ServiceInfo mbmsServiceInfo = getMiddlewareServiceInfo(context, serviceAction);
        if (mbmsServiceInfo == null) {
            return 1;
        }
        bindIntent.setComponent(toComponentName(mbmsServiceInfo));
        context.bindService(bindIntent, serviceConnection, 1);
        return 0;
    }

    public static File getEmbmsTempFileDirForService(Context context, String serviceId) {
        String sanitizedServiceId = serviceId.replaceAll("[^a-zA-Z0-9_]", Session.SESSION_SEPARATION_CHAR_CHILD);
        File embmsTempFileDir = MbmsTempFileProvider.getEmbmsTempFileDir(context);
        return new File(embmsTempFileDir, sanitizedServiceId);
    }
}
