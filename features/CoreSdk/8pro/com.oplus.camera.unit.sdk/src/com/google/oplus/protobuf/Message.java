package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public interface Message extends MessageLite, MessageOrBuilder {

    /* loaded from: classes.dex */
    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Message build();

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Message buildPartial();

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder clear();

        Builder clearField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor);

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder clone();

        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i);

        @Override // 
        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        @Override // 
        boolean mergeDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(ByteString byteString) throws InvalidProtocolBufferException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(CodedInputStream codedInputStream) throws IOException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        Builder mergeFrom(Message message);

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(InputStream inputStream) throws IOException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(byte[] bArr) throws InvalidProtocolBufferException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;

        @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
        Builder mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;

        Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet);

        Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj);

        Builder setUnknownFields(UnknownFieldSet unknownFieldSet);
    }

    boolean equals(Object obj);

    @Override // 
    Parser<? extends Message> getParserForType();

    int hashCode();

    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    Builder newBuilderForType();

    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    Builder toBuilder();

    String toString();
}
