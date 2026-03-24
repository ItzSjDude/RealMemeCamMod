package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.GeneratedMessageV3;
import com.google.oplus.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class SourceContext extends GeneratedMessageV3 implements SourceContextOrBuilder {
    public static final int FILE_NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object fileName_;
    private byte memoizedIsInitialized;
    private static final SourceContext DEFAULT_INSTANCE = new SourceContext();
    private static final Parser<SourceContext> PARSER = new AbstractParser<SourceContext>() { // from class: com.google.oplus.protobuf.SourceContext.1
        /* JADX DEBUG: Method merged with bridge method: parsePartialFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Ljava/lang/Object; */
        @Override // com.google.oplus.protobuf.Parser
        public SourceContext parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new SourceContext(codedInputStream, extensionRegistryLite);
        }
    };

    private SourceContext(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private SourceContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.fileName_ = "";
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new SourceContext();
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private SourceContext(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            this.fileName_ = codedInputStream.readStringRequireUtf8();
                        } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SourceContextProto.internal_static_google_protobuf_SourceContext_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceContext.class, Builder.class);
    }

    @Override // com.google.oplus.protobuf.SourceContextOrBuilder
    public String getFileName() {
        Object obj = this.fileName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.fileName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.oplus.protobuf.SourceContextOrBuilder
    public ByteString getFileNameBytes() {
        Object obj = this.fileName_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fileName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
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
        if (!GeneratedMessageV3.isStringEmpty(this.fileName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.fileName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = (GeneratedMessageV3.isStringEmpty(this.fileName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.fileName_)) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iComputeStringSize;
        return iComputeStringSize;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SourceContext)) {
            return super.equals(obj);
        }
        SourceContext sourceContext = (SourceContext) obj;
        return getFileName().equals(sourceContext.getFileName()) && this.unknownFields.equals(sourceContext.unknownFields);
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int iHashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFileName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    public static SourceContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static SourceContext parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static SourceContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static SourceContext parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static SourceContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static SourceContext parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static SourceContext parseFrom(InputStream inputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SourceContext parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SourceContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SourceContext parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SourceContext parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static SourceContext parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    /* JADX DEBUG: Method merged with bridge method: newBuilderForType()Lcom/google/oplus/protobuf/Message$Builder; */
    /* JADX DEBUG: Method merged with bridge method: newBuilderForType()Lcom/google/oplus/protobuf/MessageLite$Builder; */
    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(SourceContext sourceContext) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sourceContext);
    }

    /* JADX DEBUG: Method merged with bridge method: toBuilder()Lcom/google/oplus/protobuf/Message$Builder; */
    /* JADX DEBUG: Method merged with bridge method: toBuilder()Lcom/google/oplus/protobuf/MessageLite$Builder; */
    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /* JADX DEBUG: Method merged with bridge method: newBuilderForType(Lcom/google/oplus/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/oplus/protobuf/Message$Builder; */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SourceContextOrBuilder {
        private Object fileName_;

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceContext.class, Builder.class);
        }

        private Builder() {
            this.fileName_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.fileName_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* JADX DEBUG: Method merged with bridge method: clear()Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clear()Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clear()Lcom/google/oplus/protobuf/Message$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clear()Lcom/google/oplus/protobuf/MessageLite$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.fileName_ = "";
            return this;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
        }

        /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public SourceContext getDefaultInstanceForType() {
            return SourceContext.getDefaultInstance();
        }

        /* JADX DEBUG: Method merged with bridge method: build()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: build()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public SourceContext build() {
            SourceContext sourceContextBuildPartial = buildPartial();
            if (sourceContextBuildPartial.isInitialized()) {
                return sourceContextBuildPartial;
            }
            throw newUninitializedMessageException((Message) sourceContextBuildPartial);
        }

        /* JADX DEBUG: Method merged with bridge method: buildPartial()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: buildPartial()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public SourceContext buildPartial() {
            SourceContext sourceContext = new SourceContext(this);
            sourceContext.fileName_ = this.fileName_;
            onBuilt();
            return sourceContext;
        }

        /* JADX DEBUG: Method merged with bridge method: clone()Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clone()Lcom/google/oplus/protobuf/AbstractMessageLite$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clone()Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clone()Lcom/google/oplus/protobuf/Message$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clone()Lcom/google/oplus/protobuf/MessageLite$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clone()Ljava/lang/Object; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo0clone() {
            return (Builder) super.mo0clone();
        }

        /* JADX DEBUG: Method merged with bridge method: setField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: setField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        /* JADX DEBUG: Method merged with bridge method: clearField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clearField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        /* JADX DEBUG: Method merged with bridge method: clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: clearOneof(Lcom/google/oplus/protobuf/Descriptors$OneofDescriptor;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        /* JADX DEBUG: Method merged with bridge method: setRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: setRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        /* JADX DEBUG: Method merged with bridge method: addRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: addRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/Message;)Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/Message;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof SourceContext) {
                return mergeFrom((SourceContext) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(SourceContext sourceContext) {
            if (sourceContext == SourceContext.getDefaultInstance()) {
                return this;
            }
            if (!sourceContext.getFileName().isEmpty()) {
                this.fileName_ = sourceContext.fileName_;
                onChanged();
            }
            mergeUnknownFields(sourceContext.unknownFields);
            onChanged();
            return this;
        }

        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/AbstractMessageLite$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/Message$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/MessageLite$Builder; */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            SourceContext sourceContext = null;
            try {
                try {
                    SourceContext sourceContext2 = (SourceContext) SourceContext.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sourceContext2 != null) {
                        mergeFrom(sourceContext2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    SourceContext sourceContext3 = (SourceContext) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        sourceContext = sourceContext3;
                        if (sourceContext != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (sourceContext != null) {
                    mergeFrom(sourceContext);
                }
                throw th;
            }
        }

        @Override // com.google.oplus.protobuf.SourceContextOrBuilder
        public String getFileName() {
            Object obj = this.fileName_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fileName_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.google.oplus.protobuf.SourceContextOrBuilder
        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setFileName(String str) {
            str.getClass();
            this.fileName_ = str;
            onChanged();
            return this;
        }

        public Builder clearFileName() {
            this.fileName_ = SourceContext.getDefaultInstance().getFileName();
            onChanged();
            return this;
        }

        public Builder setFileNameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.fileName_ = byteString;
            onChanged();
            return this;
        }

        /* JADX DEBUG: Method merged with bridge method: setUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: setUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        /* JADX DEBUG: Method merged with bridge method: mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/oplus/protobuf/AbstractMessage$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/oplus/protobuf/GeneratedMessageV3$Builder; */
        /* JADX DEBUG: Method merged with bridge method: mergeUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/oplus/protobuf/Message$Builder; */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static SourceContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<SourceContext> parser() {
        return PARSER;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Parser<SourceContext> getParserForType() {
        return PARSER;
    }

    /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message; */
    /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite; */
    @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
    public SourceContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
