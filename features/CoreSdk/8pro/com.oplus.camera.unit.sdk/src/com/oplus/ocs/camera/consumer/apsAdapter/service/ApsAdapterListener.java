package com.oplus.ocs.camera.consumer.apsAdapter.service;

import android.graphics.Rect;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import com.common.StaticsConstant;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
/* loaded from: classes.dex */
public class ApsAdapterListener {

    /* loaded from: classes.dex */
    public interface ApsServiceListener {
        void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void onPreviewReceived(ApsResult apsResult, ApsTotalResult apsTotalResult);

        void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, ApsCameraRequestTag apsCameraRequestTag);

        void onVideoReceived(ApsResult apsResult);

        void reportDataToDcs(StaticsConstant.EventType eventType, String str, int i);
    }

    /* loaded from: classes.dex */
    public interface CaptureCallback {
        void onApsCaptureCompleted(ApsResult apsResult, ApsTotalResult apsTotalResult, ApsCameraRequestTag apsCameraRequestTag);

        void onApsCaptureStarted(long j);
    }
}
