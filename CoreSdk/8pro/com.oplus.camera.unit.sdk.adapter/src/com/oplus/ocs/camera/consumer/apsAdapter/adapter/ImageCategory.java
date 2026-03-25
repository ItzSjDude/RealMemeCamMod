package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ImageCategory {
    private static final String TAG = "ImageCategory";
    public static final int TYPE_CAPTURE = 1;
    public static final int TYPE_CAPTURE_REALTIME = 4;
    public static final int TYPE_PREVIEW = 2;
    public static final int TYPE_VIDEO = 3;
    public List<ImageItemInfo> mImageItemList = new ArrayList();
    public Map<Integer, List<TuningItemInfo>> mTuningItemLists = new HashMap();
    public MetaItemInfo mMetaItem = null;
    public boolean mbAlreadySendAps = false;
    public boolean mbHoldSendAps = false;
    public boolean mbNeedReSendAps = false;
    public boolean mbNeedMatchTimeStamp = true;

    public static class ImageItemInfo extends ApsParameters.ParameterModel {
        public ApsResult.ImageBuffer mImageBuffer = null;
        public ApsAdapterListener.ApsServiceListener mApsServiceListener = null;
    }

    public enum ItemInfoType {
        CAPTURE,
        PREVIEW,
        VIDEO
    }

    public static class TuningItemInfo extends ApsParameters.ParameterModel {
        public ApsResult.ImageBuffer mTuningBuffer = null;
    }

    public boolean isValid() {
        List<ImageItemInfo> list = this.mImageItemList;
        boolean z = (list == null || list.size() <= 0 || ((Boolean) this.mImageItemList.get(0).get(ApsParameters.KEY_NEED_META_DATA)).booleanValue()) ? false : true;
        MetaItemInfo metaItemInfo = this.mMetaItem;
        return z || (metaItemInfo != null && ((Integer) metaItemInfo.get(ApsParameters.KEY_MERGE_NUMBER)).intValue() >= 1 && ((Integer) this.mMetaItem.get(ApsParameters.KEY_PREVIEW_STREAM_NUMBER)).intValue() >= 1 && this.mImageItemList != null && ((Integer) this.mMetaItem.get(ApsParameters.KEY_PREVIEW_STREAM_NUMBER)).intValue() == this.mImageItemList.size() && ((Long) this.mMetaItem.get(ApsParameters.KEY_TIME_STAMP)).equals(this.mImageItemList.get(0).get(ApsParameters.KEY_TIME_STAMP)) && isTuningDataValid());
    }

    protected boolean isTuningDataValid() {
        if (!((Boolean) this.mMetaItem.get(ApsParameters.KEY_USE_TUNING_DATA)).booleanValue()) {
            return true;
        }
        Iterator<List<TuningItemInfo>> it = this.mTuningItemLists.values().iterator();
        if (!it.hasNext()) {
            return false;
        }
        List<TuningItemInfo> next = it.next();
        if (next.isEmpty()) {
            return false;
        }
        return ((Long) this.mMetaItem.get(ApsParameters.KEY_TIME_STAMP)).equals(next.get(0).get(ApsParameters.KEY_TIME_STAMP));
    }

    public void releaseImageItemList() {
        ApsAdapterLog.d(TAG, "releaseImageItemList, mImageItemList: " + this.mImageItemList);
        List<ImageItemInfo> list = this.mImageItemList;
        if (list != null) {
            for (ImageItemInfo imageItemInfo : list) {
                if (imageItemInfo.mImageBuffer != null) {
                    imageItemInfo.mImageBuffer.close();
                    imageItemInfo.mImageBuffer = null;
                }
            }
            this.mImageItemList.clear();
        }
        Map<Integer, List<TuningItemInfo>> map = this.mTuningItemLists;
        if (map != null) {
            Iterator<List<TuningItemInfo>> it = map.values().iterator();
            while (it.hasNext()) {
                for (TuningItemInfo tuningItemInfo : it.next()) {
                    if (tuningItemInfo.mTuningBuffer != null) {
                        tuningItemInfo.mTuningBuffer.close();
                        tuningItemInfo.mTuningBuffer = null;
                    }
                }
            }
            this.mTuningItemLists.clear();
            this.mTuningItemLists = null;
        }
        MetaItemInfo metaItemInfo = this.mMetaItem;
        if (metaItemInfo == null || metaItemInfo.mImageBuffer == null) {
            return;
        }
        this.mMetaItem.mImageBuffer.close();
        this.mMetaItem.mImageBuffer = null;
    }

    public static class MetaItemInfo extends ApsParameters.ParameterModel {
        public ApsResult.ImageBuffer mImageBuffer = null;

        public MetaItemInfo copy() {
            MetaItemInfo metaItemInfo = new MetaItemInfo();
            metaItemInfo.mParameterMap = new HashMap();
            metaItemInfo.mImageBuffer = this.mImageBuffer;
            copy(metaItemInfo.mParameterMap);
            return metaItemInfo;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.mImageItemList != null) {
            sb.append("mImageItemList size: " + this.mImageItemList.size() + ", ");
            for (int i = 0; i < this.mImageItemList.size(); i++) {
                ImageItemInfo imageItemInfo = this.mImageItemList.get(i);
                sb.append("image");
                sb.append(i);
                sb.append(" [");
                sb.append(imageItemInfo.toString());
                sb.append("], ");
            }
        } else {
            sb.append("mImageItemList is null");
        }
        if (this.mTuningItemLists != null) {
            sb.append("mTuningItemList size: " + this.mTuningItemLists.size() + " ");
            Iterator<Integer> it = this.mTuningItemLists.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                List<TuningItemInfo> list = this.mTuningItemLists.get(Integer.valueOf(iIntValue));
                for (int i2 = 0; i2 < list.size(); i2++) {
                    TuningItemInfo tuningItemInfo = list.get(i2);
                    sb.append("tuningItem_");
                    sb.append(iIntValue);
                    sb.append("_");
                    sb.append(i2);
                    sb.append(" [");
                    sb.append(tuningItemInfo.toString());
                    sb.append("], ");
                }
            }
        } else {
            sb.append("mTuningItemList is null");
        }
        if (this.mMetaItem != null) {
            sb.append("metadata [");
            sb.append(this.mMetaItem.toString());
            sb.append("]");
        } else {
            sb.append("metadata is null");
        }
        return sb.toString();
    }
}
