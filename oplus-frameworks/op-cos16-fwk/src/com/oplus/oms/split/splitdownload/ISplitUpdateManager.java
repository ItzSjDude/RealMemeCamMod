package com.oplus.oms.split.splitdownload;

import android.content.Context;
import java.util.List;

public interface ISplitUpdateManager {
    long getLastUpdateTime();

    SplitUpdateInfo getSplitUpdateInfo(String str);

    boolean queryVersionFromCloud(Context context, List<DownloadRequest> list, boolean z);
}
