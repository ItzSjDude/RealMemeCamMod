package com.oplus.ocs.camera.consumer.apsAdapter.algorithm;

import android.graphics.Rect;
import android.os.HandlerThread;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.NoneApsImpl;
/* loaded from: classes.dex */
public class CaptureApsImpl extends FullApsImpl {
    private static final String TAG = "CaptureApsImpl";
    private NoneApsImpl.ProcessHandler mProcessHandler;

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Rect[] roiTranslate(Rect[] rectArr) {
        return null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSAlgoNode(String str, boolean z) {
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSPipeline(String str, boolean z) {
        return 0;
    }

    public CaptureApsImpl(ApsInterface.ApsListener apsListener, String str) {
        super(apsListener, str);
        this.mProcessHandler = null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean connect(int i) {
        ApsAdapterLog.v(TAG, "connect");
        if (this.mProcessHandler == null) {
            HandlerThread handlerThread = new HandlerThread("CaptureApsImpl Process Thread");
            handlerThread.start();
            this.mProcessHandler = new NoneApsImpl.ProcessHandler(handlerThread.getLooper());
        }
        return super.connect(i);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void disconnect() {
        NoneApsImpl.ProcessHandler processHandler = this.mProcessHandler;
        if (processHandler != null) {
            processHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
        super.disconnect();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam) {
        int[] role = apsPreviewParam.getRole();
        ApsResult.ImageBuffer[] imageBufferArray = apsPreviewParam.getImageBufferArray();
        NoneApsImpl.PreviewFrame previewFrame = new NoneApsImpl.PreviewFrame();
        previewFrame.mApsListener = this.mApsListener;
        previewFrame.mTimeStamp = apsPreviewParam.getTimeStamp();
        previewFrame.mMetadata = apsPreviewParam.getMetaObj();
        for (int i = 0; i < imageBufferArray.length; i++) {
            int i2 = role[i];
            if (i2 == 0 || 1 == i2) {
                previewFrame.mImage = imageBufferArray[i].getImage();
            } else {
                imageBufferArray[i].close();
            }
        }
        String[] processParamters = apsPreviewParam.getProcessParamters();
        int i3 = 0;
        while (true) {
            if (i3 >= processParamters.length) {
                break;
            } else if (processParamters[i3].equals(ApsParameters.KEY_PIPELINE)) {
                previewFrame.mPipeline = processParamters[i3 + 1];
                break;
            } else {
                i3 += 2;
            }
        }
        this.mProcessHandler.sendMessage(this.mProcessHandler.obtainMessage(1, previewFrame));
        return 0;
    }
}
