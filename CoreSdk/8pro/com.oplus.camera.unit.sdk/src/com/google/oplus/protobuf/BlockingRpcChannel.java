package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;

/* JADX INFO: loaded from: classes.dex */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2) throws ServiceException;
}
