package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class CaptureImageCategory extends ImageCategory {
    private static final String TAG = "CaptureImageCategory";

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory
    public boolean isValid() {
        return (this.mImageItemList != null && this.mImageItemList.size() > 0 && !((Boolean) this.mImageItemList.get(0).get(ApsParameters.KEY_NEED_META_DATA)).booleanValue()) || (this.mMetaItem != null && ((Integer) this.mMetaItem.get(ApsParameters.KEY_MERGE_NUMBER)).intValue() >= 1 && ((Integer) this.mMetaItem.get(ApsParameters.KEY_CAPTURE_STREAM_NUMBER)).intValue() >= 1 && this.mImageItemList != null && ((Integer) this.mMetaItem.get(ApsParameters.KEY_CAPTURE_STREAM_NUMBER)).intValue() == this.mImageItemList.size() && ((Long) this.mMetaItem.get(ApsParameters.KEY_TIME_STAMP)).equals(this.mImageItemList.get(0).get(ApsParameters.KEY_TIME_STAMP)) && isTuningDataValid());
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory
    protected boolean isTuningDataValid() {
        if (((Boolean) this.mMetaItem.get(ApsParameters.KEY_USE_TUNING_DATA)).booleanValue()) {
            if (this.mTuningItemLists.isEmpty()) {
                return false;
            }
            Iterator<List<ImageCategory.TuningItemInfo>> it = this.mTuningItemLists.values().iterator();
            if (it.hasNext()) {
                List<ImageCategory.TuningItemInfo> next = it.next();
                if (next.isEmpty() || !((Long) this.mMetaItem.get(ApsParameters.KEY_TIME_STAMP)).equals(next.get(0).get(ApsParameters.KEY_TIME_STAMP))) {
                    return false;
                }
            }
            return !((Boolean) this.mMetaItem.get(ApsParameters.KEY_REQUEST_MIXED_FORMAT)).booleanValue() || this.mTuningItemLists.size() == ((Integer) this.mMetaItem.get(ApsParameters.KEY_CAPTURE_STREAM_NUMBER)).intValue();
        }
        return true;
    }
}
