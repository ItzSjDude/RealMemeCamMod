package com.google.oplus.protobuf;

/* JADX INFO: loaded from: classes.dex */
public final class RpcUtil {
    /*
     * JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type:
     * com.google.oplus.protobuf.RpcCallback<com.google.oplus.protobuf.Message>
     */
    /* JADX WARN: Multi-variable type inference failed */
    public static <Type extends Message> RpcCallback<Type> specializeCallback(RpcCallback<Message> rpcCallback) {
        return (RpcCallback<Type>) rpcCallback;
    }

    private RpcUtil() {
    }

    public static <Type extends Message> RpcCallback<Message> generalizeCallback(final RpcCallback<Type> rpcCallback,
            final Class<Type> cls, final Type type) {
        return new RpcCallback<Message>() { // from class: com.google.oplus.protobuf.RpcUtil.1
            /* JADX DEBUG: Method merged with bridge method: run(Ljava/lang/Object;)V */
            @Override // com.google.oplus.protobuf.RpcCallback
            public void run(Message message) {
                Message messageCopyAsType;
                try {
                    messageCopyAsType = (Message) cls.cast(message);
                } catch (ClassCastException unused) {
                    messageCopyAsType = RpcUtil.copyAsType(type, message);
                }
                rpcCallback.run((Type) messageCopyAsType);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <Type extends Message> Type copyAsType(Type type, Message message) {
        return (Type) type.newBuilderForType().mergeFrom(message).build();
    }

    public static <ParameterType> RpcCallback<ParameterType> newOneTimeCallback(
            final RpcCallback<ParameterType> rpcCallback) {
        return new RpcCallback<ParameterType>() { // from class: com.google.oplus.protobuf.RpcUtil.2
            private boolean alreadyCalled = false;

            @Override // com.google.oplus.protobuf.RpcCallback
            public void run(ParameterType parametertype) {
                synchronized (this) {
                    if (this.alreadyCalled) {
                        throw new AlreadyCalledException();
                    }
                    this.alreadyCalled = true;
                }
                rpcCallback.run(parametertype);
            }
        };
    }

    public static final class AlreadyCalledException extends RuntimeException {
        private static final long serialVersionUID = 5469741279507848266L;

        public AlreadyCalledException() {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }
}
