package com.oplus.oms.split.splitinstall;

import android.content.Context;
import android.content.Intent;
import com.oplus.oms.split.common.SplitConstants;
import com.oplus.oms.split.splitrequest.SplitInfo;
import java.util.ArrayList;
import java.util.List;


public class SplitInstallerImpl implements SplitInstaller {
    private static final String TAG = "SplitInstallerImpl";
    private final Context mAppContext;
    private final SplitInstallSessionManager mSessionManager;

    
    public SplitInstallerImpl(Context context, SplitInstallSessionManager sessionManager) {
        this.mAppContext = context;
        this.mSessionManager = sessionManager;
    }

    @Override // com.oplus.oms.split.splitinstall.SplitInstaller
    public void install(int sessionId, List<SplitVersionInfo> splitInfoList) {
        startCopyAndExtractLib(sessionId, splitInfoList);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010a A[Catch: all -> 0x00ae, TryCatch #2 {all -> 0x00ae, blocks: (B:6:0x008a, B:8:0x0091, B:13:0x00cf, B:16:0x010e, B:27:0x010a, B:32:0x00b5, B:35:0x00ca, B:36:0x00cd), top: B:5:0x008a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void startCopyAndExtractLib(int r19, java.util.List<com.oplus.oms.split.splitinstall.SplitVersionInfo> r20) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.oms.split.splitinstall.SplitInstallerImpl.startCopyAndExtractLib(int, java.util.List):void");
    }

    @Override // com.oplus.oms.split.splitinstall.SplitInstaller
    public void skipInstall(int sessionId, SplitInstallInternalSessionState state) {
        onInstallComplete(sessionId, state);
    }

    private void onInstallComplete(int sessionId, SplitInstallInternalSessionState state) {
        if (state == null) {
            state = this.mSessionManager.getSessionState(sessionId);
        }
        List<SplitInfo> needInstalledSplits = state.needInstalledSplits();
        List<Intent> splitFileIntents = new ArrayList<>(needInstalledSplits.size());
        for (SplitInfo split : needInstalledSplits) {
            Intent intent = new Intent();
            intent.putExtra(SplitConstants.KEY_SPLIT_NAME, split.getSplitName());
            splitFileIntents.add(intent);
        }
        state.setSplitFileIntents(splitFileIntents);
        state.setStatus(10);
        this.mSessionManager.changeSessionState(sessionId, 10);
        this.mSessionManager.emitSessionState(state);
    }
}
