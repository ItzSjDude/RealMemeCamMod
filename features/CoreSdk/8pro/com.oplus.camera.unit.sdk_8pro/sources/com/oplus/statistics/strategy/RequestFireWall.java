package com.oplus.statistics.strategy;

import android.os.SystemClock;
import android.util.LruCache;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes.dex */
public class RequestFireWall {
    private static final int CACHE_CAPACITY = 100;
    private static final String TAG = "FireWall";
    private final int mLimit;
    private final long mPeriod;
    private final LruCache<String, Queue<Long>> mRequestQueueMap;

    private RequestFireWall(Builder builder) {
        this.mLimit = builder.mLimit;
        this.mPeriod = builder.mPeriod;
        this.mRequestQueueMap = new LruCache<>(100);
    }

    public boolean handleRequest(final String str) {
        Queue<Long> requestQueue = getRequestQueue(str);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        requestQueue.add(Long.valueOf(elapsedRealtime));
        final long requestCountInWindowImpl = getRequestCountInWindowImpl(requestQueue, elapsedRealtime);
        boolean z = requestCountInWindowImpl <= ((long) this.mLimit);
        if (!z && requestCountInWindowImpl % 10 == 1) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.strategy.RequestFireWall$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return RequestFireWall.this.m10xd9117441(str, requestCountInWindowImpl);
                }
            });
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$handleRequest$0$com-oplus-statistics-strategy-RequestFireWall  reason: not valid java name */
    public /* synthetic */ String m10xd9117441(String str, long j) {
        return "Chatty!!! Allow " + this.mLimit + FeatureImpl.DELIMITER + this.mPeriod + "ms, but " + str + " request " + j + " in the recent period.";
    }

    private long getRequestCountInWindowImpl(@NonNull Queue<Long> queue, long j) {
        Long peek = queue.peek();
        while (peek != null && peek.longValue() < j - this.mPeriod) {
            queue.poll();
            peek = queue.peek();
        }
        return queue.size();
    }

    @NonNull
    private Queue<Long> getRequestQueue(String str) {
        Queue<Long> queue = this.mRequestQueueMap.get(str);
        if (queue == null) {
            LinkedList linkedList = new LinkedList();
            this.mRequestQueueMap.put(str, linkedList);
            return linkedList;
        }
        return queue;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private final int mLimit;
        private final long mPeriod;

        public Builder(@IntRange(from = 0) int i, @IntRange(from = 0) long j) {
            this.mLimit = Math.max(i, 0);
            this.mPeriod = Math.max(j, 0L);
        }

        public RequestFireWall build() {
            return new RequestFireWall(this);
        }
    }
}
