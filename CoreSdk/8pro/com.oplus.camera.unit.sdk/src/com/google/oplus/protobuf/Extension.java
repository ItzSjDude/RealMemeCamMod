package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.MessageLite;

/* JADX INFO: loaded from: classes.dex */
public abstract class Extension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {

    protected enum ExtensionType {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    public enum MessageType {
        PROTO1,
        PROTO2
    }

    protected abstract Object fromReflectionType(Object obj);

    public abstract Descriptors.FieldDescriptor getDescriptor();

    protected abstract ExtensionType getExtensionType();

    /* JADX DEBUG: Method merged with bridge method: getMessageDefaultInstance()Lcom/google/oplus/protobuf/MessageLite; */
    @Override // com.google.oplus.protobuf.ExtensionLite
    public abstract Message getMessageDefaultInstance();

    @Override // com.google.oplus.protobuf.ExtensionLite
    final boolean isLite() {
        return false;
    }

    protected abstract Object singularFromReflectionType(Object obj);

    protected abstract Object singularToReflectionType(Object obj);

    protected abstract Object toReflectionType(Object obj);

    public MessageType getMessageType() {
        return MessageType.PROTO2;
    }
}
