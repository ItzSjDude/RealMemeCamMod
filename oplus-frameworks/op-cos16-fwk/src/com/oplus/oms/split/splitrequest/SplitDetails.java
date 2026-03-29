package com.oplus.oms.split.splitrequest;

import java.util.List;

final class SplitDetails {
    private final String mAppVersionName;
    private final String mOmsId;
    private final List<String> mSplitEntryFragments;
    private final SplitInfoListing mSplitInfoListing;
    private final List<SplitUpdateInfo> mUpdateSplits;

    
    public SplitDetails(String omsId, String appVersionName, List<SplitUpdateInfo> updateSplits, List<String> splitEntryFragments, SplitInfoListing splitInfoListing) {
        this.mOmsId = omsId;
        this.mAppVersionName = appVersionName;
        this.mUpdateSplits = updateSplits;
        this.mSplitEntryFragments = splitEntryFragments;
        this.mSplitInfoListing = splitInfoListing;
    }

    
    public String getOmsId() {
        return this.mOmsId;
    }

    
    public String getAppVersionName() {
        return this.mAppVersionName;
    }

    List<SplitUpdateInfo> getUpdateSplits() {
        return this.mUpdateSplits;
    }

    
    public List<String> getSplitEntryFragments() {
        return this.mSplitEntryFragments;
    }

    
    public SplitInfoListing getSplitInfoListing() {
        return this.mSplitInfoListing;
    }
}
