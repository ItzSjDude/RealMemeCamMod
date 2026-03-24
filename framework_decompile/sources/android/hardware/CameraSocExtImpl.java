package android.hardware;

import android.app.ActivityThread;
import android.os.SystemProperties;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class CameraSocExtImpl implements ICameraSocExt {
    public CameraSocExtImpl(Object o) {
    }

    @Override // android.hardware.ICameraSocExt
    public boolean needExposeAuxCamera() {
        String packageName = ActivityThread.currentOpPackageName();
        String packageList = SystemProperties.get("vendor.camera.aux.packagelist");
        if (packageList.length() > 0) {
            TextUtils.StringSplitter splitter = new TextUtils.SimpleStringSplitter(',');
            splitter.setString(packageList);
            for (String str : splitter) {
                if (packageName.equals(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
