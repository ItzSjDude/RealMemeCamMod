package com.google.oplus.protobuf;

import com.google.oplus.protobuf.UnknownFieldSet;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class UnknownFieldSetSchema extends UnknownFieldSchema<UnknownFieldSet, UnknownFieldSet.Builder> {
    private final boolean proto3;

    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    void makeImmutable(Object obj) {
    }

    public UnknownFieldSetSchema(boolean z) {
        this.proto3 = z;
    }

    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    boolean shouldDiscardUnknownFields(Reader reader) {
        return reader.shouldDiscardUnknownFields();
    }

    /* JADX DEBUG: Method merged with bridge method: newBuilder()Ljava/lang/Object; */
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public UnknownFieldSet.Builder newBuilder() {
        return UnknownFieldSet.newBuilder();
    }

    /* JADX DEBUG: Method merged with bridge method: addVarint(Ljava/lang/Object;IJ)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void addVarint(UnknownFieldSet.Builder builder, int i, long j) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addVarint(j).build());
    }

    /* JADX DEBUG: Method merged with bridge method: addFixed32(Ljava/lang/Object;II)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void addFixed32(UnknownFieldSet.Builder builder, int i, int i2) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addFixed32(i2).build());
    }

    /* JADX DEBUG: Method merged with bridge method: addFixed64(Ljava/lang/Object;IJ)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void addFixed64(UnknownFieldSet.Builder builder, int i, long j) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addFixed64(j).build());
    }

    /* JADX DEBUG: Method merged with bridge method: addLengthDelimited(Ljava/lang/Object;ILcom/google/oplus/protobuf/ByteString;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void addLengthDelimited(UnknownFieldSet.Builder builder, int i, ByteString byteString) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addLengthDelimited(byteString).build());
    }

    /* JADX DEBUG: Method merged with bridge method: addGroup(Ljava/lang/Object;ILjava/lang/Object;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void addGroup(UnknownFieldSet.Builder builder, int i, UnknownFieldSet unknownFieldSet) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addGroup(unknownFieldSet).build());
    }

    /* JADX DEBUG: Method merged with bridge method: toImmutable(Ljava/lang/Object;)Ljava/lang/Object; */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public UnknownFieldSet toImmutable(UnknownFieldSet.Builder builder) {
        return builder.build();
    }

    /* JADX DEBUG: Method merged with bridge method: writeTo(Ljava/lang/Object;Lcom/google/oplus/protobuf/Writer;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void writeTo(UnknownFieldSet unknownFieldSet, Writer writer) throws IOException {
        unknownFieldSet.writeTo(writer);
    }

    /* JADX DEBUG: Method merged with bridge method: writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/oplus/protobuf/Writer;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void writeAsMessageSetTo(UnknownFieldSet unknownFieldSet, Writer writer) throws IOException {
        unknownFieldSet.writeAsMessageSetTo(writer);
    }

    /* JADX DEBUG: Method merged with bridge method: getFromMessage(Ljava/lang/Object;)Ljava/lang/Object; */
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public UnknownFieldSet getFromMessage(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields;
    }

    /* JADX DEBUG: Method merged with bridge method: setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void setToMessage(Object obj, UnknownFieldSet unknownFieldSet) {
        ((GeneratedMessageV3) obj).unknownFields = unknownFieldSet;
    }

    /* JADX DEBUG: Method merged with bridge method: getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object; */
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public UnknownFieldSet.Builder getBuilderFromMessage(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields.toBuilder();
    }

    /* JADX DEBUG: Method merged with bridge method: setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public void setBuilderToMessage(Object obj, UnknownFieldSet.Builder builder) {
        ((GeneratedMessageV3) obj).unknownFields = builder.build();
    }

    /* JADX DEBUG: Method merged with bridge method: merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public UnknownFieldSet merge(UnknownFieldSet unknownFieldSet, UnknownFieldSet unknownFieldSet2) {
        return unknownFieldSet.toBuilder().mergeFrom(unknownFieldSet2).build();
    }

    /* JADX DEBUG: Method merged with bridge method: getSerializedSize(Ljava/lang/Object;)I */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public int getSerializedSize(UnknownFieldSet unknownFieldSet) {
        return unknownFieldSet.getSerializedSize();
    }

    /* JADX DEBUG: Method merged with bridge method: getSerializedSizeAsMessageSet(Ljava/lang/Object;)I */
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.oplus.protobuf.UnknownFieldSchema
    public int getSerializedSizeAsMessageSet(UnknownFieldSet unknownFieldSet) {
        return unknownFieldSet.getSerializedSizeAsMessageSet();
    }
}
