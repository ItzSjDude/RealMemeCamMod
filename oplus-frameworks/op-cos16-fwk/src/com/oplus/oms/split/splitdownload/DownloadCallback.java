package com.oplus.oms.split.splitdownload;

public interface DownloadCallback {
    void onCanceled();

    void onCanceling();

    void onCompleted();

    void onError(int i);

    void onProgress(long j);

    void onStart();
}
