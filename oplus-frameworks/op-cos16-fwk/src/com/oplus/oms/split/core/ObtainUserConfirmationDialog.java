package com.oplus.oms.split.core;

import android.app.Activity;
import android.os.Bundle;
import com.oplus.oms.split.splitinstall.SplitInstallSupervisorImpl;
import com.oplus.oms.split.splitinstall.remote.SplitInstallSupervisor;
import java.util.List;

public abstract class ObtainUserConfirmationDialog extends Activity {
    private SplitInstallSupervisor mInstallService;
    private List<String> mModuleNames;
    private long mRealTotalBytesNeedToDownload;
    private int mSessionId;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mSessionId = getIntent().getIntExtra("sessionId", 0);
        this.mRealTotalBytesNeedToDownload = getIntent().getLongExtra("realTotalBytesNeedToDownload", 0L);
        this.mModuleNames = getIntent().getStringArrayListExtra("moduleNames");
        this.mInstallService = SplitInstallSupervisorImpl.getSplitInstallSupervisor();
    }

    protected void onUserConfirm() {
        if (this.mInstallService != null) {
            if (this.mInstallService.continueInstallWithUserConfirmation(this.mSessionId)) {
                setResult(-1);
            }
            finish();
        }
    }

    protected void onUserCancel() {
        if (this.mInstallService != null) {
            if (this.mInstallService.cancelInstallWithoutUserConfirmation(this.mSessionId)) {
                setResult(0);
            }
            finish();
        }
    }

    protected List<String> getModuleNames() {
        return this.mModuleNames;
    }

    protected long getRealTotalBytesNeedToDownload() {
        return this.mRealTotalBytesNeedToDownload;
    }

    protected boolean checkInternParametersIllegal() {
        return this.mSessionId == 0 || this.mRealTotalBytesNeedToDownload <= 0 || this.mModuleNames == null || this.mModuleNames.isEmpty();
    }
}
