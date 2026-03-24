package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.GeneratedMessageV3;
import com.google.oplus.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class DoubleValue extends GeneratedMessageV3 implements DoubleValueOrBuilder {
    private static final DoubleValue DEFAULT_INSTANCE = new DoubleValue();
    private static final Parser<DoubleValue> PARSER = new AbstractParser<DoubleValue>() { // from class: com.google.oplus.protobuf.DoubleValue.1
        @Override // com.google.oplus.protobuf.Parser
        public DoubleValue parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new DoubleValue(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int VALUE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private double value_;

    private DoubleValue(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private DoubleValue() {
        this.memoizedIsInitialized = (byte) -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new DoubleValue();
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private DoubleValue(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 9) {
                            this.value_ = codedInputStream.readDouble();
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return WrappersProto.internal_static_google_protobuf_DoubleValue_descriptor;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return WrappersProto.internal_static_google_protobuf_DoubleValue_fieldAccessorTable.ensureFieldAccessorsInitialized(DoubleValue.class, Builder.class);
    }

    @Override // com.google.oplus.protobuf.DoubleValueOrBuilder
    public double getValue() {
        return this.value_;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLiteOrBuilder
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

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (Double.doubleToRawLongBits(this.value_) != 0) {
            codedOutputStream.writeDouble(1, this.value_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeDoubleSize = (Double.doubleToRawLongBits(this.value_) != 0 ? 0 + CodedOutputStream.computeDoubleSize(1, this.value_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = computeDoubleSize;
        return computeDoubleSize;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DoubleValue)) {
            return super.equals(obj);
        }
        DoubleValue doubleValue = (DoubleValue) obj;
        return Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(doubleValue.getValue()) && this.unknownFields.equals(doubleValue.unknownFields);
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(Double.doubleToLongBits(getValue()))) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public static DoubleValue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static DoubleValue parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static DoubleValue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static DoubleValue parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static DoubleValue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static DoubleValue parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static DoubleValue parseFrom(InputStream inputStream) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DoubleValue parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static DoubleValue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DoubleValue parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static DoubleValue parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static DoubleValue parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DoubleValue) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(DoubleValue doubleValue) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(doubleValue);
    }

    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    /* loaded from: classes.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DoubleValueOrBuilder {
        private double value_;

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WrappersProto.internal_static_google_protobuf_DoubleValue_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WrappersProto.internal_static_google_protobuf_DoubleValue_fieldAccessorTable.ensureFieldAccessorsInitialized(DoubleValue.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.value_ = 0.0d;
            return this;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return WrappersProto.internal_static_google_protobuf_DoubleValue_descriptor;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public DoubleValue getDefaultInstanceForType() {
            return DoubleValue.getDefaultInstance();
        }

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public DoubleValue build() {
            DoubleValue buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public DoubleValue buildPartial() {
            DoubleValue doubleValue = new DoubleValue(this);
            doubleValue.value_ = this.value_;
            onBuilt();
            return doubleValue;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof DoubleValue) {
                return mergeFrom((DoubleValue) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(DoubleValue doubleValue) {
            if (doubleValue == DoubleValue.getDefaultInstance()) {
                return this;
            }
            if (doubleValue.getValue() != 0.0d) {
                setValue(doubleValue.getValue());
            }
            mergeUnknownFields(doubleValue.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.oplus.protobuf.DoubleValue.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.oplus.protobuf.Parser r1 = com.google.oplus.protobuf.DoubleValue.access$400()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                com.google.oplus.protobuf.DoubleValue r3 = (com.google.oplus.protobuf.DoubleValue) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.oplus.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.oplus.protobuf.DoubleValue r4 = (com.google.oplus.protobuf.DoubleValue) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.oplus.protobuf.DoubleValue.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.google.oplus.protobuf.DoubleValue$Builder");
        }

        @Override // com.google.oplus.protobuf.DoubleValueOrBuilder
        public double getValue() {
            return this.value_;
        }

        public Builder setValue(double d) {
            this.value_ = d;
            onChanged();
            return this;
        }

        public Builder clearValue() {
            this.value_ = 0.0d;
            onChanged();
            return this;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static DoubleValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static DoubleValue of(double d) {
        return newBuilder().setValue(d).build();
    }

    public static Parser<DoubleValue> parser() {
        return PARSER;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Parser<DoubleValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
    public DoubleValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
