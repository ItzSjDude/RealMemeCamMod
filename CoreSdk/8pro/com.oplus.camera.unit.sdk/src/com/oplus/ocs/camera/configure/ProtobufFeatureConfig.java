package com.oplus.ocs.camera.configure;

import com.google.oplus.protobuf.AbstractMessageLite;
import com.google.oplus.protobuf.AbstractParser;
import com.google.oplus.protobuf.ByteString;
import com.google.oplus.protobuf.CodedInputStream;
import com.google.oplus.protobuf.CodedOutputStream;
import com.google.oplus.protobuf.Descriptors;
import com.google.oplus.protobuf.ExtensionRegistry;
import com.google.oplus.protobuf.ExtensionRegistryLite;
import com.google.oplus.protobuf.GeneratedMessageV3;
import com.google.oplus.protobuf.Internal;
import com.google.oplus.protobuf.InvalidProtocolBufferException;
import com.google.oplus.protobuf.LazyStringArrayList;
import com.google.oplus.protobuf.LazyStringList;
import com.google.oplus.protobuf.MapEntry;
import com.google.oplus.protobuf.MapField;
import com.google.oplus.protobuf.Message;
import com.google.oplus.protobuf.MessageOrBuilder;
import com.google.oplus.protobuf.Parser;
import com.google.oplus.protobuf.ProtocolStringList;
import com.google.oplus.protobuf.RepeatedFieldBuilderV3;
import com.google.oplus.protobuf.SingleFieldBuilderV3;
import com.google.oplus.protobuf.UnknownFieldSet;
import com.google.oplus.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class ProtobufFeatureConfig {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n camera_unit_feature_config.proto\"¢\u0001\n\fFeatureTable\u0012\u0010\n\bstr_pool\u0018\u0001 \u0003(\t\u00121\n\u0014camera_feature_table\u0018\u0002 \u0001(\u000b2\u0013.CameraFeatureTable\u0012<\n\u001acamera_group_feature_table\u0018\u0003 \u0001(\u000b2\u0018.CameraGroupFeatureTable\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\"Ü\u0002\n\u0007Feature\u0012\u001a\n\u0012feature_name_index\u0018\u0001 \u0001(\u0005\u0012\u001e\n\u0016feature_key_name_index\u0018\u0002 \u0001(\u0005\u0012!\n\u0019feature_value_range_index\u0018\u0003 \u0001(\u0005\u0012#\n\u001bfeature_default_Value_index\u0018\u0004 \u0001(\u0005\u0012\u0018\n\u0010entry_type_index\u0018\u0005 \u0001(\u0005\u0012 \n\u0018feature_value_type_index\u0018\u0006 \u0001(\u0005\u0012\u0016\n\u000egroup_conflict\u0018\u0007 \u0001(\b\u0012/\n\fconflict_map\u0018\b \u0003(\u000b2\u0019.Feature.ConflictMapEntry\u001aH\n\u0010ConflictMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.ConflictFeatureList:\u00028\u0001\"B\n\u0013ConflictFeatureList\u0012+\n\u0011conflict_features\u0018\u0001 \u0003(\u000b2\u0010.ConflictFeature\"p\n\u000fConflictFeature\u0012\u001a\n\u0012feature_name_index\u0018\u0001 \u0001(\u0005\u0012\u001b\n\u0013feature_value_index\u0018\u0002 \u0001(\u0005\u0012$\n\u001cfeature_conflict_value_index\u0018\u0003 \u0001(\u0005\"8\n\u0016CameraTypeFeatureTable\u0012\u001e\n\ffeature_list\u0018\u0001 \u0003(\u000b2\b.Feature\"]\n\u001aCameraTypeFeatureTableList\u0012?\n\u001ecamera_type_feature_table_list\u0018\u0001 \u0003(\u000b2\u0017.CameraTypeFeatureTable\"¿\u0001\n\u0010ModeFeatureTable\u0012R\n\u001acamera_type_feature_tables\u0018\u0001 \u0003(\u000b2..ModeFeatureTable.CameraTypeFeatureTablesEntry\u001aW\n\u001cCameraTypeFeatureTablesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.CameraTypeFeatureTable:\u00028\u0001\"Í\u0001\n\u0015ModeGroupFeatureTable\u0012W\n\u001acamera_type_feature_tables\u0018\u0001 \u0003(\u000b23.ModeGroupFeatureTable.CameraTypeFeatureTablesEntry\u001a[\n\u001cCameraTypeFeatureTablesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u0012*\n\u0005value\u0018\u0002 \u0001(\u000b2\u001b.CameraTypeFeatureTableList:\u00028\u0001\"ª\u0001\n\u0012CameraFeatureTable\u0012G\n\u0013mode_feature_tables\u0018\u0001 \u0003(\u000b2*.CameraFeatureTable.ModeFeatureTablesEntry\u001aK\n\u0016ModeFeatureTablesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012 \n\u0005value\u0018\u0002 \u0001(\u000b2\u0011.ModeFeatureTable:\u00028\u0001\"É\u0001\n\u0017CameraGroupFeatureTable\u0012W\n\u0019mode_group_feature_tables\u0018\u0001 \u0003(\u000b24.CameraGroupFeatureTable.ModeGroupFeatureTablesEntry\u001aU\n\u001bModeGroupFeatureTablesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012%\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.ModeGroupFeatureTable:\u00028\u0001B7\n\u001ecom.oplus.ocs.camera.configureB\u0015ProtobufFeatureConfigb\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Descriptor internal_static_CameraFeatureTable_ModeFeatureTablesEntry_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraFeatureTable_ModeFeatureTablesEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CameraFeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraFeatureTable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CameraGroupFeatureTable_ModeGroupFeatureTablesEntry_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraGroupFeatureTable_ModeGroupFeatureTablesEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CameraGroupFeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraGroupFeatureTable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CameraTypeFeatureTableList_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraTypeFeatureTableList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CameraTypeFeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_CameraTypeFeatureTable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ConflictFeatureList_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ConflictFeatureList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ConflictFeature_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ConflictFeature_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_FeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_FeatureTable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_Feature_ConflictMapEntry_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_Feature_ConflictMapEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_Feature_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_Feature_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ModeFeatureTable_CameraTypeFeatureTablesEntry_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ModeFeatureTable_CameraTypeFeatureTablesEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ModeFeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ModeFeatureTable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ModeGroupFeatureTable_CameraTypeFeatureTablesEntry_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ModeGroupFeatureTable_CameraTypeFeatureTablesEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_ModeGroupFeatureTable_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_ModeGroupFeatureTable_fieldAccessorTable;

    /* loaded from: classes.dex */
    public interface CameraFeatureTableOrBuilder extends MessageOrBuilder {
        boolean containsModeFeatureTables(String str);

        @Deprecated
        Map<String, ModeFeatureTable> getModeFeatureTables();

        int getModeFeatureTablesCount();

        Map<String, ModeFeatureTable> getModeFeatureTablesMap();

        ModeFeatureTable getModeFeatureTablesOrDefault(String str, ModeFeatureTable modeFeatureTable);

        ModeFeatureTable getModeFeatureTablesOrThrow(String str);
    }

    /* loaded from: classes.dex */
    public interface CameraGroupFeatureTableOrBuilder extends MessageOrBuilder {
        boolean containsModeGroupFeatureTables(String str);

        @Deprecated
        Map<String, ModeGroupFeatureTable> getModeGroupFeatureTables();

        int getModeGroupFeatureTablesCount();

        Map<String, ModeGroupFeatureTable> getModeGroupFeatureTablesMap();

        ModeGroupFeatureTable getModeGroupFeatureTablesOrDefault(String str, ModeGroupFeatureTable modeGroupFeatureTable);

        ModeGroupFeatureTable getModeGroupFeatureTablesOrThrow(String str);
    }

    /* loaded from: classes.dex */
    public interface CameraTypeFeatureTableListOrBuilder extends MessageOrBuilder {
        CameraTypeFeatureTable getCameraTypeFeatureTableList(int i);

        int getCameraTypeFeatureTableListCount();

        List<CameraTypeFeatureTable> getCameraTypeFeatureTableListList();

        CameraTypeFeatureTableOrBuilder getCameraTypeFeatureTableListOrBuilder(int i);

        List<? extends CameraTypeFeatureTableOrBuilder> getCameraTypeFeatureTableListOrBuilderList();
    }

    /* loaded from: classes.dex */
    public interface CameraTypeFeatureTableOrBuilder extends MessageOrBuilder {
        Feature getFeatureList(int i);

        int getFeatureListCount();

        List<Feature> getFeatureListList();

        FeatureOrBuilder getFeatureListOrBuilder(int i);

        List<? extends FeatureOrBuilder> getFeatureListOrBuilderList();
    }

    /* loaded from: classes.dex */
    public interface ConflictFeatureListOrBuilder extends MessageOrBuilder {
        ConflictFeature getConflictFeatures(int i);

        int getConflictFeaturesCount();

        List<ConflictFeature> getConflictFeaturesList();

        ConflictFeatureOrBuilder getConflictFeaturesOrBuilder(int i);

        List<? extends ConflictFeatureOrBuilder> getConflictFeaturesOrBuilderList();
    }

    /* loaded from: classes.dex */
    public interface ConflictFeatureOrBuilder extends MessageOrBuilder {
        int getFeatureConflictValueIndex();

        int getFeatureNameIndex();

        int getFeatureValueIndex();
    }

    /* loaded from: classes.dex */
    public interface FeatureOrBuilder extends MessageOrBuilder {
        boolean containsConflictMap(int i);

        @Deprecated
        Map<Integer, ConflictFeatureList> getConflictMap();

        int getConflictMapCount();

        Map<Integer, ConflictFeatureList> getConflictMapMap();

        ConflictFeatureList getConflictMapOrDefault(int i, ConflictFeatureList conflictFeatureList);

        ConflictFeatureList getConflictMapOrThrow(int i);

        int getEntryTypeIndex();

        int getFeatureDefaultValueIndex();

        int getFeatureKeyNameIndex();

        int getFeatureNameIndex();

        int getFeatureValueRangeIndex();

        int getFeatureValueTypeIndex();

        boolean getGroupConflict();
    }

    /* loaded from: classes.dex */
    public interface FeatureTableOrBuilder extends MessageOrBuilder {
        CameraFeatureTable getCameraFeatureTable();

        CameraFeatureTableOrBuilder getCameraFeatureTableOrBuilder();

        CameraGroupFeatureTable getCameraGroupFeatureTable();

        CameraGroupFeatureTableOrBuilder getCameraGroupFeatureTableOrBuilder();

        String getStrPool(int i);

        ByteString getStrPoolBytes(int i);

        int getStrPoolCount();

        List<String> getStrPoolList();

        String getVersion();

        ByteString getVersionBytes();

        boolean hasCameraFeatureTable();

        boolean hasCameraGroupFeatureTable();
    }

    /* loaded from: classes.dex */
    public interface ModeFeatureTableOrBuilder extends MessageOrBuilder {
        boolean containsCameraTypeFeatureTables(int i);

        @Deprecated
        Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTables();

        int getCameraTypeFeatureTablesCount();

        Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTablesMap();

        CameraTypeFeatureTable getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTable cameraTypeFeatureTable);

        CameraTypeFeatureTable getCameraTypeFeatureTablesOrThrow(int i);
    }

    /* loaded from: classes.dex */
    public interface ModeGroupFeatureTableOrBuilder extends MessageOrBuilder {
        boolean containsCameraTypeFeatureTables(int i);

        @Deprecated
        Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTables();

        int getCameraTypeFeatureTablesCount();

        Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTablesMap();

        CameraTypeFeatureTableList getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTableList cameraTypeFeatureTableList);

        CameraTypeFeatureTableList getCameraTypeFeatureTablesOrThrow(int i);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private ProtobufFeatureConfig() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    /* loaded from: classes.dex */
    public static final class FeatureTable extends GeneratedMessageV3 implements FeatureTableOrBuilder {
        public static final int CAMERA_FEATURE_TABLE_FIELD_NUMBER = 2;
        public static final int CAMERA_GROUP_FEATURE_TABLE_FIELD_NUMBER = 3;
        private static final FeatureTable DEFAULT_INSTANCE = new FeatureTable();
        private static final Parser<FeatureTable> PARSER = new AbstractParser<FeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public FeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FeatureTable(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STR_POOL_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private CameraFeatureTable cameraFeatureTable_;
        private CameraGroupFeatureTable cameraGroupFeatureTable_;
        private byte memoizedIsInitialized;
        private LazyStringList strPool_;
        private volatile Object version_;

        private FeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private FeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
            this.strPool_ = LazyStringArrayList.EMPTY;
            this.version_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new FeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 10) {
                                if (readTag == 18) {
                                    CameraFeatureTable cameraFeatureTable = this.cameraFeatureTable_;
                                    CameraFeatureTable.Builder builder = cameraFeatureTable != null ? cameraFeatureTable.toBuilder() : null;
                                    CameraFeatureTable cameraFeatureTable2 = (CameraFeatureTable) codedInputStream.readMessage(CameraFeatureTable.parser(), extensionRegistryLite);
                                    this.cameraFeatureTable_ = cameraFeatureTable2;
                                    if (builder != null) {
                                        builder.mergeFrom(cameraFeatureTable2);
                                        this.cameraFeatureTable_ = builder.buildPartial();
                                    }
                                } else if (readTag == 26) {
                                    CameraGroupFeatureTable cameraGroupFeatureTable = this.cameraGroupFeatureTable_;
                                    CameraGroupFeatureTable.Builder builder2 = cameraGroupFeatureTable != null ? cameraGroupFeatureTable.toBuilder() : null;
                                    CameraGroupFeatureTable cameraGroupFeatureTable2 = (CameraGroupFeatureTable) codedInputStream.readMessage(CameraGroupFeatureTable.parser(), extensionRegistryLite);
                                    this.cameraGroupFeatureTable_ = cameraGroupFeatureTable2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(cameraGroupFeatureTable2);
                                        this.cameraGroupFeatureTable_ = builder2.buildPartial();
                                    }
                                } else if (readTag == 34) {
                                    this.version_ = codedInputStream.readStringRequireUtf8();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                boolean z3 = z2;
                                z2 = z2;
                                if (!z3) {
                                    this.strPool_ = new LazyStringArrayList();
                                    z2 = true;
                                }
                                this.strPool_.add(readStringRequireUtf8);
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2) {
                        this.strPool_ = this.strPool_.getUnmodifiableView();
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_FeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_FeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(FeatureTable.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public ProtocolStringList getStrPoolList() {
            return this.strPool_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public int getStrPoolCount() {
            return this.strPool_.size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public String getStrPool(int i) {
            return (String) this.strPool_.get(i);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public ByteString getStrPoolBytes(int i) {
            return this.strPool_.getByteString(i);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public boolean hasCameraFeatureTable() {
            return this.cameraFeatureTable_ != null;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public CameraFeatureTable getCameraFeatureTable() {
            CameraFeatureTable cameraFeatureTable = this.cameraFeatureTable_;
            return cameraFeatureTable == null ? CameraFeatureTable.getDefaultInstance() : cameraFeatureTable;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public CameraFeatureTableOrBuilder getCameraFeatureTableOrBuilder() {
            return getCameraFeatureTable();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public boolean hasCameraGroupFeatureTable() {
            return this.cameraGroupFeatureTable_ != null;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public CameraGroupFeatureTable getCameraGroupFeatureTable() {
            CameraGroupFeatureTable cameraGroupFeatureTable = this.cameraGroupFeatureTable_;
            return cameraGroupFeatureTable == null ? CameraGroupFeatureTable.getDefaultInstance() : cameraGroupFeatureTable;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public CameraGroupFeatureTableOrBuilder getCameraGroupFeatureTableOrBuilder() {
            return getCameraGroupFeatureTable();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public String getVersion() {
            Object obj = this.version_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.version_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
        public ByteString getVersionBytes() {
            Object obj = this.version_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.version_ = copyFromUtf8;
                return copyFromUtf8;
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
            for (int i = 0; i < this.strPool_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.strPool_.getRaw(i));
            }
            if (this.cameraFeatureTable_ != null) {
                codedOutputStream.writeMessage(2, getCameraFeatureTable());
            }
            if (this.cameraGroupFeatureTable_ != null) {
                codedOutputStream.writeMessage(3, getCameraGroupFeatureTable());
            }
            if (!getVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.version_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.strPool_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.strPool_.getRaw(i3));
            }
            int size = 0 + i2 + (getStrPoolList().size() * 1);
            if (this.cameraFeatureTable_ != null) {
                size += CodedOutputStream.computeMessageSize(2, getCameraFeatureTable());
            }
            if (this.cameraGroupFeatureTable_ != null) {
                size += CodedOutputStream.computeMessageSize(3, getCameraGroupFeatureTable());
            }
            if (!getVersionBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(4, this.version_);
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FeatureTable)) {
                return super.equals(obj);
            }
            FeatureTable featureTable = (FeatureTable) obj;
            if (getStrPoolList().equals(featureTable.getStrPoolList()) && hasCameraFeatureTable() == featureTable.hasCameraFeatureTable()) {
                if ((!hasCameraFeatureTable() || getCameraFeatureTable().equals(featureTable.getCameraFeatureTable())) && hasCameraGroupFeatureTable() == featureTable.hasCameraGroupFeatureTable()) {
                    return (!hasCameraGroupFeatureTable() || getCameraGroupFeatureTable().equals(featureTable.getCameraGroupFeatureTable())) && getVersion().equals(featureTable.getVersion()) && this.unknownFields.equals(featureTable.unknownFields);
                }
                return false;
            }
            return false;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getStrPoolCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getStrPoolList().hashCode();
            }
            if (hasCameraFeatureTable()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getCameraFeatureTable().hashCode();
            }
            if (hasCameraGroupFeatureTable()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getCameraGroupFeatureTable().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 4) * 53) + getVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static FeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static FeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static FeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static FeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static FeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(FeatureTable featureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(featureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> cameraFeatureTableBuilder_;
            private CameraFeatureTable cameraFeatureTable_;
            private SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> cameraGroupFeatureTableBuilder_;
            private CameraGroupFeatureTable cameraGroupFeatureTable_;
            private LazyStringList strPool_;
            private Object version_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_FeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_FeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(FeatureTable.class, Builder.class);
            }

            private Builder() {
                this.strPool_ = LazyStringArrayList.EMPTY;
                this.version_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.strPool_ = LazyStringArrayList.EMPTY;
                this.version_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = FeatureTable.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.strPool_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                if (this.cameraFeatureTableBuilder_ == null) {
                    this.cameraFeatureTable_ = null;
                } else {
                    this.cameraFeatureTable_ = null;
                    this.cameraFeatureTableBuilder_ = null;
                }
                if (this.cameraGroupFeatureTableBuilder_ == null) {
                    this.cameraGroupFeatureTable_ = null;
                } else {
                    this.cameraGroupFeatureTable_ = null;
                    this.cameraGroupFeatureTableBuilder_ = null;
                }
                this.version_ = "";
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_FeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public FeatureTable getDefaultInstanceForType() {
                return FeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public FeatureTable build() {
                FeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public FeatureTable buildPartial() {
                FeatureTable featureTable = new FeatureTable(this);
                if ((this.bitField0_ & 1) != 0) {
                    this.strPool_ = this.strPool_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                featureTable.strPool_ = this.strPool_;
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    featureTable.cameraFeatureTable_ = this.cameraFeatureTable_;
                } else {
                    featureTable.cameraFeatureTable_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV32 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV32 == null) {
                    featureTable.cameraGroupFeatureTable_ = this.cameraGroupFeatureTable_;
                } else {
                    featureTable.cameraGroupFeatureTable_ = singleFieldBuilderV32.build();
                }
                featureTable.version_ = this.version_;
                onBuilt();
                return featureTable;
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
                if (message instanceof FeatureTable) {
                    return mergeFrom((FeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FeatureTable featureTable) {
                if (featureTable == FeatureTable.getDefaultInstance()) {
                    return this;
                }
                if (!featureTable.strPool_.isEmpty()) {
                    if (this.strPool_.isEmpty()) {
                        this.strPool_ = featureTable.strPool_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureStrPoolIsMutable();
                        this.strPool_.addAll(featureTable.strPool_);
                    }
                    onChanged();
                }
                if (featureTable.hasCameraFeatureTable()) {
                    mergeCameraFeatureTable(featureTable.getCameraFeatureTable());
                }
                if (featureTable.hasCameraGroupFeatureTable()) {
                    mergeCameraGroupFeatureTable(featureTable.getCameraGroupFeatureTable());
                }
                if (!featureTable.getVersion().isEmpty()) {
                    this.version_ = featureTable.version_;
                    onChanged();
                }
                mergeUnknownFields(featureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$FeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$FeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$FeatureTable$Builder");
            }

            private void ensureStrPoolIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.strPool_ = new LazyStringArrayList(this.strPool_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public ProtocolStringList getStrPoolList() {
                return this.strPool_.getUnmodifiableView();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public int getStrPoolCount() {
                return this.strPool_.size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public String getStrPool(int i) {
                return (String) this.strPool_.get(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public ByteString getStrPoolBytes(int i) {
                return this.strPool_.getByteString(i);
            }

            public Builder setStrPool(int i, String str) {
                str.getClass();
                ensureStrPoolIsMutable();
                this.strPool_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addStrPool(String str) {
                str.getClass();
                ensureStrPoolIsMutable();
                this.strPool_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllStrPool(Iterable<String> iterable) {
                ensureStrPoolIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.strPool_);
                onChanged();
                return this;
            }

            public Builder clearStrPool() {
                this.strPool_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder addStrPoolBytes(ByteString byteString) {
                byteString.getClass();
                FeatureTable.checkByteStringIsUtf8(byteString);
                ensureStrPoolIsMutable();
                this.strPool_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public boolean hasCameraFeatureTable() {
                return (this.cameraFeatureTableBuilder_ == null && this.cameraFeatureTable_ == null) ? false : true;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public CameraFeatureTable getCameraFeatureTable() {
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    CameraFeatureTable cameraFeatureTable = this.cameraFeatureTable_;
                    return cameraFeatureTable == null ? CameraFeatureTable.getDefaultInstance() : cameraFeatureTable;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setCameraFeatureTable(CameraFeatureTable cameraFeatureTable) {
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    cameraFeatureTable.getClass();
                    this.cameraFeatureTable_ = cameraFeatureTable;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(cameraFeatureTable);
                }
                return this;
            }

            public Builder setCameraFeatureTable(CameraFeatureTable.Builder builder) {
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.cameraFeatureTable_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder mergeCameraFeatureTable(CameraFeatureTable cameraFeatureTable) {
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    CameraFeatureTable cameraFeatureTable2 = this.cameraFeatureTable_;
                    if (cameraFeatureTable2 != null) {
                        this.cameraFeatureTable_ = CameraFeatureTable.newBuilder(cameraFeatureTable2).mergeFrom(cameraFeatureTable).buildPartial();
                    } else {
                        this.cameraFeatureTable_ = cameraFeatureTable;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(cameraFeatureTable);
                }
                return this;
            }

            public Builder clearCameraFeatureTable() {
                if (this.cameraFeatureTableBuilder_ == null) {
                    this.cameraFeatureTable_ = null;
                    onChanged();
                } else {
                    this.cameraFeatureTable_ = null;
                    this.cameraFeatureTableBuilder_ = null;
                }
                return this;
            }

            public CameraFeatureTable.Builder getCameraFeatureTableBuilder() {
                onChanged();
                return getCameraFeatureTableFieldBuilder().getBuilder();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public CameraFeatureTableOrBuilder getCameraFeatureTableOrBuilder() {
                SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraFeatureTableBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                CameraFeatureTable cameraFeatureTable = this.cameraFeatureTable_;
                return cameraFeatureTable == null ? CameraFeatureTable.getDefaultInstance() : cameraFeatureTable;
            }

            private SingleFieldBuilderV3<CameraFeatureTable, CameraFeatureTable.Builder, CameraFeatureTableOrBuilder> getCameraFeatureTableFieldBuilder() {
                if (this.cameraFeatureTableBuilder_ == null) {
                    this.cameraFeatureTableBuilder_ = new SingleFieldBuilderV3<>(getCameraFeatureTable(), getParentForChildren(), isClean());
                    this.cameraFeatureTable_ = null;
                }
                return this.cameraFeatureTableBuilder_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public boolean hasCameraGroupFeatureTable() {
                return (this.cameraGroupFeatureTableBuilder_ == null && this.cameraGroupFeatureTable_ == null) ? false : true;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public CameraGroupFeatureTable getCameraGroupFeatureTable() {
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    CameraGroupFeatureTable cameraGroupFeatureTable = this.cameraGroupFeatureTable_;
                    return cameraGroupFeatureTable == null ? CameraGroupFeatureTable.getDefaultInstance() : cameraGroupFeatureTable;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setCameraGroupFeatureTable(CameraGroupFeatureTable cameraGroupFeatureTable) {
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    cameraGroupFeatureTable.getClass();
                    this.cameraGroupFeatureTable_ = cameraGroupFeatureTable;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(cameraGroupFeatureTable);
                }
                return this;
            }

            public Builder setCameraGroupFeatureTable(CameraGroupFeatureTable.Builder builder) {
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.cameraGroupFeatureTable_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder mergeCameraGroupFeatureTable(CameraGroupFeatureTable cameraGroupFeatureTable) {
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV3 == null) {
                    CameraGroupFeatureTable cameraGroupFeatureTable2 = this.cameraGroupFeatureTable_;
                    if (cameraGroupFeatureTable2 != null) {
                        this.cameraGroupFeatureTable_ = CameraGroupFeatureTable.newBuilder(cameraGroupFeatureTable2).mergeFrom(cameraGroupFeatureTable).buildPartial();
                    } else {
                        this.cameraGroupFeatureTable_ = cameraGroupFeatureTable;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(cameraGroupFeatureTable);
                }
                return this;
            }

            public Builder clearCameraGroupFeatureTable() {
                if (this.cameraGroupFeatureTableBuilder_ == null) {
                    this.cameraGroupFeatureTable_ = null;
                    onChanged();
                } else {
                    this.cameraGroupFeatureTable_ = null;
                    this.cameraGroupFeatureTableBuilder_ = null;
                }
                return this;
            }

            public CameraGroupFeatureTable.Builder getCameraGroupFeatureTableBuilder() {
                onChanged();
                return getCameraGroupFeatureTableFieldBuilder().getBuilder();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public CameraGroupFeatureTableOrBuilder getCameraGroupFeatureTableOrBuilder() {
                SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> singleFieldBuilderV3 = this.cameraGroupFeatureTableBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                CameraGroupFeatureTable cameraGroupFeatureTable = this.cameraGroupFeatureTable_;
                return cameraGroupFeatureTable == null ? CameraGroupFeatureTable.getDefaultInstance() : cameraGroupFeatureTable;
            }

            private SingleFieldBuilderV3<CameraGroupFeatureTable, CameraGroupFeatureTable.Builder, CameraGroupFeatureTableOrBuilder> getCameraGroupFeatureTableFieldBuilder() {
                if (this.cameraGroupFeatureTableBuilder_ == null) {
                    this.cameraGroupFeatureTableBuilder_ = new SingleFieldBuilderV3<>(getCameraGroupFeatureTable(), getParentForChildren(), isClean());
                    this.cameraGroupFeatureTable_ = null;
                }
                return this.cameraGroupFeatureTableBuilder_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public String getVersion() {
                Object obj = this.version_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.version_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureTableOrBuilder
            public ByteString getVersionBytes() {
                Object obj = this.version_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.version_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setVersion(String str) {
                str.getClass();
                this.version_ = str;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.version_ = FeatureTable.getDefaultInstance().getVersion();
                onChanged();
                return this;
            }

            public Builder setVersionBytes(ByteString byteString) {
                byteString.getClass();
                FeatureTable.checkByteStringIsUtf8(byteString);
                this.version_ = byteString;
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

        public static FeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<FeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public FeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class Feature extends GeneratedMessageV3 implements FeatureOrBuilder {
        public static final int CONFLICT_MAP_FIELD_NUMBER = 8;
        public static final int ENTRY_TYPE_INDEX_FIELD_NUMBER = 5;
        public static final int FEATURE_DEFAULT_VALUE_INDEX_FIELD_NUMBER = 4;
        public static final int FEATURE_KEY_NAME_INDEX_FIELD_NUMBER = 2;
        public static final int FEATURE_NAME_INDEX_FIELD_NUMBER = 1;
        public static final int FEATURE_VALUE_RANGE_INDEX_FIELD_NUMBER = 3;
        public static final int FEATURE_VALUE_TYPE_INDEX_FIELD_NUMBER = 6;
        public static final int GROUP_CONFLICT_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private MapField<Integer, ConflictFeatureList> conflictMap_;
        private int entryTypeIndex_;
        private int featureDefaultValueIndex_;
        private int featureKeyNameIndex_;
        private int featureNameIndex_;
        private int featureValueRangeIndex_;
        private int featureValueTypeIndex_;
        private boolean groupConflict_;
        private byte memoizedIsInitialized;
        private static final Feature DEFAULT_INSTANCE = new Feature();
        private static final Parser<Feature> PARSER = new AbstractParser<Feature>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature.1
            @Override // com.google.oplus.protobuf.Parser
            public Feature parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Feature(codedInputStream, extensionRegistryLite);
            }
        };

        private Feature(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Feature() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Feature();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Feature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.featureNameIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 16) {
                                    this.featureKeyNameIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 24) {
                                    this.featureValueRangeIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 32) {
                                    this.featureDefaultValueIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 40) {
                                    this.entryTypeIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 48) {
                                    this.featureValueTypeIndex_ = codedInputStream.readInt32();
                                } else if (readTag == 56) {
                                    this.groupConflict_ = codedInputStream.readBool();
                                } else if (readTag == 66) {
                                    if (!(z2 & true)) {
                                        this.conflictMap_ = MapField.newMapField(ConflictMapDefaultEntryHolder.defaultEntry);
                                        z2 |= true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(ConflictMapDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.conflictMap_.getMutableMap().put((Integer) mapEntry.getKey(), (ConflictFeatureList) mapEntry.getValue());
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_Feature_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 8) {
                return internalGetConflictMap();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_Feature_fieldAccessorTable.ensureFieldAccessorsInitialized(Feature.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getFeatureNameIndex() {
            return this.featureNameIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getFeatureKeyNameIndex() {
            return this.featureKeyNameIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getFeatureValueRangeIndex() {
            return this.featureValueRangeIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getFeatureDefaultValueIndex() {
            return this.featureDefaultValueIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getEntryTypeIndex() {
            return this.entryTypeIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getFeatureValueTypeIndex() {
            return this.featureValueTypeIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public boolean getGroupConflict() {
            return this.groupConflict_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class ConflictMapDefaultEntryHolder {
            static final MapEntry<Integer, ConflictFeatureList> defaultEntry = MapEntry.newDefaultInstance(ProtobufFeatureConfig.internal_static_Feature_ConflictMapEntry_descriptor, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, ConflictFeatureList.getDefaultInstance());

            private ConflictMapDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<Integer, ConflictFeatureList> internalGetConflictMap() {
            MapField<Integer, ConflictFeatureList> mapField = this.conflictMap_;
            return mapField == null ? MapField.emptyMapField(ConflictMapDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public int getConflictMapCount() {
            return internalGetConflictMap().getMap().size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public boolean containsConflictMap(int i) {
            return internalGetConflictMap().getMap().containsKey(Integer.valueOf(i));
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        @Deprecated
        public Map<Integer, ConflictFeatureList> getConflictMap() {
            return getConflictMapMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public Map<Integer, ConflictFeatureList> getConflictMapMap() {
            return internalGetConflictMap().getMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public ConflictFeatureList getConflictMapOrDefault(int i, ConflictFeatureList conflictFeatureList) {
            Map<Integer, ConflictFeatureList> map = internalGetConflictMap().getMap();
            return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : conflictFeatureList;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
        public ConflictFeatureList getConflictMapOrThrow(int i) {
            Map<Integer, ConflictFeatureList> map = internalGetConflictMap().getMap();
            if (!map.containsKey(Integer.valueOf(i))) {
                throw new IllegalArgumentException();
            }
            return map.get(Integer.valueOf(i));
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
            int i = this.featureNameIndex_;
            if (i != 0) {
                codedOutputStream.writeInt32(1, i);
            }
            int i2 = this.featureKeyNameIndex_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(2, i2);
            }
            int i3 = this.featureValueRangeIndex_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(3, i3);
            }
            int i4 = this.featureDefaultValueIndex_;
            if (i4 != 0) {
                codedOutputStream.writeInt32(4, i4);
            }
            int i5 = this.entryTypeIndex_;
            if (i5 != 0) {
                codedOutputStream.writeInt32(5, i5);
            }
            int i6 = this.featureValueTypeIndex_;
            if (i6 != 0) {
                codedOutputStream.writeInt32(6, i6);
            }
            boolean z = this.groupConflict_;
            if (z) {
                codedOutputStream.writeBool(7, z);
            }
            GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetConflictMap(), ConflictMapDefaultEntryHolder.defaultEntry, 8);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.featureNameIndex_;
            int computeInt32Size = i2 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i2) : 0;
            int i3 = this.featureKeyNameIndex_;
            if (i3 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(2, i3);
            }
            int i4 = this.featureValueRangeIndex_;
            if (i4 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(3, i4);
            }
            int i5 = this.featureDefaultValueIndex_;
            if (i5 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(4, i5);
            }
            int i6 = this.entryTypeIndex_;
            if (i6 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(5, i6);
            }
            int i7 = this.featureValueTypeIndex_;
            if (i7 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(6, i7);
            }
            boolean z = this.groupConflict_;
            if (z) {
                computeInt32Size += CodedOutputStream.computeBoolSize(7, z);
            }
            for (Map.Entry<Integer, ConflictFeatureList> entry : internalGetConflictMap().getMap().entrySet()) {
                computeInt32Size += CodedOutputStream.computeMessageSize(8, ConflictMapDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = computeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Feature)) {
                return super.equals(obj);
            }
            Feature feature = (Feature) obj;
            return getFeatureNameIndex() == feature.getFeatureNameIndex() && getFeatureKeyNameIndex() == feature.getFeatureKeyNameIndex() && getFeatureValueRangeIndex() == feature.getFeatureValueRangeIndex() && getFeatureDefaultValueIndex() == feature.getFeatureDefaultValueIndex() && getEntryTypeIndex() == feature.getEntryTypeIndex() && getFeatureValueTypeIndex() == feature.getFeatureValueTypeIndex() && getGroupConflict() == feature.getGroupConflict() && internalGetConflictMap().equals(feature.internalGetConflictMap()) && this.unknownFields.equals(feature.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFeatureNameIndex()) * 37) + 2) * 53) + getFeatureKeyNameIndex()) * 37) + 3) * 53) + getFeatureValueRangeIndex()) * 37) + 4) * 53) + getFeatureDefaultValueIndex()) * 37) + 5) * 53) + getEntryTypeIndex()) * 37) + 6) * 53) + getFeatureValueTypeIndex()) * 37) + 7) * 53) + Internal.hashBoolean(getGroupConflict());
            if (!internalGetConflictMap().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 8) * 53) + internalGetConflictMap().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static Feature parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Feature parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Feature parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Feature parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Feature parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Feature parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Feature parseFrom(InputStream inputStream) throws IOException {
            return (Feature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Feature parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Feature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Feature parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Feature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Feature parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Feature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Feature parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Feature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Feature parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Feature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Feature feature) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(feature);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FeatureOrBuilder, Cloneable {
            private int bitField0_;
            private MapField<Integer, ConflictFeatureList> conflictMap_;
            private int entryTypeIndex_;
            private int featureDefaultValueIndex_;
            private int featureKeyNameIndex_;
            private int featureNameIndex_;
            private int featureValueRangeIndex_;
            private int featureValueTypeIndex_;
            private boolean groupConflict_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_Feature_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 8) {
                    return internalGetConflictMap();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 8) {
                    return internalGetMutableConflictMap();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_Feature_fieldAccessorTable.ensureFieldAccessorsInitialized(Feature.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Feature.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.featureNameIndex_ = 0;
                this.featureKeyNameIndex_ = 0;
                this.featureValueRangeIndex_ = 0;
                this.featureDefaultValueIndex_ = 0;
                this.entryTypeIndex_ = 0;
                this.featureValueTypeIndex_ = 0;
                this.groupConflict_ = false;
                internalGetMutableConflictMap().clear();
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_Feature_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public Feature getDefaultInstanceForType() {
                return Feature.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Feature build() {
                Feature buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Feature buildPartial() {
                Feature feature = new Feature(this);
                feature.featureNameIndex_ = this.featureNameIndex_;
                feature.featureKeyNameIndex_ = this.featureKeyNameIndex_;
                feature.featureValueRangeIndex_ = this.featureValueRangeIndex_;
                feature.featureDefaultValueIndex_ = this.featureDefaultValueIndex_;
                feature.entryTypeIndex_ = this.entryTypeIndex_;
                feature.featureValueTypeIndex_ = this.featureValueTypeIndex_;
                feature.groupConflict_ = this.groupConflict_;
                feature.conflictMap_ = internalGetConflictMap();
                feature.conflictMap_.makeImmutable();
                onBuilt();
                return feature;
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
                if (message instanceof Feature) {
                    return mergeFrom((Feature) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Feature feature) {
                if (feature == Feature.getDefaultInstance()) {
                    return this;
                }
                if (feature.getFeatureNameIndex() != 0) {
                    setFeatureNameIndex(feature.getFeatureNameIndex());
                }
                if (feature.getFeatureKeyNameIndex() != 0) {
                    setFeatureKeyNameIndex(feature.getFeatureKeyNameIndex());
                }
                if (feature.getFeatureValueRangeIndex() != 0) {
                    setFeatureValueRangeIndex(feature.getFeatureValueRangeIndex());
                }
                if (feature.getFeatureDefaultValueIndex() != 0) {
                    setFeatureDefaultValueIndex(feature.getFeatureDefaultValueIndex());
                }
                if (feature.getEntryTypeIndex() != 0) {
                    setEntryTypeIndex(feature.getEntryTypeIndex());
                }
                if (feature.getFeatureValueTypeIndex() != 0) {
                    setFeatureValueTypeIndex(feature.getFeatureValueTypeIndex());
                }
                if (feature.getGroupConflict()) {
                    setGroupConflict(feature.getGroupConflict());
                }
                internalGetMutableConflictMap().mergeFrom(feature.internalGetConflictMap());
                mergeUnknownFields(feature.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature.access$3200()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$Feature r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$Feature r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.Feature.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$Feature$Builder");
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getFeatureNameIndex() {
                return this.featureNameIndex_;
            }

            public Builder setFeatureNameIndex(int i) {
                this.featureNameIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureNameIndex() {
                this.featureNameIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getFeatureKeyNameIndex() {
                return this.featureKeyNameIndex_;
            }

            public Builder setFeatureKeyNameIndex(int i) {
                this.featureKeyNameIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureKeyNameIndex() {
                this.featureKeyNameIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getFeatureValueRangeIndex() {
                return this.featureValueRangeIndex_;
            }

            public Builder setFeatureValueRangeIndex(int i) {
                this.featureValueRangeIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureValueRangeIndex() {
                this.featureValueRangeIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getFeatureDefaultValueIndex() {
                return this.featureDefaultValueIndex_;
            }

            public Builder setFeatureDefaultValueIndex(int i) {
                this.featureDefaultValueIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureDefaultValueIndex() {
                this.featureDefaultValueIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getEntryTypeIndex() {
                return this.entryTypeIndex_;
            }

            public Builder setEntryTypeIndex(int i) {
                this.entryTypeIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearEntryTypeIndex() {
                this.entryTypeIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getFeatureValueTypeIndex() {
                return this.featureValueTypeIndex_;
            }

            public Builder setFeatureValueTypeIndex(int i) {
                this.featureValueTypeIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureValueTypeIndex() {
                this.featureValueTypeIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public boolean getGroupConflict() {
                return this.groupConflict_;
            }

            public Builder setGroupConflict(boolean z) {
                this.groupConflict_ = z;
                onChanged();
                return this;
            }

            public Builder clearGroupConflict() {
                this.groupConflict_ = false;
                onChanged();
                return this;
            }

            private MapField<Integer, ConflictFeatureList> internalGetConflictMap() {
                MapField<Integer, ConflictFeatureList> mapField = this.conflictMap_;
                return mapField == null ? MapField.emptyMapField(ConflictMapDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<Integer, ConflictFeatureList> internalGetMutableConflictMap() {
                onChanged();
                if (this.conflictMap_ == null) {
                    this.conflictMap_ = MapField.newMapField(ConflictMapDefaultEntryHolder.defaultEntry);
                }
                if (!this.conflictMap_.isMutable()) {
                    this.conflictMap_ = this.conflictMap_.copy();
                }
                return this.conflictMap_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public int getConflictMapCount() {
                return internalGetConflictMap().getMap().size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public boolean containsConflictMap(int i) {
                return internalGetConflictMap().getMap().containsKey(Integer.valueOf(i));
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            @Deprecated
            public Map<Integer, ConflictFeatureList> getConflictMap() {
                return getConflictMapMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public Map<Integer, ConflictFeatureList> getConflictMapMap() {
                return internalGetConflictMap().getMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public ConflictFeatureList getConflictMapOrDefault(int i, ConflictFeatureList conflictFeatureList) {
                Map<Integer, ConflictFeatureList> map = internalGetConflictMap().getMap();
                return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : conflictFeatureList;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.FeatureOrBuilder
            public ConflictFeatureList getConflictMapOrThrow(int i) {
                Map<Integer, ConflictFeatureList> map = internalGetConflictMap().getMap();
                if (!map.containsKey(Integer.valueOf(i))) {
                    throw new IllegalArgumentException();
                }
                return map.get(Integer.valueOf(i));
            }

            public Builder clearConflictMap() {
                internalGetMutableConflictMap().getMutableMap().clear();
                return this;
            }

            public Builder removeConflictMap(int i) {
                internalGetMutableConflictMap().getMutableMap().remove(Integer.valueOf(i));
                return this;
            }

            @Deprecated
            public Map<Integer, ConflictFeatureList> getMutableConflictMap() {
                return internalGetMutableConflictMap().getMutableMap();
            }

            public Builder putConflictMap(int i, ConflictFeatureList conflictFeatureList) {
                conflictFeatureList.getClass();
                internalGetMutableConflictMap().getMutableMap().put(Integer.valueOf(i), conflictFeatureList);
                return this;
            }

            public Builder putAllConflictMap(Map<Integer, ConflictFeatureList> map) {
                internalGetMutableConflictMap().getMutableMap().putAll(map);
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

        public static Feature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Feature> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<Feature> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public Feature getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class ConflictFeatureList extends GeneratedMessageV3 implements ConflictFeatureListOrBuilder {
        public static final int CONFLICT_FEATURES_FIELD_NUMBER = 1;
        private static final ConflictFeatureList DEFAULT_INSTANCE = new ConflictFeatureList();
        private static final Parser<ConflictFeatureList> PARSER = new AbstractParser<ConflictFeatureList>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList.1
            @Override // com.google.oplus.protobuf.Parser
            public ConflictFeatureList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ConflictFeatureList(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private List<ConflictFeature> conflictFeatures_;
        private byte memoizedIsInitialized;

        private ConflictFeatureList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private ConflictFeatureList() {
            this.memoizedIsInitialized = (byte) -1;
            this.conflictFeatures_ = Collections.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ConflictFeatureList();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ConflictFeatureList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!(z2 & true)) {
                                    this.conflictFeatures_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.conflictFeatures_.add((ConflictFeature) codedInputStream.readMessage(ConflictFeature.parser(), extensionRegistryLite));
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
                    if (z2 & true) {
                        this.conflictFeatures_ = Collections.unmodifiableList(this.conflictFeatures_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_ConflictFeatureList_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_ConflictFeatureList_fieldAccessorTable.ensureFieldAccessorsInitialized(ConflictFeatureList.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
        public List<ConflictFeature> getConflictFeaturesList() {
            return this.conflictFeatures_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
        public List<? extends ConflictFeatureOrBuilder> getConflictFeaturesOrBuilderList() {
            return this.conflictFeatures_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
        public int getConflictFeaturesCount() {
            return this.conflictFeatures_.size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
        public ConflictFeature getConflictFeatures(int i) {
            return this.conflictFeatures_.get(i);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
        public ConflictFeatureOrBuilder getConflictFeaturesOrBuilder(int i) {
            return this.conflictFeatures_.get(i);
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
            for (int i = 0; i < this.conflictFeatures_.size(); i++) {
                codedOutputStream.writeMessage(1, this.conflictFeatures_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.conflictFeatures_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.conflictFeatures_.get(i3));
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ConflictFeatureList)) {
                return super.equals(obj);
            }
            ConflictFeatureList conflictFeatureList = (ConflictFeatureList) obj;
            return getConflictFeaturesList().equals(conflictFeatureList.getConflictFeaturesList()) && this.unknownFields.equals(conflictFeatureList.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getConflictFeaturesCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConflictFeaturesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static ConflictFeatureList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ConflictFeatureList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ConflictFeatureList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ConflictFeatureList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ConflictFeatureList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ConflictFeatureList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ConflictFeatureList parseFrom(InputStream inputStream) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ConflictFeatureList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ConflictFeatureList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ConflictFeatureList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ConflictFeatureList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ConflictFeatureList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeatureList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ConflictFeatureList conflictFeatureList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(conflictFeatureList);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ConflictFeatureListOrBuilder, Cloneable {
            private int bitField0_;
            private RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> conflictFeaturesBuilder_;
            private List<ConflictFeature> conflictFeatures_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_ConflictFeatureList_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_ConflictFeatureList_fieldAccessorTable.ensureFieldAccessorsInitialized(ConflictFeatureList.class, Builder.class);
            }

            private Builder() {
                this.conflictFeatures_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.conflictFeatures_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ConflictFeatureList.alwaysUseFieldBuilders) {
                    getConflictFeaturesFieldBuilder();
                }
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.conflictFeatures_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_ConflictFeatureList_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public ConflictFeatureList getDefaultInstanceForType() {
                return ConflictFeatureList.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ConflictFeatureList build() {
                ConflictFeatureList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ConflictFeatureList buildPartial() {
                ConflictFeatureList conflictFeatureList = new ConflictFeatureList(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.conflictFeatures_ = Collections.unmodifiableList(this.conflictFeatures_);
                        this.bitField0_ &= -2;
                    }
                    conflictFeatureList.conflictFeatures_ = this.conflictFeatures_;
                } else {
                    conflictFeatureList.conflictFeatures_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return conflictFeatureList;
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
                if (message instanceof ConflictFeatureList) {
                    return mergeFrom((ConflictFeatureList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ConflictFeatureList conflictFeatureList) {
                if (conflictFeatureList == ConflictFeatureList.getDefaultInstance()) {
                    return this;
                }
                if (this.conflictFeaturesBuilder_ == null) {
                    if (!conflictFeatureList.conflictFeatures_.isEmpty()) {
                        if (this.conflictFeatures_.isEmpty()) {
                            this.conflictFeatures_ = conflictFeatureList.conflictFeatures_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureConflictFeaturesIsMutable();
                            this.conflictFeatures_.addAll(conflictFeatureList.conflictFeatures_);
                        }
                        onChanged();
                    }
                } else if (!conflictFeatureList.conflictFeatures_.isEmpty()) {
                    if (!this.conflictFeaturesBuilder_.isEmpty()) {
                        this.conflictFeaturesBuilder_.addAllMessages(conflictFeatureList.conflictFeatures_);
                    } else {
                        this.conflictFeaturesBuilder_.dispose();
                        this.conflictFeaturesBuilder_ = null;
                        this.conflictFeatures_ = conflictFeatureList.conflictFeatures_;
                        this.bitField0_ &= -2;
                        this.conflictFeaturesBuilder_ = ConflictFeatureList.alwaysUseFieldBuilders ? getConflictFeaturesFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(conflictFeatureList.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList.access$4300()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeatureList r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeatureList r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureList.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeatureList$Builder");
            }

            private void ensureConflictFeaturesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.conflictFeatures_ = new ArrayList(this.conflictFeatures_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
            public List<ConflictFeature> getConflictFeaturesList() {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.conflictFeatures_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
            public int getConflictFeaturesCount() {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.conflictFeatures_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
            public ConflictFeature getConflictFeatures(int i) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.conflictFeatures_.get(i);
                }
                return repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setConflictFeatures(int i, ConflictFeature conflictFeature) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    conflictFeature.getClass();
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.set(i, conflictFeature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, conflictFeature);
                }
                return this;
            }

            public Builder setConflictFeatures(int i, ConflictFeature.Builder builder) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addConflictFeatures(ConflictFeature conflictFeature) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    conflictFeature.getClass();
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.add(conflictFeature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(conflictFeature);
                }
                return this;
            }

            public Builder addConflictFeatures(int i, ConflictFeature conflictFeature) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    conflictFeature.getClass();
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.add(i, conflictFeature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, conflictFeature);
                }
                return this;
            }

            public Builder addConflictFeatures(ConflictFeature.Builder builder) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addConflictFeatures(int i, ConflictFeature.Builder builder) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllConflictFeatures(Iterable<? extends ConflictFeature> iterable) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureConflictFeaturesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.conflictFeatures_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearConflictFeatures() {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.conflictFeatures_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder removeConflictFeatures(int i) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureConflictFeaturesIsMutable();
                    this.conflictFeatures_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public ConflictFeature.Builder getConflictFeaturesBuilder(int i) {
                return getConflictFeaturesFieldBuilder().getBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
            public ConflictFeatureOrBuilder getConflictFeaturesOrBuilder(int i) {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.conflictFeatures_.get(i);
                }
                return repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureListOrBuilder
            public List<? extends ConflictFeatureOrBuilder> getConflictFeaturesOrBuilderList() {
                RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> repeatedFieldBuilderV3 = this.conflictFeaturesBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.conflictFeatures_);
            }

            public ConflictFeature.Builder addConflictFeaturesBuilder() {
                return getConflictFeaturesFieldBuilder().addBuilder(ConflictFeature.getDefaultInstance());
            }

            public ConflictFeature.Builder addConflictFeaturesBuilder(int i) {
                return getConflictFeaturesFieldBuilder().addBuilder(i, ConflictFeature.getDefaultInstance());
            }

            public List<ConflictFeature.Builder> getConflictFeaturesBuilderList() {
                return getConflictFeaturesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<ConflictFeature, ConflictFeature.Builder, ConflictFeatureOrBuilder> getConflictFeaturesFieldBuilder() {
                if (this.conflictFeaturesBuilder_ == null) {
                    this.conflictFeaturesBuilder_ = new RepeatedFieldBuilderV3<>(this.conflictFeatures_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.conflictFeatures_ = null;
                }
                return this.conflictFeaturesBuilder_;
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

        public static ConflictFeatureList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ConflictFeatureList> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<ConflictFeatureList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public ConflictFeatureList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class ConflictFeature extends GeneratedMessageV3 implements ConflictFeatureOrBuilder {
        public static final int FEATURE_CONFLICT_VALUE_INDEX_FIELD_NUMBER = 3;
        public static final int FEATURE_NAME_INDEX_FIELD_NUMBER = 1;
        public static final int FEATURE_VALUE_INDEX_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int featureConflictValueIndex_;
        private int featureNameIndex_;
        private int featureValueIndex_;
        private byte memoizedIsInitialized;
        private static final ConflictFeature DEFAULT_INSTANCE = new ConflictFeature();
        private static final Parser<ConflictFeature> PARSER = new AbstractParser<ConflictFeature>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature.1
            @Override // com.google.oplus.protobuf.Parser
            public ConflictFeature parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ConflictFeature(codedInputStream, extensionRegistryLite);
            }
        };

        private ConflictFeature(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private ConflictFeature() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ConflictFeature();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ConflictFeature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.featureNameIndex_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.featureValueIndex_ = codedInputStream.readInt32();
                            } else if (readTag == 24) {
                                this.featureConflictValueIndex_ = codedInputStream.readInt32();
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
            return ProtobufFeatureConfig.internal_static_ConflictFeature_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_ConflictFeature_fieldAccessorTable.ensureFieldAccessorsInitialized(ConflictFeature.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
        public int getFeatureNameIndex() {
            return this.featureNameIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
        public int getFeatureValueIndex() {
            return this.featureValueIndex_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
        public int getFeatureConflictValueIndex() {
            return this.featureConflictValueIndex_;
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
            int i = this.featureNameIndex_;
            if (i != 0) {
                codedOutputStream.writeInt32(1, i);
            }
            int i2 = this.featureValueIndex_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(2, i2);
            }
            int i3 = this.featureConflictValueIndex_;
            if (i3 != 0) {
                codedOutputStream.writeInt32(3, i3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.featureNameIndex_;
            int computeInt32Size = i2 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i2) : 0;
            int i3 = this.featureValueIndex_;
            if (i3 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(2, i3);
            }
            int i4 = this.featureConflictValueIndex_;
            if (i4 != 0) {
                computeInt32Size += CodedOutputStream.computeInt32Size(3, i4);
            }
            int serializedSize = computeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ConflictFeature)) {
                return super.equals(obj);
            }
            ConflictFeature conflictFeature = (ConflictFeature) obj;
            return getFeatureNameIndex() == conflictFeature.getFeatureNameIndex() && getFeatureValueIndex() == conflictFeature.getFeatureValueIndex() && getFeatureConflictValueIndex() == conflictFeature.getFeatureConflictValueIndex() && this.unknownFields.equals(conflictFeature.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFeatureNameIndex()) * 37) + 2) * 53) + getFeatureValueIndex()) * 37) + 3) * 53) + getFeatureConflictValueIndex()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static ConflictFeature parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ConflictFeature parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ConflictFeature parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ConflictFeature parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ConflictFeature parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ConflictFeature parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ConflictFeature parseFrom(InputStream inputStream) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ConflictFeature parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ConflictFeature parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ConflictFeature parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ConflictFeature parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ConflictFeature parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ConflictFeature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ConflictFeature conflictFeature) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(conflictFeature);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ConflictFeatureOrBuilder, Cloneable {
            private int featureConflictValueIndex_;
            private int featureNameIndex_;
            private int featureValueIndex_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_ConflictFeature_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_ConflictFeature_fieldAccessorTable.ensureFieldAccessorsInitialized(ConflictFeature.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ConflictFeature.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.featureNameIndex_ = 0;
                this.featureValueIndex_ = 0;
                this.featureConflictValueIndex_ = 0;
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_ConflictFeature_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public ConflictFeature getDefaultInstanceForType() {
                return ConflictFeature.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ConflictFeature build() {
                ConflictFeature buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ConflictFeature buildPartial() {
                ConflictFeature conflictFeature = new ConflictFeature(this);
                conflictFeature.featureNameIndex_ = this.featureNameIndex_;
                conflictFeature.featureValueIndex_ = this.featureValueIndex_;
                conflictFeature.featureConflictValueIndex_ = this.featureConflictValueIndex_;
                onBuilt();
                return conflictFeature;
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
                if (message instanceof ConflictFeature) {
                    return mergeFrom((ConflictFeature) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ConflictFeature conflictFeature) {
                if (conflictFeature == ConflictFeature.getDefaultInstance()) {
                    return this;
                }
                if (conflictFeature.getFeatureNameIndex() != 0) {
                    setFeatureNameIndex(conflictFeature.getFeatureNameIndex());
                }
                if (conflictFeature.getFeatureValueIndex() != 0) {
                    setFeatureValueIndex(conflictFeature.getFeatureValueIndex());
                }
                if (conflictFeature.getFeatureConflictValueIndex() != 0) {
                    setFeatureConflictValueIndex(conflictFeature.getFeatureConflictValueIndex());
                }
                mergeUnknownFields(conflictFeature.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature.access$5500()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeature r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeature r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeature.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ConflictFeature$Builder");
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
            public int getFeatureNameIndex() {
                return this.featureNameIndex_;
            }

            public Builder setFeatureNameIndex(int i) {
                this.featureNameIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureNameIndex() {
                this.featureNameIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
            public int getFeatureValueIndex() {
                return this.featureValueIndex_;
            }

            public Builder setFeatureValueIndex(int i) {
                this.featureValueIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureValueIndex() {
                this.featureValueIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ConflictFeatureOrBuilder
            public int getFeatureConflictValueIndex() {
                return this.featureConflictValueIndex_;
            }

            public Builder setFeatureConflictValueIndex(int i) {
                this.featureConflictValueIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearFeatureConflictValueIndex() {
                this.featureConflictValueIndex_ = 0;
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

        public static ConflictFeature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ConflictFeature> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<ConflictFeature> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public ConflictFeature getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class CameraTypeFeatureTable extends GeneratedMessageV3 implements CameraTypeFeatureTableOrBuilder {
        public static final int FEATURE_LIST_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Feature> featureList_;
        private byte memoizedIsInitialized;
        private static final CameraTypeFeatureTable DEFAULT_INSTANCE = new CameraTypeFeatureTable();
        private static final Parser<CameraTypeFeatureTable> PARSER = new AbstractParser<CameraTypeFeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public CameraTypeFeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CameraTypeFeatureTable(codedInputStream, extensionRegistryLite);
            }
        };

        private CameraTypeFeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CameraTypeFeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
            this.featureList_ = Collections.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new CameraTypeFeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CameraTypeFeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!(z2 & true)) {
                                    this.featureList_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.featureList_.add((Feature) codedInputStream.readMessage(Feature.parser(), extensionRegistryLite));
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
                    if (z2 & true) {
                        this.featureList_ = Collections.unmodifiableList(this.featureList_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraTypeFeatureTable.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
        public List<Feature> getFeatureListList() {
            return this.featureList_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
        public List<? extends FeatureOrBuilder> getFeatureListOrBuilderList() {
            return this.featureList_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
        public int getFeatureListCount() {
            return this.featureList_.size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
        public Feature getFeatureList(int i) {
            return this.featureList_.get(i);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
        public FeatureOrBuilder getFeatureListOrBuilder(int i) {
            return this.featureList_.get(i);
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
            for (int i = 0; i < this.featureList_.size(); i++) {
                codedOutputStream.writeMessage(1, this.featureList_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.featureList_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.featureList_.get(i3));
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CameraTypeFeatureTable)) {
                return super.equals(obj);
            }
            CameraTypeFeatureTable cameraTypeFeatureTable = (CameraTypeFeatureTable) obj;
            return getFeatureListList().equals(cameraTypeFeatureTable.getFeatureListList()) && this.unknownFields.equals(cameraTypeFeatureTable.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getFeatureListCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFeatureListList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static CameraTypeFeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CameraTypeFeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CameraTypeFeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CameraTypeFeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CameraTypeFeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CameraTypeFeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CameraTypeFeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CameraTypeFeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraTypeFeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CameraTypeFeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraTypeFeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CameraTypeFeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CameraTypeFeatureTable cameraTypeFeatureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cameraTypeFeatureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CameraTypeFeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> featureListBuilder_;
            private List<Feature> featureList_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraTypeFeatureTable.class, Builder.class);
            }

            private Builder() {
                this.featureList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.featureList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (CameraTypeFeatureTable.alwaysUseFieldBuilders) {
                    getFeatureListFieldBuilder();
                }
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.featureList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public CameraTypeFeatureTable getDefaultInstanceForType() {
                return CameraTypeFeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraTypeFeatureTable build() {
                CameraTypeFeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraTypeFeatureTable buildPartial() {
                CameraTypeFeatureTable cameraTypeFeatureTable = new CameraTypeFeatureTable(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.featureList_ = Collections.unmodifiableList(this.featureList_);
                        this.bitField0_ &= -2;
                    }
                    cameraTypeFeatureTable.featureList_ = this.featureList_;
                } else {
                    cameraTypeFeatureTable.featureList_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return cameraTypeFeatureTable;
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
                if (message instanceof CameraTypeFeatureTable) {
                    return mergeFrom((CameraTypeFeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CameraTypeFeatureTable cameraTypeFeatureTable) {
                if (cameraTypeFeatureTable == CameraTypeFeatureTable.getDefaultInstance()) {
                    return this;
                }
                if (this.featureListBuilder_ == null) {
                    if (!cameraTypeFeatureTable.featureList_.isEmpty()) {
                        if (this.featureList_.isEmpty()) {
                            this.featureList_ = cameraTypeFeatureTable.featureList_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureFeatureListIsMutable();
                            this.featureList_.addAll(cameraTypeFeatureTable.featureList_);
                        }
                        onChanged();
                    }
                } else if (!cameraTypeFeatureTable.featureList_.isEmpty()) {
                    if (!this.featureListBuilder_.isEmpty()) {
                        this.featureListBuilder_.addAllMessages(cameraTypeFeatureTable.featureList_);
                    } else {
                        this.featureListBuilder_.dispose();
                        this.featureListBuilder_ = null;
                        this.featureList_ = cameraTypeFeatureTable.featureList_;
                        this.bitField0_ &= -2;
                        this.featureListBuilder_ = CameraTypeFeatureTable.alwaysUseFieldBuilders ? getFeatureListFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(cameraTypeFeatureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable.access$6600()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTable$Builder");
            }

            private void ensureFeatureListIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.featureList_ = new ArrayList(this.featureList_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
            public List<Feature> getFeatureListList() {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.featureList_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
            public int getFeatureListCount() {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.featureList_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
            public Feature getFeatureList(int i) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.featureList_.get(i);
                }
                return repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setFeatureList(int i, Feature feature) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    feature.getClass();
                    ensureFeatureListIsMutable();
                    this.featureList_.set(i, feature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, feature);
                }
                return this;
            }

            public Builder setFeatureList(int i, Feature.Builder builder) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFeatureListIsMutable();
                    this.featureList_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFeatureList(Feature feature) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    feature.getClass();
                    ensureFeatureListIsMutable();
                    this.featureList_.add(feature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(feature);
                }
                return this;
            }

            public Builder addFeatureList(int i, Feature feature) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    feature.getClass();
                    ensureFeatureListIsMutable();
                    this.featureList_.add(i, feature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, feature);
                }
                return this;
            }

            public Builder addFeatureList(Feature.Builder builder) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFeatureListIsMutable();
                    this.featureList_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFeatureList(int i, Feature.Builder builder) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFeatureListIsMutable();
                    this.featureList_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFeatureList(Iterable<? extends Feature> iterable) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFeatureListIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.featureList_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFeatureList() {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.featureList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder removeFeatureList(int i) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFeatureListIsMutable();
                    this.featureList_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public Feature.Builder getFeatureListBuilder(int i) {
                return getFeatureListFieldBuilder().getBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
            public FeatureOrBuilder getFeatureListOrBuilder(int i) {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.featureList_.get(i);
                }
                return repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableOrBuilder
            public List<? extends FeatureOrBuilder> getFeatureListOrBuilderList() {
                RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> repeatedFieldBuilderV3 = this.featureListBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.featureList_);
            }

            public Feature.Builder addFeatureListBuilder() {
                return getFeatureListFieldBuilder().addBuilder(Feature.getDefaultInstance());
            }

            public Feature.Builder addFeatureListBuilder(int i) {
                return getFeatureListFieldBuilder().addBuilder(i, Feature.getDefaultInstance());
            }

            public List<Feature.Builder> getFeatureListBuilderList() {
                return getFeatureListFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Feature, Feature.Builder, FeatureOrBuilder> getFeatureListFieldBuilder() {
                if (this.featureListBuilder_ == null) {
                    this.featureListBuilder_ = new RepeatedFieldBuilderV3<>(this.featureList_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.featureList_ = null;
                }
                return this.featureListBuilder_;
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

        public static CameraTypeFeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CameraTypeFeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<CameraTypeFeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public CameraTypeFeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class CameraTypeFeatureTableList extends GeneratedMessageV3 implements CameraTypeFeatureTableListOrBuilder {
        public static final int CAMERA_TYPE_FEATURE_TABLE_LIST_FIELD_NUMBER = 1;
        private static final CameraTypeFeatureTableList DEFAULT_INSTANCE = new CameraTypeFeatureTableList();
        private static final Parser<CameraTypeFeatureTableList> PARSER = new AbstractParser<CameraTypeFeatureTableList>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList.1
            @Override // com.google.oplus.protobuf.Parser
            public CameraTypeFeatureTableList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CameraTypeFeatureTableList(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private List<CameraTypeFeatureTable> cameraTypeFeatureTableList_;
        private byte memoizedIsInitialized;

        private CameraTypeFeatureTableList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CameraTypeFeatureTableList() {
            this.memoizedIsInitialized = (byte) -1;
            this.cameraTypeFeatureTableList_ = Collections.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new CameraTypeFeatureTableList();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CameraTypeFeatureTableList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!(z2 & true)) {
                                    this.cameraTypeFeatureTableList_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.cameraTypeFeatureTableList_.add((CameraTypeFeatureTable) codedInputStream.readMessage(CameraTypeFeatureTable.parser(), extensionRegistryLite));
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
                    if (z2 & true) {
                        this.cameraTypeFeatureTableList_ = Collections.unmodifiableList(this.cameraTypeFeatureTableList_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTableList_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTableList_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraTypeFeatureTableList.class, Builder.class);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
        public List<CameraTypeFeatureTable> getCameraTypeFeatureTableListList() {
            return this.cameraTypeFeatureTableList_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
        public List<? extends CameraTypeFeatureTableOrBuilder> getCameraTypeFeatureTableListOrBuilderList() {
            return this.cameraTypeFeatureTableList_;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
        public int getCameraTypeFeatureTableListCount() {
            return this.cameraTypeFeatureTableList_.size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
        public CameraTypeFeatureTable getCameraTypeFeatureTableList(int i) {
            return this.cameraTypeFeatureTableList_.get(i);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
        public CameraTypeFeatureTableOrBuilder getCameraTypeFeatureTableListOrBuilder(int i) {
            return this.cameraTypeFeatureTableList_.get(i);
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
            for (int i = 0; i < this.cameraTypeFeatureTableList_.size(); i++) {
                codedOutputStream.writeMessage(1, this.cameraTypeFeatureTableList_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.cameraTypeFeatureTableList_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.cameraTypeFeatureTableList_.get(i3));
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CameraTypeFeatureTableList)) {
                return super.equals(obj);
            }
            CameraTypeFeatureTableList cameraTypeFeatureTableList = (CameraTypeFeatureTableList) obj;
            return getCameraTypeFeatureTableListList().equals(cameraTypeFeatureTableList.getCameraTypeFeatureTableListList()) && this.unknownFields.equals(cameraTypeFeatureTableList.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getCameraTypeFeatureTableListCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getCameraTypeFeatureTableListList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static CameraTypeFeatureTableList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CameraTypeFeatureTableList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CameraTypeFeatureTableList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CameraTypeFeatureTableList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CameraTypeFeatureTableList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CameraTypeFeatureTableList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CameraTypeFeatureTableList parseFrom(InputStream inputStream) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CameraTypeFeatureTableList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraTypeFeatureTableList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CameraTypeFeatureTableList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraTypeFeatureTableList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CameraTypeFeatureTableList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraTypeFeatureTableList) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CameraTypeFeatureTableList cameraTypeFeatureTableList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cameraTypeFeatureTableList);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CameraTypeFeatureTableListOrBuilder, Cloneable {
            private int bitField0_;
            private RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> cameraTypeFeatureTableListBuilder_;
            private List<CameraTypeFeatureTable> cameraTypeFeatureTableList_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTableList_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTableList_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraTypeFeatureTableList.class, Builder.class);
            }

            private Builder() {
                this.cameraTypeFeatureTableList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.cameraTypeFeatureTableList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (CameraTypeFeatureTableList.alwaysUseFieldBuilders) {
                    getCameraTypeFeatureTableListFieldBuilder();
                }
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.cameraTypeFeatureTableList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_CameraTypeFeatureTableList_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public CameraTypeFeatureTableList getDefaultInstanceForType() {
                return CameraTypeFeatureTableList.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraTypeFeatureTableList build() {
                CameraTypeFeatureTableList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraTypeFeatureTableList buildPartial() {
                CameraTypeFeatureTableList cameraTypeFeatureTableList = new CameraTypeFeatureTableList(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.cameraTypeFeatureTableList_ = Collections.unmodifiableList(this.cameraTypeFeatureTableList_);
                        this.bitField0_ &= -2;
                    }
                    cameraTypeFeatureTableList.cameraTypeFeatureTableList_ = this.cameraTypeFeatureTableList_;
                } else {
                    cameraTypeFeatureTableList.cameraTypeFeatureTableList_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return cameraTypeFeatureTableList;
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
                if (message instanceof CameraTypeFeatureTableList) {
                    return mergeFrom((CameraTypeFeatureTableList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CameraTypeFeatureTableList cameraTypeFeatureTableList) {
                if (cameraTypeFeatureTableList == CameraTypeFeatureTableList.getDefaultInstance()) {
                    return this;
                }
                if (this.cameraTypeFeatureTableListBuilder_ == null) {
                    if (!cameraTypeFeatureTableList.cameraTypeFeatureTableList_.isEmpty()) {
                        if (this.cameraTypeFeatureTableList_.isEmpty()) {
                            this.cameraTypeFeatureTableList_ = cameraTypeFeatureTableList.cameraTypeFeatureTableList_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureCameraTypeFeatureTableListIsMutable();
                            this.cameraTypeFeatureTableList_.addAll(cameraTypeFeatureTableList.cameraTypeFeatureTableList_);
                        }
                        onChanged();
                    }
                } else if (!cameraTypeFeatureTableList.cameraTypeFeatureTableList_.isEmpty()) {
                    if (!this.cameraTypeFeatureTableListBuilder_.isEmpty()) {
                        this.cameraTypeFeatureTableListBuilder_.addAllMessages(cameraTypeFeatureTableList.cameraTypeFeatureTableList_);
                    } else {
                        this.cameraTypeFeatureTableListBuilder_.dispose();
                        this.cameraTypeFeatureTableListBuilder_ = null;
                        this.cameraTypeFeatureTableList_ = cameraTypeFeatureTableList.cameraTypeFeatureTableList_;
                        this.bitField0_ &= -2;
                        this.cameraTypeFeatureTableListBuilder_ = CameraTypeFeatureTableList.alwaysUseFieldBuilders ? getCameraTypeFeatureTableListFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(cameraTypeFeatureTableList.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList.access$7700()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTableList r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTableList r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableList.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraTypeFeatureTableList$Builder");
            }

            private void ensureCameraTypeFeatureTableListIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.cameraTypeFeatureTableList_ = new ArrayList(this.cameraTypeFeatureTableList_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
            public List<CameraTypeFeatureTable> getCameraTypeFeatureTableListList() {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.cameraTypeFeatureTableList_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
            public int getCameraTypeFeatureTableListCount() {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.cameraTypeFeatureTableList_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
            public CameraTypeFeatureTable getCameraTypeFeatureTableList(int i) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.cameraTypeFeatureTableList_.get(i);
                }
                return repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setCameraTypeFeatureTableList(int i, CameraTypeFeatureTable cameraTypeFeatureTable) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    cameraTypeFeatureTable.getClass();
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.set(i, cameraTypeFeatureTable);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, cameraTypeFeatureTable);
                }
                return this;
            }

            public Builder setCameraTypeFeatureTableList(int i, CameraTypeFeatureTable.Builder builder) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addCameraTypeFeatureTableList(CameraTypeFeatureTable cameraTypeFeatureTable) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    cameraTypeFeatureTable.getClass();
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.add(cameraTypeFeatureTable);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(cameraTypeFeatureTable);
                }
                return this;
            }

            public Builder addCameraTypeFeatureTableList(int i, CameraTypeFeatureTable cameraTypeFeatureTable) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    cameraTypeFeatureTable.getClass();
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.add(i, cameraTypeFeatureTable);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, cameraTypeFeatureTable);
                }
                return this;
            }

            public Builder addCameraTypeFeatureTableList(CameraTypeFeatureTable.Builder builder) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addCameraTypeFeatureTableList(int i, CameraTypeFeatureTable.Builder builder) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllCameraTypeFeatureTableList(Iterable<? extends CameraTypeFeatureTable> iterable) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCameraTypeFeatureTableListIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.cameraTypeFeatureTableList_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearCameraTypeFeatureTableList() {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.cameraTypeFeatureTableList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder removeCameraTypeFeatureTableList(int i) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCameraTypeFeatureTableListIsMutable();
                    this.cameraTypeFeatureTableList_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public CameraTypeFeatureTable.Builder getCameraTypeFeatureTableListBuilder(int i) {
                return getCameraTypeFeatureTableListFieldBuilder().getBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
            public CameraTypeFeatureTableOrBuilder getCameraTypeFeatureTableListOrBuilder(int i) {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.cameraTypeFeatureTableList_.get(i);
                }
                return repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraTypeFeatureTableListOrBuilder
            public List<? extends CameraTypeFeatureTableOrBuilder> getCameraTypeFeatureTableListOrBuilderList() {
                RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> repeatedFieldBuilderV3 = this.cameraTypeFeatureTableListBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.cameraTypeFeatureTableList_);
            }

            public CameraTypeFeatureTable.Builder addCameraTypeFeatureTableListBuilder() {
                return getCameraTypeFeatureTableListFieldBuilder().addBuilder(CameraTypeFeatureTable.getDefaultInstance());
            }

            public CameraTypeFeatureTable.Builder addCameraTypeFeatureTableListBuilder(int i) {
                return getCameraTypeFeatureTableListFieldBuilder().addBuilder(i, CameraTypeFeatureTable.getDefaultInstance());
            }

            public List<CameraTypeFeatureTable.Builder> getCameraTypeFeatureTableListBuilderList() {
                return getCameraTypeFeatureTableListFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<CameraTypeFeatureTable, CameraTypeFeatureTable.Builder, CameraTypeFeatureTableOrBuilder> getCameraTypeFeatureTableListFieldBuilder() {
                if (this.cameraTypeFeatureTableListBuilder_ == null) {
                    this.cameraTypeFeatureTableListBuilder_ = new RepeatedFieldBuilderV3<>(this.cameraTypeFeatureTableList_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.cameraTypeFeatureTableList_ = null;
                }
                return this.cameraTypeFeatureTableListBuilder_;
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

        public static CameraTypeFeatureTableList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CameraTypeFeatureTableList> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<CameraTypeFeatureTableList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public CameraTypeFeatureTableList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class ModeFeatureTable extends GeneratedMessageV3 implements ModeFeatureTableOrBuilder {
        public static final int CAMERA_TYPE_FEATURE_TABLES_FIELD_NUMBER = 1;
        private static final ModeFeatureTable DEFAULT_INSTANCE = new ModeFeatureTable();
        private static final Parser<ModeFeatureTable> PARSER = new AbstractParser<ModeFeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public ModeFeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ModeFeatureTable(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private MapField<Integer, CameraTypeFeatureTable> cameraTypeFeatureTables_;
        private byte memoizedIsInitialized;

        private ModeFeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private ModeFeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ModeFeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ModeFeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if (!(z2 & true)) {
                                        this.cameraTypeFeatureTables_ = MapField.newMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry);
                                        z2 |= true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.cameraTypeFeatureTables_.getMutableMap().put((Integer) mapEntry.getKey(), (CameraTypeFeatureTable) mapEntry.getValue());
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_ModeFeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 1) {
                return internalGetCameraTypeFeatureTables();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_ModeFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(ModeFeatureTable.class, Builder.class);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class CameraTypeFeatureTablesDefaultEntryHolder {
            static final MapEntry<Integer, CameraTypeFeatureTable> defaultEntry = MapEntry.newDefaultInstance(ProtobufFeatureConfig.internal_static_ModeFeatureTable_CameraTypeFeatureTablesEntry_descriptor, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, CameraTypeFeatureTable.getDefaultInstance());

            private CameraTypeFeatureTablesDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<Integer, CameraTypeFeatureTable> internalGetCameraTypeFeatureTables() {
            MapField<Integer, CameraTypeFeatureTable> mapField = this.cameraTypeFeatureTables_;
            return mapField == null ? MapField.emptyMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        public int getCameraTypeFeatureTablesCount() {
            return internalGetCameraTypeFeatureTables().getMap().size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        public boolean containsCameraTypeFeatureTables(int i) {
            return internalGetCameraTypeFeatureTables().getMap().containsKey(Integer.valueOf(i));
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        @Deprecated
        public Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTables() {
            return getCameraTypeFeatureTablesMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        public Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTablesMap() {
            return internalGetCameraTypeFeatureTables().getMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        public CameraTypeFeatureTable getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTable cameraTypeFeatureTable) {
            Map<Integer, CameraTypeFeatureTable> map = internalGetCameraTypeFeatureTables().getMap();
            return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : cameraTypeFeatureTable;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
        public CameraTypeFeatureTable getCameraTypeFeatureTablesOrThrow(int i) {
            Map<Integer, CameraTypeFeatureTable> map = internalGetCameraTypeFeatureTables().getMap();
            if (!map.containsKey(Integer.valueOf(i))) {
                throw new IllegalArgumentException();
            }
            return map.get(Integer.valueOf(i));
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
            GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetCameraTypeFeatureTables(), CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry, 1);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (Map.Entry<Integer, CameraTypeFeatureTable> entry : internalGetCameraTypeFeatureTables().getMap().entrySet()) {
                i2 += CodedOutputStream.computeMessageSize(1, CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ModeFeatureTable)) {
                return super.equals(obj);
            }
            ModeFeatureTable modeFeatureTable = (ModeFeatureTable) obj;
            return internalGetCameraTypeFeatureTables().equals(modeFeatureTable.internalGetCameraTypeFeatureTables()) && this.unknownFields.equals(modeFeatureTable.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (!internalGetCameraTypeFeatureTables().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetCameraTypeFeatureTables().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static ModeFeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ModeFeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ModeFeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ModeFeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ModeFeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ModeFeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ModeFeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ModeFeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ModeFeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ModeFeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ModeFeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ModeFeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ModeFeatureTable modeFeatureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(modeFeatureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ModeFeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private MapField<Integer, CameraTypeFeatureTable> cameraTypeFeatureTables_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_ModeFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 1) {
                    return internalGetCameraTypeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 1) {
                    return internalGetMutableCameraTypeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_ModeFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(ModeFeatureTable.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ModeFeatureTable.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                internalGetMutableCameraTypeFeatureTables().clear();
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_ModeFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public ModeFeatureTable getDefaultInstanceForType() {
                return ModeFeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ModeFeatureTable build() {
                ModeFeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ModeFeatureTable buildPartial() {
                ModeFeatureTable modeFeatureTable = new ModeFeatureTable(this);
                modeFeatureTable.cameraTypeFeatureTables_ = internalGetCameraTypeFeatureTables();
                modeFeatureTable.cameraTypeFeatureTables_.makeImmutable();
                onBuilt();
                return modeFeatureTable;
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
                if (message instanceof ModeFeatureTable) {
                    return mergeFrom((ModeFeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ModeFeatureTable modeFeatureTable) {
                if (modeFeatureTable == ModeFeatureTable.getDefaultInstance()) {
                    return this;
                }
                internalGetMutableCameraTypeFeatureTables().mergeFrom(modeFeatureTable.internalGetCameraTypeFeatureTables());
                mergeUnknownFields(modeFeatureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable.access$8900()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeFeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeFeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeFeatureTable$Builder");
            }

            private MapField<Integer, CameraTypeFeatureTable> internalGetCameraTypeFeatureTables() {
                MapField<Integer, CameraTypeFeatureTable> mapField = this.cameraTypeFeatureTables_;
                return mapField == null ? MapField.emptyMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<Integer, CameraTypeFeatureTable> internalGetMutableCameraTypeFeatureTables() {
                onChanged();
                if (this.cameraTypeFeatureTables_ == null) {
                    this.cameraTypeFeatureTables_ = MapField.newMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry);
                }
                if (!this.cameraTypeFeatureTables_.isMutable()) {
                    this.cameraTypeFeatureTables_ = this.cameraTypeFeatureTables_.copy();
                }
                return this.cameraTypeFeatureTables_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            public int getCameraTypeFeatureTablesCount() {
                return internalGetCameraTypeFeatureTables().getMap().size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            public boolean containsCameraTypeFeatureTables(int i) {
                return internalGetCameraTypeFeatureTables().getMap().containsKey(Integer.valueOf(i));
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            @Deprecated
            public Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTables() {
                return getCameraTypeFeatureTablesMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            public Map<Integer, CameraTypeFeatureTable> getCameraTypeFeatureTablesMap() {
                return internalGetCameraTypeFeatureTables().getMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            public CameraTypeFeatureTable getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTable cameraTypeFeatureTable) {
                Map<Integer, CameraTypeFeatureTable> map = internalGetCameraTypeFeatureTables().getMap();
                return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : cameraTypeFeatureTable;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeFeatureTableOrBuilder
            public CameraTypeFeatureTable getCameraTypeFeatureTablesOrThrow(int i) {
                Map<Integer, CameraTypeFeatureTable> map = internalGetCameraTypeFeatureTables().getMap();
                if (!map.containsKey(Integer.valueOf(i))) {
                    throw new IllegalArgumentException();
                }
                return map.get(Integer.valueOf(i));
            }

            public Builder clearCameraTypeFeatureTables() {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().clear();
                return this;
            }

            public Builder removeCameraTypeFeatureTables(int i) {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().remove(Integer.valueOf(i));
                return this;
            }

            @Deprecated
            public Map<Integer, CameraTypeFeatureTable> getMutableCameraTypeFeatureTables() {
                return internalGetMutableCameraTypeFeatureTables().getMutableMap();
            }

            public Builder putCameraTypeFeatureTables(int i, CameraTypeFeatureTable cameraTypeFeatureTable) {
                cameraTypeFeatureTable.getClass();
                internalGetMutableCameraTypeFeatureTables().getMutableMap().put(Integer.valueOf(i), cameraTypeFeatureTable);
                return this;
            }

            public Builder putAllCameraTypeFeatureTables(Map<Integer, CameraTypeFeatureTable> map) {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().putAll(map);
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

        public static ModeFeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ModeFeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<ModeFeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public ModeFeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class ModeGroupFeatureTable extends GeneratedMessageV3 implements ModeGroupFeatureTableOrBuilder {
        public static final int CAMERA_TYPE_FEATURE_TABLES_FIELD_NUMBER = 1;
        private static final ModeGroupFeatureTable DEFAULT_INSTANCE = new ModeGroupFeatureTable();
        private static final Parser<ModeGroupFeatureTable> PARSER = new AbstractParser<ModeGroupFeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public ModeGroupFeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ModeGroupFeatureTable(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private MapField<Integer, CameraTypeFeatureTableList> cameraTypeFeatureTables_;
        private byte memoizedIsInitialized;

        private ModeGroupFeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private ModeGroupFeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ModeGroupFeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ModeGroupFeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if (!(z2 & true)) {
                                        this.cameraTypeFeatureTables_ = MapField.newMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry);
                                        z2 |= true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.cameraTypeFeatureTables_.getMutableMap().put((Integer) mapEntry.getKey(), (CameraTypeFeatureTableList) mapEntry.getValue());
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 1) {
                return internalGetCameraTypeFeatureTables();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(ModeGroupFeatureTable.class, Builder.class);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class CameraTypeFeatureTablesDefaultEntryHolder {
            static final MapEntry<Integer, CameraTypeFeatureTableList> defaultEntry = MapEntry.newDefaultInstance(ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_CameraTypeFeatureTablesEntry_descriptor, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, CameraTypeFeatureTableList.getDefaultInstance());

            private CameraTypeFeatureTablesDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<Integer, CameraTypeFeatureTableList> internalGetCameraTypeFeatureTables() {
            MapField<Integer, CameraTypeFeatureTableList> mapField = this.cameraTypeFeatureTables_;
            return mapField == null ? MapField.emptyMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        public int getCameraTypeFeatureTablesCount() {
            return internalGetCameraTypeFeatureTables().getMap().size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        public boolean containsCameraTypeFeatureTables(int i) {
            return internalGetCameraTypeFeatureTables().getMap().containsKey(Integer.valueOf(i));
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        @Deprecated
        public Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTables() {
            return getCameraTypeFeatureTablesMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        public Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTablesMap() {
            return internalGetCameraTypeFeatureTables().getMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        public CameraTypeFeatureTableList getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTableList cameraTypeFeatureTableList) {
            Map<Integer, CameraTypeFeatureTableList> map = internalGetCameraTypeFeatureTables().getMap();
            return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : cameraTypeFeatureTableList;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
        public CameraTypeFeatureTableList getCameraTypeFeatureTablesOrThrow(int i) {
            Map<Integer, CameraTypeFeatureTableList> map = internalGetCameraTypeFeatureTables().getMap();
            if (!map.containsKey(Integer.valueOf(i))) {
                throw new IllegalArgumentException();
            }
            return map.get(Integer.valueOf(i));
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
            GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetCameraTypeFeatureTables(), CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry, 1);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (Map.Entry<Integer, CameraTypeFeatureTableList> entry : internalGetCameraTypeFeatureTables().getMap().entrySet()) {
                i2 += CodedOutputStream.computeMessageSize(1, CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ModeGroupFeatureTable)) {
                return super.equals(obj);
            }
            ModeGroupFeatureTable modeGroupFeatureTable = (ModeGroupFeatureTable) obj;
            return internalGetCameraTypeFeatureTables().equals(modeGroupFeatureTable.internalGetCameraTypeFeatureTables()) && this.unknownFields.equals(modeGroupFeatureTable.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (!internalGetCameraTypeFeatureTables().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetCameraTypeFeatureTables().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static ModeGroupFeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ModeGroupFeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ModeGroupFeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ModeGroupFeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ModeGroupFeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ModeGroupFeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ModeGroupFeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ModeGroupFeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ModeGroupFeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ModeGroupFeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ModeGroupFeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ModeGroupFeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ModeGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ModeGroupFeatureTable modeGroupFeatureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(modeGroupFeatureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ModeGroupFeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private MapField<Integer, CameraTypeFeatureTableList> cameraTypeFeatureTables_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 1) {
                    return internalGetCameraTypeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 1) {
                    return internalGetMutableCameraTypeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(ModeGroupFeatureTable.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ModeGroupFeatureTable.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                internalGetMutableCameraTypeFeatureTables().clear();
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_ModeGroupFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public ModeGroupFeatureTable getDefaultInstanceForType() {
                return ModeGroupFeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ModeGroupFeatureTable build() {
                ModeGroupFeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public ModeGroupFeatureTable buildPartial() {
                ModeGroupFeatureTable modeGroupFeatureTable = new ModeGroupFeatureTable(this);
                modeGroupFeatureTable.cameraTypeFeatureTables_ = internalGetCameraTypeFeatureTables();
                modeGroupFeatureTable.cameraTypeFeatureTables_.makeImmutable();
                onBuilt();
                return modeGroupFeatureTable;
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
                if (message instanceof ModeGroupFeatureTable) {
                    return mergeFrom((ModeGroupFeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ModeGroupFeatureTable modeGroupFeatureTable) {
                if (modeGroupFeatureTable == ModeGroupFeatureTable.getDefaultInstance()) {
                    return this;
                }
                internalGetMutableCameraTypeFeatureTables().mergeFrom(modeGroupFeatureTable.internalGetCameraTypeFeatureTables());
                mergeUnknownFields(modeGroupFeatureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable.access$10100()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeGroupFeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeGroupFeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$ModeGroupFeatureTable$Builder");
            }

            private MapField<Integer, CameraTypeFeatureTableList> internalGetCameraTypeFeatureTables() {
                MapField<Integer, CameraTypeFeatureTableList> mapField = this.cameraTypeFeatureTables_;
                return mapField == null ? MapField.emptyMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<Integer, CameraTypeFeatureTableList> internalGetMutableCameraTypeFeatureTables() {
                onChanged();
                if (this.cameraTypeFeatureTables_ == null) {
                    this.cameraTypeFeatureTables_ = MapField.newMapField(CameraTypeFeatureTablesDefaultEntryHolder.defaultEntry);
                }
                if (!this.cameraTypeFeatureTables_.isMutable()) {
                    this.cameraTypeFeatureTables_ = this.cameraTypeFeatureTables_.copy();
                }
                return this.cameraTypeFeatureTables_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            public int getCameraTypeFeatureTablesCount() {
                return internalGetCameraTypeFeatureTables().getMap().size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            public boolean containsCameraTypeFeatureTables(int i) {
                return internalGetCameraTypeFeatureTables().getMap().containsKey(Integer.valueOf(i));
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            @Deprecated
            public Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTables() {
                return getCameraTypeFeatureTablesMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            public Map<Integer, CameraTypeFeatureTableList> getCameraTypeFeatureTablesMap() {
                return internalGetCameraTypeFeatureTables().getMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            public CameraTypeFeatureTableList getCameraTypeFeatureTablesOrDefault(int i, CameraTypeFeatureTableList cameraTypeFeatureTableList) {
                Map<Integer, CameraTypeFeatureTableList> map = internalGetCameraTypeFeatureTables().getMap();
                return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : cameraTypeFeatureTableList;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.ModeGroupFeatureTableOrBuilder
            public CameraTypeFeatureTableList getCameraTypeFeatureTablesOrThrow(int i) {
                Map<Integer, CameraTypeFeatureTableList> map = internalGetCameraTypeFeatureTables().getMap();
                if (!map.containsKey(Integer.valueOf(i))) {
                    throw new IllegalArgumentException();
                }
                return map.get(Integer.valueOf(i));
            }

            public Builder clearCameraTypeFeatureTables() {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().clear();
                return this;
            }

            public Builder removeCameraTypeFeatureTables(int i) {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().remove(Integer.valueOf(i));
                return this;
            }

            @Deprecated
            public Map<Integer, CameraTypeFeatureTableList> getMutableCameraTypeFeatureTables() {
                return internalGetMutableCameraTypeFeatureTables().getMutableMap();
            }

            public Builder putCameraTypeFeatureTables(int i, CameraTypeFeatureTableList cameraTypeFeatureTableList) {
                cameraTypeFeatureTableList.getClass();
                internalGetMutableCameraTypeFeatureTables().getMutableMap().put(Integer.valueOf(i), cameraTypeFeatureTableList);
                return this;
            }

            public Builder putAllCameraTypeFeatureTables(Map<Integer, CameraTypeFeatureTableList> map) {
                internalGetMutableCameraTypeFeatureTables().getMutableMap().putAll(map);
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

        public static ModeGroupFeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ModeGroupFeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<ModeGroupFeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public ModeGroupFeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class CameraFeatureTable extends GeneratedMessageV3 implements CameraFeatureTableOrBuilder {
        public static final int MODE_FEATURE_TABLES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private MapField<String, ModeFeatureTable> modeFeatureTables_;
        private static final CameraFeatureTable DEFAULT_INSTANCE = new CameraFeatureTable();
        private static final Parser<CameraFeatureTable> PARSER = new AbstractParser<CameraFeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public CameraFeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CameraFeatureTable(codedInputStream, extensionRegistryLite);
            }
        };

        private CameraFeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CameraFeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new CameraFeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CameraFeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if (!(z2 & true)) {
                                        this.modeFeatureTables_ = MapField.newMapField(ModeFeatureTablesDefaultEntryHolder.defaultEntry);
                                        z2 |= true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(ModeFeatureTablesDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.modeFeatureTables_.getMutableMap().put((String) mapEntry.getKey(), (ModeFeatureTable) mapEntry.getValue());
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_CameraFeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 1) {
                return internalGetModeFeatureTables();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_CameraFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraFeatureTable.class, Builder.class);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class ModeFeatureTablesDefaultEntryHolder {
            static final MapEntry<String, ModeFeatureTable> defaultEntry = MapEntry.newDefaultInstance(ProtobufFeatureConfig.internal_static_CameraFeatureTable_ModeFeatureTablesEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, ModeFeatureTable.getDefaultInstance());

            private ModeFeatureTablesDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, ModeFeatureTable> internalGetModeFeatureTables() {
            MapField<String, ModeFeatureTable> mapField = this.modeFeatureTables_;
            return mapField == null ? MapField.emptyMapField(ModeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        public int getModeFeatureTablesCount() {
            return internalGetModeFeatureTables().getMap().size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        public boolean containsModeFeatureTables(String str) {
            str.getClass();
            return internalGetModeFeatureTables().getMap().containsKey(str);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        @Deprecated
        public Map<String, ModeFeatureTable> getModeFeatureTables() {
            return getModeFeatureTablesMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        public Map<String, ModeFeatureTable> getModeFeatureTablesMap() {
            return internalGetModeFeatureTables().getMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        public ModeFeatureTable getModeFeatureTablesOrDefault(String str, ModeFeatureTable modeFeatureTable) {
            str.getClass();
            Map<String, ModeFeatureTable> map = internalGetModeFeatureTables().getMap();
            return map.containsKey(str) ? map.get(str) : modeFeatureTable;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
        public ModeFeatureTable getModeFeatureTablesOrThrow(String str) {
            str.getClass();
            Map<String, ModeFeatureTable> map = internalGetModeFeatureTables().getMap();
            if (!map.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return map.get(str);
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
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetModeFeatureTables(), ModeFeatureTablesDefaultEntryHolder.defaultEntry, 1);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (Map.Entry<String, ModeFeatureTable> entry : internalGetModeFeatureTables().getMap().entrySet()) {
                i2 += CodedOutputStream.computeMessageSize(1, ModeFeatureTablesDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CameraFeatureTable)) {
                return super.equals(obj);
            }
            CameraFeatureTable cameraFeatureTable = (CameraFeatureTable) obj;
            return internalGetModeFeatureTables().equals(cameraFeatureTable.internalGetModeFeatureTables()) && this.unknownFields.equals(cameraFeatureTable.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (!internalGetModeFeatureTables().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetModeFeatureTables().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static CameraFeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CameraFeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CameraFeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CameraFeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CameraFeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CameraFeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CameraFeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CameraFeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraFeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CameraFeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraFeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CameraFeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CameraFeatureTable cameraFeatureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cameraFeatureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CameraFeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private MapField<String, ModeFeatureTable> modeFeatureTables_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_CameraFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 1) {
                    return internalGetModeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 1) {
                    return internalGetMutableModeFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_CameraFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraFeatureTable.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CameraFeatureTable.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                internalGetMutableModeFeatureTables().clear();
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_CameraFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public CameraFeatureTable getDefaultInstanceForType() {
                return CameraFeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraFeatureTable build() {
                CameraFeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraFeatureTable buildPartial() {
                CameraFeatureTable cameraFeatureTable = new CameraFeatureTable(this);
                cameraFeatureTable.modeFeatureTables_ = internalGetModeFeatureTables();
                cameraFeatureTable.modeFeatureTables_.makeImmutable();
                onBuilt();
                return cameraFeatureTable;
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
                if (message instanceof CameraFeatureTable) {
                    return mergeFrom((CameraFeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CameraFeatureTable cameraFeatureTable) {
                if (cameraFeatureTable == CameraFeatureTable.getDefaultInstance()) {
                    return this;
                }
                internalGetMutableModeFeatureTables().mergeFrom(cameraFeatureTable.internalGetModeFeatureTables());
                mergeUnknownFields(cameraFeatureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable.access$11300()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraFeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraFeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraFeatureTable$Builder");
            }

            private MapField<String, ModeFeatureTable> internalGetModeFeatureTables() {
                MapField<String, ModeFeatureTable> mapField = this.modeFeatureTables_;
                return mapField == null ? MapField.emptyMapField(ModeFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<String, ModeFeatureTable> internalGetMutableModeFeatureTables() {
                onChanged();
                if (this.modeFeatureTables_ == null) {
                    this.modeFeatureTables_ = MapField.newMapField(ModeFeatureTablesDefaultEntryHolder.defaultEntry);
                }
                if (!this.modeFeatureTables_.isMutable()) {
                    this.modeFeatureTables_ = this.modeFeatureTables_.copy();
                }
                return this.modeFeatureTables_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            public int getModeFeatureTablesCount() {
                return internalGetModeFeatureTables().getMap().size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            public boolean containsModeFeatureTables(String str) {
                str.getClass();
                return internalGetModeFeatureTables().getMap().containsKey(str);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            @Deprecated
            public Map<String, ModeFeatureTable> getModeFeatureTables() {
                return getModeFeatureTablesMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            public Map<String, ModeFeatureTable> getModeFeatureTablesMap() {
                return internalGetModeFeatureTables().getMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            public ModeFeatureTable getModeFeatureTablesOrDefault(String str, ModeFeatureTable modeFeatureTable) {
                str.getClass();
                Map<String, ModeFeatureTable> map = internalGetModeFeatureTables().getMap();
                return map.containsKey(str) ? map.get(str) : modeFeatureTable;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraFeatureTableOrBuilder
            public ModeFeatureTable getModeFeatureTablesOrThrow(String str) {
                str.getClass();
                Map<String, ModeFeatureTable> map = internalGetModeFeatureTables().getMap();
                if (!map.containsKey(str)) {
                    throw new IllegalArgumentException();
                }
                return map.get(str);
            }

            public Builder clearModeFeatureTables() {
                internalGetMutableModeFeatureTables().getMutableMap().clear();
                return this;
            }

            public Builder removeModeFeatureTables(String str) {
                str.getClass();
                internalGetMutableModeFeatureTables().getMutableMap().remove(str);
                return this;
            }

            @Deprecated
            public Map<String, ModeFeatureTable> getMutableModeFeatureTables() {
                return internalGetMutableModeFeatureTables().getMutableMap();
            }

            public Builder putModeFeatureTables(String str, ModeFeatureTable modeFeatureTable) {
                str.getClass();
                modeFeatureTable.getClass();
                internalGetMutableModeFeatureTables().getMutableMap().put(str, modeFeatureTable);
                return this;
            }

            public Builder putAllModeFeatureTables(Map<String, ModeFeatureTable> map) {
                internalGetMutableModeFeatureTables().getMutableMap().putAll(map);
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

        public static CameraFeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CameraFeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<CameraFeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public CameraFeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class CameraGroupFeatureTable extends GeneratedMessageV3 implements CameraGroupFeatureTableOrBuilder {
        public static final int MODE_GROUP_FEATURE_TABLES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private MapField<String, ModeGroupFeatureTable> modeGroupFeatureTables_;
        private static final CameraGroupFeatureTable DEFAULT_INSTANCE = new CameraGroupFeatureTable();
        private static final Parser<CameraGroupFeatureTable> PARSER = new AbstractParser<CameraGroupFeatureTable>() { // from class: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable.1
            @Override // com.google.oplus.protobuf.Parser
            public CameraGroupFeatureTable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CameraGroupFeatureTable(codedInputStream, extensionRegistryLite);
            }
        };

        private CameraGroupFeatureTable(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CameraGroupFeatureTable() {
            this.memoizedIsInitialized = (byte) -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new CameraGroupFeatureTable();
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CameraGroupFeatureTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if (!(z2 & true)) {
                                        this.modeGroupFeatureTables_ = MapField.newMapField(ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry);
                                        z2 |= true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.modeGroupFeatureTables_.getMutableMap().put((String) mapEntry.getKey(), (ModeGroupFeatureTable) mapEntry.getValue());
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_descriptor;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 1) {
                return internalGetModeGroupFeatureTables();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraGroupFeatureTable.class, Builder.class);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class ModeGroupFeatureTablesDefaultEntryHolder {
            static final MapEntry<String, ModeGroupFeatureTable> defaultEntry = MapEntry.newDefaultInstance(ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_ModeGroupFeatureTablesEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, ModeGroupFeatureTable.getDefaultInstance());

            private ModeGroupFeatureTablesDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, ModeGroupFeatureTable> internalGetModeGroupFeatureTables() {
            MapField<String, ModeGroupFeatureTable> mapField = this.modeGroupFeatureTables_;
            return mapField == null ? MapField.emptyMapField(ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        public int getModeGroupFeatureTablesCount() {
            return internalGetModeGroupFeatureTables().getMap().size();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        public boolean containsModeGroupFeatureTables(String str) {
            str.getClass();
            return internalGetModeGroupFeatureTables().getMap().containsKey(str);
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        @Deprecated
        public Map<String, ModeGroupFeatureTable> getModeGroupFeatureTables() {
            return getModeGroupFeatureTablesMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        public Map<String, ModeGroupFeatureTable> getModeGroupFeatureTablesMap() {
            return internalGetModeGroupFeatureTables().getMap();
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        public ModeGroupFeatureTable getModeGroupFeatureTablesOrDefault(String str, ModeGroupFeatureTable modeGroupFeatureTable) {
            str.getClass();
            Map<String, ModeGroupFeatureTable> map = internalGetModeGroupFeatureTables().getMap();
            return map.containsKey(str) ? map.get(str) : modeGroupFeatureTable;
        }

        @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
        public ModeGroupFeatureTable getModeGroupFeatureTablesOrThrow(String str) {
            str.getClass();
            Map<String, ModeGroupFeatureTable> map = internalGetModeGroupFeatureTables().getMap();
            if (!map.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return map.get(str);
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
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetModeGroupFeatureTables(), ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry, 1);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (Map.Entry<String, ModeGroupFeatureTable> entry : internalGetModeGroupFeatureTables().getMap().entrySet()) {
                i2 += CodedOutputStream.computeMessageSize(1, ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CameraGroupFeatureTable)) {
                return super.equals(obj);
            }
            CameraGroupFeatureTable cameraGroupFeatureTable = (CameraGroupFeatureTable) obj;
            return internalGetModeGroupFeatureTables().equals(cameraGroupFeatureTable.internalGetModeGroupFeatureTables()) && this.unknownFields.equals(cameraGroupFeatureTable.unknownFields);
        }

        @Override // com.google.oplus.protobuf.AbstractMessage, com.google.oplus.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (!internalGetModeGroupFeatureTables().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetModeGroupFeatureTables().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static CameraGroupFeatureTable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CameraGroupFeatureTable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CameraGroupFeatureTable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CameraGroupFeatureTable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CameraGroupFeatureTable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CameraGroupFeatureTable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CameraGroupFeatureTable parseFrom(InputStream inputStream) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CameraGroupFeatureTable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraGroupFeatureTable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CameraGroupFeatureTable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CameraGroupFeatureTable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CameraGroupFeatureTable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CameraGroupFeatureTable) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CameraGroupFeatureTable cameraGroupFeatureTable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cameraGroupFeatureTable);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CameraGroupFeatureTableOrBuilder, Cloneable {
            private int bitField0_;
            private MapField<String, ModeGroupFeatureTable> modeGroupFeatureTables_;

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 1) {
                    return internalGetModeGroupFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 1) {
                    return internalGetMutableModeGroupFeatureTables();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_fieldAccessorTable.ensureFieldAccessorsInitialized(CameraGroupFeatureTable.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CameraGroupFeatureTable.alwaysUseFieldBuilders;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                internalGetMutableModeGroupFeatureTables().clear();
                return this;
            }

            @Override // com.google.oplus.protobuf.GeneratedMessageV3.Builder, com.google.oplus.protobuf.Message.Builder, com.google.oplus.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ProtobufFeatureConfig.internal_static_CameraGroupFeatureTable_descriptor;
            }

            @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
            public CameraGroupFeatureTable getDefaultInstanceForType() {
                return CameraGroupFeatureTable.getDefaultInstance();
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraGroupFeatureTable build() {
                CameraGroupFeatureTable buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            public CameraGroupFeatureTable buildPartial() {
                CameraGroupFeatureTable cameraGroupFeatureTable = new CameraGroupFeatureTable(this);
                cameraGroupFeatureTable.modeGroupFeatureTables_ = internalGetModeGroupFeatureTables();
                cameraGroupFeatureTable.modeGroupFeatureTables_.makeImmutable();
                onBuilt();
                return cameraGroupFeatureTable;
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
                if (message instanceof CameraGroupFeatureTable) {
                    return mergeFrom((CameraGroupFeatureTable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CameraGroupFeatureTable cameraGroupFeatureTable) {
                if (cameraGroupFeatureTable == CameraGroupFeatureTable.getDefaultInstance()) {
                    return this;
                }
                internalGetMutableModeGroupFeatureTables().mergeFrom(cameraGroupFeatureTable.internalGetModeGroupFeatureTables());
                mergeUnknownFields(cameraGroupFeatureTable.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.oplus.protobuf.AbstractMessage.Builder, com.google.oplus.protobuf.AbstractMessageLite.Builder, com.google.oplus.protobuf.MessageLite.Builder, com.google.oplus.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable.Builder mergeFrom(com.google.oplus.protobuf.CodedInputStream r3, com.google.oplus.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.oplus.protobuf.Parser r1 = com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable.access$12500()     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraGroupFeatureTable r3 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable) r3     // Catch: java.lang.Throwable -> L11 com.google.oplus.protobuf.InvalidProtocolBufferException -> L13
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
                    com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraGroupFeatureTable r4 = (com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTable.Builder.mergeFrom(com.google.oplus.protobuf.CodedInputStream, com.google.oplus.protobuf.ExtensionRegistryLite):com.oplus.ocs.camera.configure.ProtobufFeatureConfig$CameraGroupFeatureTable$Builder");
            }

            private MapField<String, ModeGroupFeatureTable> internalGetModeGroupFeatureTables() {
                MapField<String, ModeGroupFeatureTable> mapField = this.modeGroupFeatureTables_;
                return mapField == null ? MapField.emptyMapField(ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<String, ModeGroupFeatureTable> internalGetMutableModeGroupFeatureTables() {
                onChanged();
                if (this.modeGroupFeatureTables_ == null) {
                    this.modeGroupFeatureTables_ = MapField.newMapField(ModeGroupFeatureTablesDefaultEntryHolder.defaultEntry);
                }
                if (!this.modeGroupFeatureTables_.isMutable()) {
                    this.modeGroupFeatureTables_ = this.modeGroupFeatureTables_.copy();
                }
                return this.modeGroupFeatureTables_;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            public int getModeGroupFeatureTablesCount() {
                return internalGetModeGroupFeatureTables().getMap().size();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            public boolean containsModeGroupFeatureTables(String str) {
                str.getClass();
                return internalGetModeGroupFeatureTables().getMap().containsKey(str);
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            @Deprecated
            public Map<String, ModeGroupFeatureTable> getModeGroupFeatureTables() {
                return getModeGroupFeatureTablesMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            public Map<String, ModeGroupFeatureTable> getModeGroupFeatureTablesMap() {
                return internalGetModeGroupFeatureTables().getMap();
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            public ModeGroupFeatureTable getModeGroupFeatureTablesOrDefault(String str, ModeGroupFeatureTable modeGroupFeatureTable) {
                str.getClass();
                Map<String, ModeGroupFeatureTable> map = internalGetModeGroupFeatureTables().getMap();
                return map.containsKey(str) ? map.get(str) : modeGroupFeatureTable;
            }

            @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfig.CameraGroupFeatureTableOrBuilder
            public ModeGroupFeatureTable getModeGroupFeatureTablesOrThrow(String str) {
                str.getClass();
                Map<String, ModeGroupFeatureTable> map = internalGetModeGroupFeatureTables().getMap();
                if (!map.containsKey(str)) {
                    throw new IllegalArgumentException();
                }
                return map.get(str);
            }

            public Builder clearModeGroupFeatureTables() {
                internalGetMutableModeGroupFeatureTables().getMutableMap().clear();
                return this;
            }

            public Builder removeModeGroupFeatureTables(String str) {
                str.getClass();
                internalGetMutableModeGroupFeatureTables().getMutableMap().remove(str);
                return this;
            }

            @Deprecated
            public Map<String, ModeGroupFeatureTable> getMutableModeGroupFeatureTables() {
                return internalGetMutableModeGroupFeatureTables().getMutableMap();
            }

            public Builder putModeGroupFeatureTables(String str, ModeGroupFeatureTable modeGroupFeatureTable) {
                str.getClass();
                modeGroupFeatureTable.getClass();
                internalGetMutableModeGroupFeatureTables().getMutableMap().put(str, modeGroupFeatureTable);
                return this;
            }

            public Builder putAllModeGroupFeatureTables(Map<String, ModeGroupFeatureTable> map) {
                internalGetMutableModeGroupFeatureTables().getMutableMap().putAll(map);
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

        public static CameraGroupFeatureTable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CameraGroupFeatureTable> parser() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.GeneratedMessageV3, com.google.oplus.protobuf.MessageLite, com.google.oplus.protobuf.Message
        public Parser<CameraGroupFeatureTable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.oplus.protobuf.MessageLiteOrBuilder, com.google.oplus.protobuf.MessageOrBuilder
        public CameraGroupFeatureTable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_FeatureTable_descriptor = descriptor2;
        internal_static_FeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"StrPool", "CameraFeatureTable", "CameraGroupFeatureTable", "Version"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_Feature_descriptor = descriptor3;
        internal_static_Feature_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"FeatureNameIndex", "FeatureKeyNameIndex", "FeatureValueRangeIndex", "FeatureDefaultValueIndex", "EntryTypeIndex", "FeatureValueTypeIndex", "GroupConflict", "ConflictMap"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        internal_static_Feature_ConflictMapEntry_descriptor = descriptor4;
        internal_static_Feature_ConflictMapEntry_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(2);
        internal_static_ConflictFeatureList_descriptor = descriptor5;
        internal_static_ConflictFeatureList_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"ConflictFeatures"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(3);
        internal_static_ConflictFeature_descriptor = descriptor6;
        internal_static_ConflictFeature_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"FeatureNameIndex", "FeatureValueIndex", "FeatureConflictValueIndex"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(4);
        internal_static_CameraTypeFeatureTable_descriptor = descriptor7;
        internal_static_CameraTypeFeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"FeatureList"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CameraTypeFeatureTableList_descriptor = descriptor8;
        internal_static_CameraTypeFeatureTableList_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{"CameraTypeFeatureTableList"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(6);
        internal_static_ModeFeatureTable_descriptor = descriptor9;
        internal_static_ModeFeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"CameraTypeFeatureTables"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        internal_static_ModeFeatureTable_CameraTypeFeatureTablesEntry_descriptor = descriptor10;
        internal_static_ModeFeatureTable_CameraTypeFeatureTablesEntry_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(7);
        internal_static_ModeGroupFeatureTable_descriptor = descriptor11;
        internal_static_ModeGroupFeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor11, new String[]{"CameraTypeFeatureTables"});
        Descriptors.Descriptor descriptor12 = descriptor11.getNestedTypes().get(0);
        internal_static_ModeGroupFeatureTable_CameraTypeFeatureTablesEntry_descriptor = descriptor12;
        internal_static_ModeGroupFeatureTable_CameraTypeFeatureTablesEntry_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor12, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(8);
        internal_static_CameraFeatureTable_descriptor = descriptor13;
        internal_static_CameraFeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor13, new String[]{"ModeFeatureTables"});
        Descriptors.Descriptor descriptor14 = descriptor13.getNestedTypes().get(0);
        internal_static_CameraFeatureTable_ModeFeatureTablesEntry_descriptor = descriptor14;
        internal_static_CameraFeatureTable_ModeFeatureTablesEntry_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor14, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(9);
        internal_static_CameraGroupFeatureTable_descriptor = descriptor15;
        internal_static_CameraGroupFeatureTable_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor15, new String[]{"ModeGroupFeatureTables"});
        Descriptors.Descriptor descriptor16 = descriptor15.getNestedTypes().get(0);
        internal_static_CameraGroupFeatureTable_ModeGroupFeatureTablesEntry_descriptor = descriptor16;
        internal_static_CameraGroupFeatureTable_ModeGroupFeatureTablesEntry_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor16, new String[]{"Key", "Value"});
    }
}
