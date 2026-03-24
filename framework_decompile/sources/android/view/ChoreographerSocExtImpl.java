package android.view;

import android.os.Handler;
import android.os.Message;
import android.os.Trace;
import android.util.BoostFramework;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class ChoreographerSocExtImpl implements IChoreographerSocExt {
    private static final int MOTION_EVENT_ACTION_CANCEL = 3;
    private static final int MOTION_EVENT_ACTION_DOWN = 0;
    private static final int MOTION_EVENT_ACTION_MOVE = 2;
    private static final int MOTION_EVENT_ACTION_UP = 1;
    private static final boolean OPTS_INPUT = true;
    private Choreographer mChoreographer;
    private int mTouchMoveNum = -1;
    private int mMotionEventType = -1;
    private boolean mConsumedMove = false;
    private boolean mConsumedDown = false;
    private boolean mIsVsyncScheduled = false;
    private long mLastTouchOptTimeNanos = 0;
    private boolean mIsDoFrameProcessing = false;

    public ChoreographerSocExtImpl(Object obj) {
        this.mChoreographer = null;
        this.mChoreographer = (Choreographer) obj;
    }

    @Override // android.view.IChoreographerSocExt
    public void setFrameInterval(long frameIntervalNanos) {
        BoostFramework.ScrollOptimizer.setFrameInterval(frameIntervalNanos);
    }

    @Override // android.view.IChoreographerSocExt
    public boolean hookScheduleFrameLocked(boolean USE_VSYNC, Handler handler, long mFrameIntervalNanos) {
        if (!this.mIsVsyncScheduled) {
            long curr = System.nanoTime();
            boolean skipFlag = curr - this.mLastTouchOptTimeNanos < mFrameIntervalNanos;
            Trace.traceBegin(8L, "scheduleFrameLocked-mMotionEventType:" + this.mMotionEventType + " mTouchMoveNum:" + this.mTouchMoveNum + " mConsumedDown:" + this.mConsumedDown + " mConsumedMove:" + this.mConsumedMove + " mIsDoFrameProcessing:" + this.mIsDoFrameProcessing + " skip:" + skipFlag + " diff:" + (curr - this.mLastTouchOptTimeNanos));
            Trace.traceEnd(8L);
            synchronized (this) {
                switch (this.mMotionEventType) {
                    case 0:
                        this.mConsumedMove = false;
                        if (!this.mConsumedDown && !skipFlag && !this.mIsDoFrameProcessing) {
                            Message msg = handler.obtainMessage(0);
                            msg.setAsynchronous(true);
                            handler.sendMessageAtFrontOfQueue(msg);
                            this.mLastTouchOptTimeNanos = System.nanoTime();
                            this.mConsumedDown = true;
                            return false;
                        }
                        break;
                    case 1:
                    case 3:
                        this.mConsumedMove = false;
                        this.mConsumedDown = false;
                        break;
                    case 2:
                        this.mConsumedDown = false;
                        if (!this.mConsumedMove && !skipFlag && !this.mIsDoFrameProcessing) {
                            Message msg2 = handler.obtainMessage(0);
                            msg2.setAsynchronous(true);
                            handler.sendMessageAtFrontOfQueue(msg2);
                            this.mLastTouchOptTimeNanos = System.nanoTime();
                            this.mConsumedMove = true;
                            return false;
                        }
                        break;
                }
            }
        }
        return BoostFramework.ScrollOptimizer.shouldUseVsync(USE_VSYNC);
    }

    @Override // android.view.IChoreographerSocExt
    public long getFrameDelay(long frameDelay, long lastFrameTimeNanos) {
        return BoostFramework.ScrollOptimizer.getFrameDelay(frameDelay, lastFrameTimeNanos);
    }

    @Override // android.view.IChoreographerSocExt
    public void setMotionEventInfo(int motionEventType, int touchMoveNum) {
        synchronized (this.mChoreographer) {
            this.mTouchMoveNum = touchMoveNum;
            this.mMotionEventType = motionEventType;
            BoostFramework.ScrollOptimizer.setMotionType(motionEventType);
        }
    }

    @Override // android.view.IChoreographerSocExt
    public void setIsDoFrameProcessing(boolean isDoFrameProcessing) {
        this.mIsDoFrameProcessing = isDoFrameProcessing;
    }

    @Override // android.view.IChoreographerSocExt
    public void setUITaskStatus(boolean isUITask) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        BoostFramework.ScrollOptimizer.setUITaskStatus(isUITask);
    }

    @Override // android.view.IChoreographerSocExt
    public void setVsyncTime(long timestampNanos) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        BoostFramework.ScrollOptimizer.setVsyncTime(timestampNanos);
    }

    @Override // android.view.IChoreographerSocExt
    public void setIsVsyncScheduled(boolean isVsyncScheduled) {
        this.mIsVsyncScheduled = isVsyncScheduled;
    }

    @Override // android.view.IChoreographerSocExt
    public void setScheduleVsync(boolean isscheduleVsync) {
        this.mIsVsyncScheduled = isscheduleVsync;
    }

    @Override // android.view.IChoreographerSocExt
    public void hookDoFramePerfHint(long vsyncId, boolean begin) {
    }

    @Override // android.view.IChoreographerSocExt
    public void hookDoCallbackPerfHint(int callbackType, boolean begin) {
    }
}
