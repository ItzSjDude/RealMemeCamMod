package com.oplus.ocs.camera.producer.device;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import java.util.HashSet;
/* loaded from: classes.dex */
public class FlashController {
    private static final boolean DEBUG = false;
    public static final boolean NEED_TRIGGER_AE_AF_FOR_FLASH = true;
    public static final int STATE_AE_CONVERAGED = 1;
    public static final int STATE_INACTIVE = -1;
    public static final int STATE_TRIGGER_STARTTING = 0;
    private boolean isFrontCamera;
    private TriggerStateMachine.AeAfState mAeAfState;
    private TriggerStateMachine mAeAfStateMachine;
    private FlashControllerCallback mFlashControllerCallback;
    private TriggerStateListener mTriggerStateListener;
    private boolean mbNeedCapture = false;
    private boolean mbSupportTorchFlash = false;
    private boolean mbSupportWaitAf = false;
    private volatile int mAeTriggerState = 0;
    private boolean mbFirstAeUpdate = false;
    private boolean mbAeConverged = false;
    private long mFirstAeFrameNum = 0;
    private int mCurrentState = -1;

    /* loaded from: classes.dex */
    public interface TriggerStateListener {
        void onAeConverged(boolean z);
    }

    public FlashController(boolean z, TriggerStateListener triggerStateListener) {
        this.mAeAfStateMachine = null;
        this.mAeAfState = null;
        this.isFrontCamera = false;
        this.mTriggerStateListener = null;
        this.mFlashControllerCallback = null;
        this.isFrontCamera = z;
        this.mTriggerStateListener = triggerStateListener;
        this.mFlashControllerCallback = new FlashControllerCallback();
        this.mAeAfStateMachine = new TriggerStateMachine();
        TriggerStateMachine triggerStateMachine = this.mAeAfStateMachine;
        triggerStateMachine.getClass();
        this.mAeAfState = new TriggerStateMachine.AeAfState();
    }

    public FlashControllerCallback getFlashControllerCallback() {
        return this.mFlashControllerCallback;
    }

    public void setNeedCapture(boolean z) {
        this.mbNeedCapture = z;
    }

    public void setCurrentState(int i) {
        this.mCurrentState = i;
    }

    public boolean isAeConverged() {
        return this.mbAeConverged;
    }

    public void setSupportWaitAf(boolean z) {
        this.mbSupportWaitAf = z;
    }

    public void setTorchFlash(boolean z) {
        this.mbSupportTorchFlash = z;
    }

    public boolean isAeTriggerStart() {
        return 1 == this.mAeTriggerState || this.mCurrentState == 0;
    }

