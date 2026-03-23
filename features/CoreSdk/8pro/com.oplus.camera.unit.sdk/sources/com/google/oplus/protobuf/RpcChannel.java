package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
/* loaded from: classes.dex */
public interface RpcChannel {
    void callMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2, RpcCallback<Message> rpcCallback);
}
