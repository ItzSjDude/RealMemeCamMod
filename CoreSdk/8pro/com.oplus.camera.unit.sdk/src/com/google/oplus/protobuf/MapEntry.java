package com.google.oplus.protobuf;

import com.google.oplus.protobuf.AbstractMessage;
import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.MapEntryLite;
import com.google.oplus.protobuf.Message;
import com.google.oplus.protobuf.WireFormat;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class MapEntry<K, V> extends AbstractMessage {
    private volatile int cachedSerializedSize;
    private final K key;
    private final Metadata<K, V> metadata;
    private final V value;

    /* JADX INFO: Access modifiers changed from: private */
    static final class Metadata<K, V> extends MapEntryLite.Metadata<K, V> {
        public final Descriptors.Descriptor descriptor;
        public final Parser<MapEntry<K, V>> parser;

        public Metadata(Descriptors.Descriptor descriptor, MapEntry<K, V> mapEntry, WireFormat.FieldType fieldType,
                WireFormat.FieldType fieldType2) {
            super(fieldType, mapEntry.key, fieldType2, mapEntry.value);
            this.descriptor = descriptor;
            this.parser = new AbstractParser<MapEntry<K, V>>() { // from class:
                                                                 // com.google.oplus.protobuf.MapEntry.Metadata.1
                /*
                 * JADX DEBUG: Method merged with bridge method:
                 * parsePartialFrom(Lcom/google/oplus/protobuf/CodedInputStream;Lcom/google/
                 * oplus/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
                 */
                @Override // com.google.oplus.protobuf.Parser
                public MapEntry<K, V> parsePartialFrom(CodedInputStream codedInputStream,
                        ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new MapEntry<>(Metadata.this, codedInputStream, extensionRegistryLite);
                }
            };
        }
    }

    private MapEntry(Descriptors.Descriptor descriptor, WireFormat.FieldType fieldType, K k,
            WireFormat.FieldType fieldType2, V v) {
        this.cachedSerializedSize = -1;
        this.key = k;
        this.value = v;
        this.metadata = new Metadata<>(descriptor, this, fieldType, fieldType2);
    }

    private MapEntry(Metadata metadata, K k, V v) {
        this.cachedSerializedSize = -1;
        this.key = k;
        this.value = v;
        this.metadata = metadata;
    }

    private MapEntry(Metadata<K, V> metadata, CodedInputStream codedInputStream,
            ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this.cachedSerializedSize = -1;
        try {
            this.metadata = metadata;
            Map.Entry entry = MapEntryLite.parseEntry(codedInputStream, metadata, extensionRegistryLite);
            this.key = (K) entry.getKey();
            this.value = (V) entry.getValue();
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
        }
    }

    public static <K, V> MapEntry<K, V> newDefaultInstance(Descriptors.Descriptor descriptor,
            WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        return new MapEntry<>(descriptor, fieldType, k, fieldType2, v);
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.cachedSerializedSize != -1) {
            return this.cachedSerializedSize;
        }
        int iComputeSerializedSize = MapEntryLite.computeSerializedSize(this.metadata, this.key, this.value);
        this.cachedSerializedSize = iComputeSerializedSize;
        return iComputeSerializedSize;
    }

    @Override // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MapEntryLite.writeTo(codedOutputStream, this.metadata, this.key, this.value);
    }

    @Override // com.google.oplus.protobuf.AbstractMessage,
              // com.google.oplus.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return isInitialized(this.metadata, this.value);
    }

    @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
    public Parser<MapEntry<K, V>> getParserForType() {
        return this.metadata.parser;
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
    public Builder<K, V> newBuilderForType() {
        return new Builder<>(this.metadata);
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
    public Builder<K, V> toBuilder() {
        return new Builder<>(this.metadata, this.key, this.value, true, true);
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
    public MapEntry<K, V> getDefaultInstanceForType() {
        Metadata<K, V> metadata = this.metadata;
        return new MapEntry<>(metadata, metadata.defaultKey, this.metadata.defaultValue);
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return this.metadata.descriptor;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type:
     * java.util.TreeMap
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.FieldDescriptor fieldDescriptor : this.metadata.descriptor.getFields()) {
            if (hasField(fieldDescriptor)) {
                treeMap.put(fieldDescriptor, getField(fieldDescriptor));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    private void checkFieldDescriptor(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getContainingType() == this.metadata.descriptor) {
            return;
        }
        throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName() + "\" used in message \""
                + this.metadata.descriptor.getFullName());
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        checkFieldDescriptor(fieldDescriptor);
        return true;
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        checkFieldDescriptor(fieldDescriptor);
        Object key = fieldDescriptor.getNumber() == 1 ? getKey() : getValue();
        return fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM
                ? fieldDescriptor.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue())
                : key;
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.oplus.protobuf.MessageOrBuilder
    public UnknownFieldSet getUnknownFields() {
        return UnknownFieldSet.getDefaultInstance();
    }

    public static class Builder<K, V> extends AbstractMessage.Builder<Builder<K, V>> {
        private boolean hasKey;
        private boolean hasValue;
        private K key;
        private final Metadata<K, V> metadata;
        private V value;

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setUnknownFields(Lcom/google/oplus/protobuf/UnknownFieldSet;)Lcom/google/
         * oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.Message.Builder
        public Builder<K, V> setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return this;
        }

        private Builder(Metadata<K, V> metadata) {
            this(metadata, metadata.defaultKey, metadata.defaultValue, false, false);
        }

        private Builder(Metadata<K, V> metadata, K k, V v, boolean z, boolean z2) {
            this.metadata = metadata;
            this.key = k;
            this.value = v;
            this.hasKey = z;
            this.hasValue = z2;
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public Builder<K, V> setKey(K k) {
            this.key = k;
            this.hasKey = true;
            return this;
        }

        public Builder<K, V> clearKey() {
            this.key = this.metadata.defaultKey;
            this.hasKey = false;
            return this;
        }

        public Builder<K, V> setValue(V v) {
            this.value = v;
            this.hasValue = true;
            return this;
        }

        public Builder<K, V> clearValue() {
            this.value = this.metadata.defaultValue;
            this.hasValue = false;
            return this;
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
        public MapEntry<K, V> build() {
            MapEntry<K, V> mapEntryBuildPartial = buildPartial();
            if (mapEntryBuildPartial.isInitialized()) {
                return mapEntryBuildPartial;
            }
            throw newUninitializedMessageException((Message) mapEntryBuildPartial);
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
        public MapEntry<K, V> buildPartial() {
            return new MapEntry<>(this.metadata, this.key, this.value);
        }

        @Override // com.google.oplus.protobuf.Message.Builder,
                  // com.google.oplus.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.metadata.descriptor;
        }

        private void checkFieldDescriptor(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == this.metadata.descriptor) {
                return;
            }
            throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName()
                    + "\" used in message \"" + this.metadata.descriptor.getFullName());
        }

        @Override // com.google.oplus.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() != 2
                    || fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                throw new RuntimeException("\"" + fieldDescriptor.getFullName() + "\" is not a message value field.");
            }
            return ((Message) this.value).newBuilderForType();
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava/lang/
         * Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        /*
         * JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type:
         * com.google.oplus.protobuf.MapEntry$Builder<K, V>
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.oplus.protobuf.Message.Builder
        public Builder<K, V> setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                setKey((K) obj);
            } else {
                if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                    obj = Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber());
                } else if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && obj != null
                        && !this.metadata.defaultValue.getClass().isInstance(obj)) {
                    obj = ((Message) this.metadata.defaultValue).toBuilder().mergeFrom((Message) obj).build();
                }
                setValue((V) obj);
            }
            return this;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * clearField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;)Lcom/
         * google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.Message.Builder
        public Builder<K, V> clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                clearKey();
            } else {
                clearValue();
            }
            return this;
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * setRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;
         * ILjava/lang/Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.Message.Builder
        public Builder<K, V> setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        /*
         * JADX DEBUG: Method merged with bridge method:
         * addRepeatedField(Lcom/google/oplus/protobuf/Descriptors$FieldDescriptor;Ljava
         * /lang/Object;)Lcom/google/oplus/protobuf/Message$Builder;
         */
        @Override // com.google.oplus.protobuf.Message.Builder
        public Builder<K, V> addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
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
        public MapEntry<K, V> getDefaultInstanceForType() {
            Metadata<K, V> metadata = this.metadata;
            return new MapEntry<>(metadata, metadata.defaultKey, this.metadata.defaultValue);
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return MapEntry.isInitialized(this.metadata, this.value);
        }

        /*
         * JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type:
         * java.util.TreeMap
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.FieldDescriptor fieldDescriptor : this.metadata.descriptor.getFields()) {
                if (hasField(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            return fieldDescriptor.getNumber() == 1 ? this.hasKey : this.hasValue;
        }

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            Object key = fieldDescriptor.getNumber() == 1 ? getKey() : getValue();
            return fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM
                    ? fieldDescriptor.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue())
                    : key;
        }

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.oplus.protobuf.MessageOrBuilder
        public UnknownFieldSet getUnknownFields() {
            return UnknownFieldSet.getDefaultInstance();
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
         * clone()Lcom/google/oplus/protobuf/Message$Builder;
         */
        /*
         * JADX DEBUG: Method merged with bridge method:
         * clone()Lcom/google/oplus/protobuf/MessageLite$Builder;
         */
        /* JADX DEBUG: Method merged with bridge method: clone()Ljava/lang/Object; */
        @Override // com.google.oplus.protobuf.AbstractMessage.Builder,
                  // com.google.oplus.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder<K, V> clone() {
            return new Builder<>(this.metadata, this.key, this.value, this.hasKey, this.hasValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> boolean isInitialized(Metadata metadata, V v) {
        if (metadata.valueType.getJavaType() == WireFormat.JavaType.MESSAGE) {
            return ((MessageLite) v).isInitialized();
        }
        return true;
    }

    final Metadata<K, V> getMetadata() {
        return this.metadata;
    }
}
