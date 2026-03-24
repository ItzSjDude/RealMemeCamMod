package com.google.oplus.protobuf;

/* JADX INFO: loaded from: classes.dex */
interface MutabilityOracle {
    public static final MutabilityOracle IMMUTABLE = new MutabilityOracle() { // from class: com.google.oplus.protobuf.MutabilityOracle.1
        @Override // com.google.oplus.protobuf.MutabilityOracle
        public void ensureMutable() {
            throw new UnsupportedOperationException();
        }
    };

    void ensureMutable();
}
