package com.oplus.oms.split.splitload.listener;

public interface OnSplitLoadListener {
    void onCompleted();

    void onFailed(int i);
}
