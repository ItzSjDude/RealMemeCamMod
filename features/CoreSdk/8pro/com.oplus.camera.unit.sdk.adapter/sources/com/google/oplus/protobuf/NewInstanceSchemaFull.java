package com.google.oplus.protobuf;

import com.google.oplus.protobuf.GeneratedMessageV3;
/* loaded from: classes.dex */
final class NewInstanceSchemaFull implements NewInstanceSchema {
    NewInstanceSchemaFull() {
    }

    @Override // com.google.oplus.protobuf.NewInstanceSchema
    public Object newInstance(Object obj) {
        return ((GeneratedMessageV3) obj).newInstance(GeneratedMessageV3.UnusedPrivateParameter.INSTANCE);
    }
}
