package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.GeneratedMessageV3;
import com.google.oplus.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Mixin extends GeneratedMessageV3 implements MixinOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ROOT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object root_;
    private static final Mixin DEFAULT_INSTANCE = new Mixin();
    private static final Parser<Mixin> PARSER = new AbstractParser<Mixin>() { // from class: com.google.oplus.protobuf.Mixin.1
        /* JADX DEBUG: Method merged with bridge method: parsePartialFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/protobuf/ExtensionRegistryLite;)Ljava/lang/Object; */
        @Override // com.google.oplus.protobuf.Parser
        public Mixin parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Mixin(codedInputStream, extensionRegistryLite);
        }
    };

    private Mixin(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Mixin() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.root_ = "";
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Mixin();
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Mixin(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (tag == 10) {
                                this.name_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.root_ = codedInputStream.readStringRequireUtf8();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
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
        return ApiProto.internal_static_google_protobuf_Mixin_descriptor;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ApiProto.internal_static_google_protobuf_Mixin_fieldAccessorTable.ensureFieldAccessorsInitialized(Mixin.class, Builder.class);
    }

    @Override // com.google.oplus.protobuf.MixinOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.oplus.protobuf.MixinOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.oplus.protobuf.MixinOrBuilder
    public String getRoot() {
        Object obj = this.root_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.root_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.oplus.protobuf.MixinOrBuilder
    public ByteString getRootBytes() {
        Object obj = this.root_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.root_ = byteStringCopyFromUtf8;
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
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.root_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.root_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.root_)) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.root_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Mixin)) {
            return super.equals(obj);
        }
        Mixin mixin = (Mixin) obj;
        return getName().equals(mixin.getName()) && getRoot().equals(mixin.getRoot()) && this.unknownFields.equals(mixin.unknownFields);
    }

    @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRoot().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    public static Mixin parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Mixin parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Mixin parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Mixin parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Mixin parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Mixin parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Mixin parseFrom(InputStream inputStream) throws IOException {
        return (Mixin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Mixin parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Mixin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Mixin parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Mixin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Mixin parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Mixin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Mixin parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Mixin) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Mixin parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Mixin) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
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

    public static Builder newBuilder(Mixin mixin) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(mixin);
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

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MixinOrBuilder {
        private Object name_;
        private Object root_;

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ApiProto.internal_static_google_protobuf_Mixin_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ApiProto.internal_static_google_protobuf_Mixin_fieldAccessorTable.ensureFieldAccessorsInitialized(Mixin.class, Builder.class);
        }

        private Builder() {
            this.name_ = "";
            this.root_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.name_ = "";
            this.root_ = "";
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
            this.name_ = "";
            this.root_ = "";
            return this;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ApiProto.internal_static_google_protobuf_Mixin_descriptor;
        }

        /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public Mixin getDefaultInstanceForType() {
            return Mixin.getDefaultInstance();
        }

        /* JADX DEBUG: Method merged with bridge method: build()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: build()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public Mixin build() {
            Mixin mixinBuildPartial = buildPartial();
            if (mixinBuildPartial.isInitialized()) {
                return mixinBuildPartial;
            }
            throw newUninitializedMessageException((Message) mixinBuildPartial);
        }

        /* JADX DEBUG: Method merged with bridge method: buildPartial()Lcom/google/oplus/protobuf/Message; */
        /* JADX DEBUG: Method merged with bridge method: buildPartial()Lcom/google/oplus/protobuf/MessageLite; */
        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        public Mixin buildPartial() {
            Mixin mixin = new Mixin(this);
            mixin.name_ = this.name_;
            mixin.root_ = this.root_;
            onBuilt();
            return mixin;
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
            if (message instanceof Mixin) {
                return mergeFrom((Mixin) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Mixin mixin) {
            if (mixin == Mixin.getDefaultInstance()) {
                return this;
            }
            if (!mixin.getName().isEmpty()) {
                this.name_ = mixin.name_;
                onChanged();
            }
            if (!mixin.getRoot().isEmpty()) {
                this.root_ = mixin.root_;
                onChanged();
            }
            mergeUnknownFields(mixin.unknownFields);
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
            Mixin mixin = null;
            try {
                try {
                    Mixin mixin2 = (Mixin) Mixin.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mixin2 != null) {
                        mergeFrom(mixin2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    Mixin mixin3 = (Mixin) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        mixin = mixin3;
                        if (mixin != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (mixin != null) {
                    mergeFrom(mixin);
                }
                throw th;
            }
        }

        @Override // com.google.oplus.protobuf.MixinOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.google.oplus.protobuf.MixinOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setName(String str) {
            str.getClass();
            this.name_ = str;
            onChanged();
            return this;
        }

        public Builder clearName() {
            this.name_ = Mixin.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.oplus.protobuf.MixinOrBuilder
        public String getRoot() {
            Object obj = this.root_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.root_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.google.oplus.protobuf.MixinOrBuilder
        public ByteString getRootBytes() {
            Object obj = this.root_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.root_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setRoot(String str) {
            str.getClass();
            this.root_ = str;
            onChanged();
            return this;
        }

        public Builder clearRoot() {
            this.root_ = Mixin.getDefaultInstance().getRoot();
            onChanged();
            return this;
        }

        public Builder setRootBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.root_ = byteString;
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

    public static Mixin getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Mixin> parser() {
        return PARSER;
    }

    @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Parser<Mixin> getParserForType() {
        return PARSER;
    }

    /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/Message; */
    /* JADX DEBUG: Method merged with bridge method: getDefaultInstanceForType()Lcom/google/oplus/protobuf/MessageLite; */
    @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
    public Mixin getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
