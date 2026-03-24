package com.android.internal.os;

import android.os.SystemClock;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.util.HeavyHitterSketch;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class BinderCallHeavyHitterWatcher {
    private static final float EPSILON = 1.0E-5f;
    private static final String TAG = "BinderCallHeavyHitterWatcher";
    private long mBatchStartTimeStamp;
    private HeavyHitterContainer[] mCachedCandidateContainers;
    private int mCachedCandidateContainersIndex;
    private int mCurrentInputSize;
    private boolean mEnabled;
    private HeavyHitterSketch<Integer> mHeavyHitterSketch;
    private int mInputSize;
    private BinderCallHeavyHitterListener mListener;
    private float mThreshold;
    private int mTotalInputSize;
    private static final Object sLock = new Object();
    private static BinderCallHeavyHitterWatcher sInstance = null;
    private final SparseArray<HeavyHitterContainer> mHeavyHitterCandiates = new SparseArray<>();
    private final ArrayList<Integer> mCachedCandidateList = new ArrayList<>();
    private final ArrayList<Float> mCachedCandidateFrequencies = new ArrayList<>();
    private ArraySet<Integer> mCachedCandidateSet = new ArraySet<>();
    private final Object mLock = new Object();

    public interface BinderCallHeavyHitterListener {
        void onHeavyHit(List<HeavyHitterContainer> list, int i, float f, long j);
    }

    public static final class HeavyHitterContainer {
        public Class mClass;
        public int mCode;
        public float mFrequency;
        public int mUid;

        public HeavyHitterContainer() {
        }

        public HeavyHitterContainer(HeavyHitterContainer other) {
            this.mUid = other.mUid;
            this.mClass = other.mClass;
            this.mCode = other.mCode;
            this.mFrequency = other.mFrequency;
        }

        public boolean equals(Object other) {
            if (other == null || !(other instanceof HeavyHitterContainer)) {
                return false;
            }
            HeavyHitterContainer o = (HeavyHitterContainer) other;
            return this.mUid == o.mUid && this.mClass == o.mClass && this.mCode == o.mCode && Math.abs(this.mFrequency - o.mFrequency) < BinderCallHeavyHitterWatcher.EPSILON;
        }

        public int hashCode() {
            return hashCode(this.mUid, this.mClass, this.mCode);
        }

        static int hashCode(int uid, Class clazz, int code) {
            int hash = (uid * 31) + clazz.hashCode();
            return (hash * 31) + code;
        }
    }

    public static BinderCallHeavyHitterWatcher getInstance() {
        BinderCallHeavyHitterWatcher binderCallHeavyHitterWatcher;
        synchronized (sLock) {
            if (sInstance == null) {
                sInstance = new BinderCallHeavyHitterWatcher();
            }
            binderCallHeavyHitterWatcher = sInstance;
        }
        return binderCallHeavyHitterWatcher;
    }

    public void setConfig(boolean enable, int batchSize, float threshold, BinderCallHeavyHitterListener listener) throws Throwable {
        int inputSize;
        synchronized (this.mLock) {
            try {
                try {
                    if (enable) {
                        this.mEnabled = true;
                        if (threshold < EPSILON || threshold > 1.0f) {
                            return;
                        }
                        if (batchSize == this.mTotalInputSize && Math.abs(threshold - this.mThreshold) < EPSILON) {
                            this.mListener = listener;
                            return;
                        }
                        int capacity = (int) (1.0f / threshold);
                        HeavyHitterSketch<Integer> sketch = HeavyHitterSketch.newDefault();
                        float validationRatio = sketch.getRequiredValidationInputRatio();
                        if (Float.isNaN(validationRatio)) {
                            inputSize = batchSize;
                        } else {
                            int inputSize2 = (int) (batchSize * (1.0f - validationRatio));
                            inputSize = inputSize2;
                        }
                        try {
                            sketch.setConfig(batchSize, capacity);
                            resetInternalLocked(listener, sketch, inputSize, batchSize, threshold, capacity);
                            return;
                        } catch (IllegalArgumentException e) {
                            Log.w(TAG, "Invalid parameter to heavy hitter watcher: " + batchSize + ", " + capacity);
                            return;
                        }
                    }
                    if (this.mEnabled) {
                        resetInternalLocked(null, null, 0, 0, 0.0f, 0);
                        this.mEnabled = false;
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    private void resetInternalLocked(BinderCallHeavyHitterListener listener, HeavyHitterSketch<Integer> sketch, int inputSize, int batchSize, float threshold, int capacity) {
        this.mListener = listener;
        this.mHeavyHitterSketch = sketch;
        this.mHeavyHitterCandiates.clear();
        this.mCachedCandidateList.clear();
        this.mCachedCandidateFrequencies.clear();
        this.mCachedCandidateSet.clear();
        this.mInputSize = inputSize;
        this.mTotalInputSize = batchSize;
        this.mCurrentInputSize = 0;
        this.mThreshold = threshold;
        this.mBatchStartTimeStamp = SystemClock.elapsedRealtime();
        initCachedCandidateContainersLocked(capacity);
    }

    private void initCachedCandidateContainersLocked(int capacity) {
        if (capacity > 0) {
            this.mCachedCandidateContainers = new HeavyHitterContainer[capacity];
            int i = 0;
            while (true) {
                HeavyHitterContainer[] heavyHitterContainerArr = this.mCachedCandidateContainers;
                if (i >= heavyHitterContainerArr.length) {
                    break;
                }
                heavyHitterContainerArr[i] = new HeavyHitterContainer();
                i++;
            }
        } else {
            this.mCachedCandidateContainers = null;
        }
        this.mCachedCandidateContainersIndex = 0;
    }

    private HeavyHitterContainer acquireHeavyHitterContainerLocked() {
        HeavyHitterContainer[] heavyHitterContainerArr = this.mCachedCandidateContainers;
        int i = this.mCachedCandidateContainersIndex;
        this.mCachedCandidateContainersIndex = i + 1;
        return heavyHitterContainerArr[i];
    }

    private void releaseHeavyHitterContainerLocked(HeavyHitterContainer container) {
        HeavyHitterContainer[] heavyHitterContainerArr = this.mCachedCandidateContainers;
        int i = this.mCachedCandidateContainersIndex - 1;
        this.mCachedCandidateContainersIndex = i;
        heavyHitterContainerArr[i] = container;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0086 A[Catch: all -> 0x0118, TryCatch #2 {all -> 0x0118, blocks: (B:53:0x010f, B:29:0x0066, B:58:0x0116, B:37:0x0086, B:39:0x0090, B:41:0x0095, B:43:0x009f, B:45:0x00a5, B:47:0x00ad, B:49:0x00c1, B:50:0x00d7, B:51:0x00da, B:52:0x00eb), top: B:65:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onTransaction(int r18, java.lang.Class r19, int r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.BinderCallHeavyHitterWatcher.onTransaction(int, java.lang.Class, int):void");
    }
}
