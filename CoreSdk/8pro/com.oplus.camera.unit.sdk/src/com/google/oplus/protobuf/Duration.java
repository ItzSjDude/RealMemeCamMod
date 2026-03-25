package com.google.oplus.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Duration extends GeneratedMessageV3 implements DurationOrBuilder {
    public static final int NANOS_FIELD_NUMBER = 2;
    public static final int SECONDS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int nanos_;
    private long seconds_;
    private static final Duration DEFAULT_INSTANCE = new Duration();
    private static final Parser<Duration> PARSER = new AbstractParser<Duration>() { // from class:
                                                                                    // com.google.oplus.protobuf.Duration.1
        /*
         * JADX DEBUG: Method merged with bridge method:
         * parsePartialFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/
         * oplus/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
         */
        @Override // com.google.oplus.protobuf.Parser
        public Duration parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite)
                throws InvalidProtocolBufferException {
            return new Duration(codedInputStream, extensionRegistryLite);
        }
    };

    private Duration(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Duration() {
        this.memoizedIsInitialized = (byte) -1;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Duration();
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3,
              // com.google.oplus.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Duration(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite)
            throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.seconds_ = codedInputStream.readInt64();
                            } else if (tag == 16) {
                                this.nanos_ = codedInputStream.readInt32();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite,
                                    tag)) {
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return DurationProto.internal_static_google_protobuf_Duration_descriptor;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return DurationProto.internal_static_google_protobuf_Duration_fieldAccessorTable
                .ensureFieldAccessorsInitialized(Duration.class, Builder.class);
    }

    @Override // com.google.oplus.protobuf.DurationOrBuilder
    public long getSeconds() {
        return this.seconds_;
    }

    @Override // com.google.oplus.protobuf.DurationOrBuilder
    public int getNanos() {
        return this.nanos_;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3,
              // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3,
              // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j = this.seconds_;
        if (j != 0) {
            codedOutputStream.writeInt64(1, j);
        }
        int i = this.nanos_;
        if (i != 0) {
            codedOutputStream.writeInt32(2, i);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3,
              // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        long j = this.seconds_;
        int iComputeInt64Size = j != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j) : 0;
        int i2 = this.nanos_;
        if (i2 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt32Size(2, i2);
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Duration)) {
            return super.equals(obj);
        }
        Duration duration = (Duration) obj;
        return getSeconds() == duration.getSeconds() && getNanos() == duration.getNanos()
                && this.unknownFields.equals(duration.unknownFields);
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getSeconds()))
                * 37) + 2) * 53) + getNanos()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    public static Duration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Duration parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite)
            throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Duration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Duration parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite)
            throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Duration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Duration parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite)
            throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Duration parseFrom(InputStream inputStream) throws IOException {
        return (Duration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Duration parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite)
            throws IOException {
        return (Duration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Duration parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Duration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Duration parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite)
            throws IOException {
        return (Duration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Duration parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Duration) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Duration parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite)
            throws IOException {
        return (Duration) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    /*
     * JADX DEBUG: Method merged with bridge method:
     * newBuilderForType()Lcom/google/oplus/protobuf/Message$Builder;
     */
    /*
     * JADX DEBUG: Method merged with bridge method:
     * newBuilderForType()Lcom/google/oplus/protobuf/MessageLite$Builder;
     */
    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Duration duration) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(duration);
    }

    /*
     * JADX DEBUG: Method merged with bridge method:
     * toBuilder()Lcom/google/oplus/protobuf/Message$Builder;
     */
    /*
     * JADX DEBUG: Method merged with bridge method:
     * toBuilder()Lcom/google/oplus/protobuf/MessageLite$Builder;
     */
    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /*
     * JADX DEBUG: Method merged with bridge method:
     * newBuilderForType(Lcom/google/oplus/protobuf/GeneratedMessageV3$BuilderParent
     * ;)Lcom/google/oplus/protobuf/Message$Builder;
     */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DurationOrBuilder {
        private int nanos_;
        private long seconds_;

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DurationProto.internal_static_google_protobuf_Duration_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DurationProto.internal_static_google_protobuf_Duration_fieldAccessorTable
                    .ensureFieldAccessorsInitialized(Duration.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clear()Lcom/google/oplus/protobuf/AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clear()Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clear()Lcom/google/oplus/protobuf/Message$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clear()Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.MessageLite.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.seconds_ = 0L;
            this.nanos_ = 0;
            return this;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder,
                  // com.google.oplus.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return DurationProto.internal_static_google_protobuf_Duration_descriptor;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite;
         */
        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder,
                  // com.google.oplus.protobuf.MessageOrBuilder
        public Duration getDefaultInstanceForType() {
            return Duration.getDefaultInstance();
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * build()Lcom/google/oplus/protobuf/Message;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * build()Lcom/google/oplus/protobuf/MessageLite;
         */
        @Override // com.google.oplus.protobuf.MessageLite.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Duration build() {
            Duration durationBuildPartial = buildPartial();
            if (durationBuildPartial.isInitialized()) {
                return durationBuildPartial;
            }
            throw newUninitializedMessageException((Message) durationBuildPartial);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * buildPartial()Lcom/google/oplus/protobuf/Message;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * buildPartial()Lcom/google/oplus/protobuf/MessageLite;
         */
        @Override // com.google.oplus.protobuf.MessageLite.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Duration buildPartial() {
            Duration duration = new Duration(this);
            duration.seconds_ = this.seconds_;
            duration.nanos_ = this.nanos_;
            onBuilt();
            return duration;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/AbstractMessageLite$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/Message$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        /* JADX DEBUG: Method merged with bridge method: clone()Ljava/lang/Object; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder clone() {
            return (Builder) super.clone();
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/
         * Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * setField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/
         * Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;)Lcom/
         * google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;)Lcom/
         * google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/
         * google/oplus/protobuf/AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/
         * google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/
         * google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;
         * ILjava/lang/Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * setRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;
         * ILjava/lang/Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * addRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava
         * /lang/Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * addRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava
         * /lang/Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/Message;)Lcom/google/oplus/protobuf/
         * AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/Message;)Lcom/google/oplus/protobuf/
         * Message$Builder;
         */
        @Override // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof Duration) {
                return mergeFrom((Duration) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Duration duration) {
            if (duration == Duration.getDefaultInstance()) {
                return this;
            }
            if (duration.getSeconds() != 0) {
                setSeconds(duration.getSeconds());
            }
            if (duration.getNanos() != 0) {
                setNanos(duration.getNanos());
            }
            mergeUnknownFields(duration.unknownFields);
            onChanged();
            return this;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/
         * protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/
         * AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/
         * protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/
         * AbstractMessageLite$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/
         * protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/
         * protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/
         * MessageLite$Builder;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0023 */
        @Override
        public Builder mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry)
                throws java.io.IOException {
            Duration parsedMessage = null;
            try {
                parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
            } catch (InvalidProtocolBufferException e) {
                parsedMessage = (Duration) e.getUnfinishedMessage();
                throw e.unwrapIOException();
            } finally {
                if (parsedMessage != null) {
                    mergeFrom(parsedMessage);
                }
            }
            return this;
        }

        @Override // com.google.oplus.protobuf.DurationOrBuilder
        public long getSeconds() {
            return this.seconds_;
        }

        public Builder setSeconds(long j) {
            this.seconds_ = j;
            onChanged();
            return this;
        }

        public Builder clearSeconds() {
            this.seconds_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.oplus.protobuf.DurationOrBuilder
        public int getNanos() {
            return this.nanos_;
        }

        public Builder setNanos(int i) {
            this.nanos_ = i;
            onChanged();
            return this;
        }

        public Builder clearNanos() {
            this.nanos_ = 0;
            onChanged();
            return this;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * setUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/AbstractMessage$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/GeneratedMessageV3$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder,
                  // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static Duration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Duration> parser() {
        return PARSER;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3,
              // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Parser<Duration> getParserForType() {
        return PARSER;
    }

    /*
     * JADX DEBUG: Method merged with bridge method:
     * getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message;
     */
    /*
     * JADX DEBUG: Method merged with bridge method:
     * getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite;
     */
    @Override // com.google.oplus.protobuf.MessageLiteOrBuilder,
              // com.google.oplus.protobuf.MessageOrBuilder
    public Duration getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
