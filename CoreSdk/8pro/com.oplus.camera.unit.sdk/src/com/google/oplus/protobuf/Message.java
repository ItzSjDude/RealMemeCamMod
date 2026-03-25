package com.google.oplus.protobuf;

import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public interface Message extends MessageLite, MessageOrBuilder {

    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        /*
         * JADX DEBUG: Method merged with bridge method:
         * build()Lcom/google/oplus/protobuf/MessageLite;
         */
        Message build();

        /*
         * JADX DEBUG: Method merged with bridge method:
         * buildPartial()Lcom/google/oplus/protobuf/MessageLite;
         */
        Message buildPartial();

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clear()Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        Builder clear();

        Builder clearField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor);

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        /* JADX INFO: renamed from: clone */
        Builder clone();

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i);

        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        boolean mergeDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite)
                throws IOException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/ByteString;)Lcom/google/oplus/protobuf/
         * MessageLite$Builder;
         */
        Builder mergeFrom(ByteString byteString) throws InvalidProtocolBufferException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/ByteString;Lcom/google/oplus/protobuf/
         * ExtensionRegistryLite;)Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite)
                throws InvalidProtocolBufferException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;)Lcom/google/oplus/
         * protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(CodedInputStream codedInputStream) throws IOException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/oplus/
         * protobuf/ExtensionRegistryLite;)Lcom/google/oplus/protobuf/
         * MessageLite$Builder;
         */
        Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite)
                throws IOException;

        Builder mergeFrom(Message message);

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Ljava/io/InputStream;)Lcom/google/oplus/protobuf/
         * MessageLite$Builder;
         */
        Builder mergeFrom(InputStream inputStream) throws IOException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom(Ljava/io/InputStream;Lcom/google/oplus/protobuf/
         * ExtensionRegistryLite;)Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom([B)Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(byte[] bArr) throws InvalidProtocolBufferException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom([BII)Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom([BIILcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/
         * oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite)
                throws InvalidProtocolBufferException;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * mergeFrom([BLcom/google/oplus/protobuf/ExtensionRegistryLite;)Lcom/google/
         * oplus/protobuf/MessageLite$Builder;
         */
        Builder mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite)
                throws InvalidProtocolBufferException;

        Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet);

        Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj);

        Builder setUnknownFields(UnknownFieldSet unknownFieldSet);
    }

    boolean equals(Object obj);

    Parser<? extends Message> getParserForType();

    int hashCode();

    /*
     * JADX DEBUG: Method merged with bridge method:
     * newBuilderForType()Lcom/google/oplus/protobuf/MessageLite$Builder;
     */
    Builder newBuilderForType();

    /*
     * JADX DEBUG: Method merged with bridge method:
     * toBuilder()Lcom/google/oplus/protobuf/MessageLite$Builder;
     */
    Builder toBuilder();

    String toString();
}