    public void resetState() {
        this.mbNeedCapture = false;
        this.mbAeConverged = false;
        this.mCurrentState = -1;
        this.mbFirstAeUpdate = false;
        this.mAeTriggerState = 0;
        this.mAeAfStateMachine.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkWaitAf() {
        return (this.mbSupportTorchFlash || this.mbSupportWaitAf) && !this.isFrontCamera;
    }

    /* loaded from: classes.dex */
    static class TriggerStateMachine {
        private static final HashSet<Integer> AE_TRIGGER_DONE_STATES = new HashSet<>();
        private static final HashSet<Integer> AF_TRIGGER_DONE_STATES = new HashSet<>();
        private static final long MAX_AE_DONE_WAITING_FRAME_NUM = 60;
        private static final long MAX_AF_DONE_WAITING_FRAME_NUM = 20;
        private static final long MAX_AF_SCAN_WAITING_FRAME_NUM = 10;
        private State mCurrentState = State.WAITING_FOR_TRIGGER;
        private Long mLastTriggerFrameNumber = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public enum State {
            WAITING_FOR_TRIGGER,
            TRIGGERED,
            AE_CONVERGED,
            AF_SCAN
        }

        TriggerStateMachine() {
            AE_TRIGGER_DONE_STATES.add(0);
            AE_TRIGGER_DONE_STATES.add(4);
            AE_TRIGGER_DONE_STATES.add(2);
            AF_TRIGGER_DONE_STATES.add(2);
            AF_TRIGGER_DONE_STATES.add(4);
            AF_TRIGGER_DONE_STATES.add(5);
        }

        boolean update(AeAfState aeAfState) {
            switch (this.mCurrentState) {
                case WAITING_FOR_TRIGGER:
                    if ((this.mLastTriggerFrameNumber == null || aeAfState.mFrameNum > this.mLastTriggerFrameNumber.longValue()) && 1 == aeAfState.mTriggerState.intValue()) {
                        this.mCurrentState = State.TRIGGERED;
                        this.mLastTriggerFrameNumber = Long.valueOf(aeAfState.mFrameNum);
                        return false;
                    }
                    return false;
                case TRIGGERED:
                    if (this.mLastTriggerFrameNumber == null || aeAfState.mFrameNum > this.mLastTriggerFrameNumber.longValue()) {
                        if (AE_TRIGGER_DONE_STATES.contains(aeAfState.mAeState) || (1 == aeAfState.mAeState.intValue() && aeAfState.mFrameNum - aeAfState.mFirstFrameNumber > MAX_AE_DONE_WAITING_FRAME_NUM)) {
                            if (aeAfState.mbWaitAf) {
                                this.mCurrentState = State.AE_CONVERGED;
                                this.mLastTriggerFrameNumber = Long.valueOf(aeAfState.mFrameNum);
                                return false;
                            }
                            this.mCurrentState = State.WAITING_FOR_TRIGGER;
                            this.mLastTriggerFrameNumber = null;
                            return true;
                        }
                        return false;
                    }
                    return false;
                case AE_CONVERGED:
                    if (this.mLastTriggerFrameNumber == null || aeAfState.mFrameNum > this.mLastTriggerFrameNumber.longValue()) {
                        if (1 == aeAfState.mAfState.intValue()) {
                            this.mCurrentState = State.AF_SCAN;
                            this.mLastTriggerFrameNumber = Long.valueOf(aeAfState.mFrameNum);
                            return false;
                        } else if (this.mLastTriggerFrameNumber == null || aeAfState.mFrameNum - this.mLastTriggerFrameNumber.longValue() <= MAX_AF_SCAN_WAITING_FRAME_NUM) {
                            return false;
                        } else {
                            this.mCurrentState = State.WAITING_FOR_TRIGGER;
                            this.mLastTriggerFrameNumber = null;
                            return true;
                        }
                    }
                    return false;
                case AF_SCAN:
                    if (this.mLastTriggerFrameNumber == null || aeAfState.mFrameNum > this.mLastTriggerFrameNumber.longValue()) {
                        if (AF_TRIGGER_DONE_STATES.contains(aeAfState.mAfState) || (this.mLastTriggerFrameNumber != null && aeAfState.mFrameNum - this.mLastTriggerFrameNumber.longValue() > MAX_AF_DONE_WAITING_FRAME_NUM)) {
                            this.mCurrentState = State.WAITING_FOR_TRIGGER;
                            this.mLastTriggerFrameNumber = null;
                            return true;
                        }
                        return false;
                    }
                    return false;
                default:
                    return false;
            }
        }

        void reset() {
            this.mCurrentState = State.WAITING_FOR_TRIGGER;
            this.mLastTriggerFrameNumber = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class AeAfState {
            long mFrameNum = 0;
            long mFirstFrameNumber = 0;
            Integer mTriggerState = null;
            Integer mAeState = null;
            Integer mAfState = null;
            boolean mbWaitAf = false;

            AeAfState() {
            }

            public String toString() {
                return "mFrameNum: " + this.mFrameNum + ", mFirstFrameNumber: " + this.mFirstFrameNumber + ", mTriggerState: " + this.mTriggerState + ", mAeState: " + this.mAeState + ", mAfState: " + this.mAfState + ", mbWaitAf: " + this.mbWaitAf;
            }
        }
    }

    /* loaded from: classes.dex */
    class FlashControllerCallback {
        FlashControllerCallback() {
        }

        public void notifyMetadataReceived(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            if (FlashController.this.mbNeedCapture) {
                Integer num = (Integer) captureRequest.get(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER);
                if (num != null && 1 == num.intValue()) {
                    FlashController.this.mAeTriggerState = num.intValue();
                }
                if (1 == FlashController.this.mAeTriggerState) {
                    Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
                    Integer num3 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                    long frameNumber = totalCaptureResult.getFrameNumber();
                    if (!FlashController.this.mbFirstAeUpdate) {
                        FlashController.this.mbFirstAeUpdate = true;
                        FlashController.this.mFirstAeFrameNum = frameNumber;
                    }
                    FlashController.this.mAeAfState.mFrameNum = frameNumber;
                    FlashController.this.mAeAfState.mFirstFrameNumber = FlashController.this.mFirstAeFrameNum;
                    FlashController.this.mAeAfState.mTriggerState = num;
                    FlashController.this.mAeAfState.mAeState = num2;
                    FlashController.this.mAeAfState.mAfState = num3;
                    FlashController.this.mAeAfState.mbWaitAf = FlashController.this.checkWaitAf();
                    if (!FlashController.this.mAeAfStateMachine.update(FlashController.this.mAeAfState) || FlashController.this.mbAeConverged) {
                        return;
                    }
                    FlashController.this.mbAeConverged = true;
                    FlashController.this.mbFirstAeUpdate = false;
                    FlashController.this.mFirstAeFrameNum = 0L;
                    FlashController.this.mCurrentState = 1;
                    FlashController.this.mTriggerStateListener.onAeConverged(FlashController.this.mbNeedCapture);
                }
            }
        }
    }
}
