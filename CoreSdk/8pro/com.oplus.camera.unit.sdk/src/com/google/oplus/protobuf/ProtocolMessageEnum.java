package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.Internal;

/* JADX INFO: loaded from: classes.dex */
public interface ProtocolMessageEnum extends Internal.EnumLite {
    Descriptors.EnumDescriptor getDescriptorForType();

    @Override // com.google.oplus.protobuf.Internal.EnumLite
    int getNumber();

    Descriptors.EnumValueDescriptor getValueDescriptor();
}
