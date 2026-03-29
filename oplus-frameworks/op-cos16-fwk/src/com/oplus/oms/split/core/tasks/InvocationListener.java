package com.oplus.oms.split.core.tasks;

interface InvocationListener<T> {
    void invoke(OplusTask<T> oplusTask);
}
