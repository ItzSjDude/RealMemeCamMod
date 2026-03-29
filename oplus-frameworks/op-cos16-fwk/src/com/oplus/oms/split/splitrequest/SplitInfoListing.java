package com.oplus.oms.split.splitrequest;

import java.util.LinkedHashMap;

final class SplitInfoListing {
    private final LinkedHashMap<String, SplitInfo> mSplitInfoMap;

    
    public SplitInfoListing(LinkedHashMap<String, SplitInfo> splitInfoMap) {
        this.mSplitInfoMap = splitInfoMap;
    }

    
    public LinkedHashMap<String, SplitInfo> getSplitInfoMap() {
        return this.mSplitInfoMap;
    }
}
