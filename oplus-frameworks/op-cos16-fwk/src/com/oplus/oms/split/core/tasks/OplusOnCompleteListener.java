package com.oplus.oms.split.core.tasks;

public interface OplusOnCompleteListener<T> {
    void onComplete(OplusTask<T> oplusTask);
}
