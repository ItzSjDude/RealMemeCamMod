.class public final Lcom/oplus/camera/statistics/Position$LocInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Position.java"

# interfaces
.implements Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    }
.end annotation


# static fields
.field public static final BID_FIELD_NUMBER:I = 0xd

.field public static final BSSID_FIELD_NUMBER:I = 0xa

.field public static final CID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

.field public static final LAC_FIELD_NUMBER:I = 0x3

.field public static final LAT_FIELD_NUMBER:I = 0x6

.field public static final LONG_FIELD_NUMBER:I = 0x7

.field public static final MCC_FIELD_NUMBER:I = 0x1

.field public static final MNC_FIELD_NUMBER:I = 0x2

.field public static final NID_FIELD_NUMBER:I = 0xc

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PCBA_FIELD_NUMBER:I = 0x8

.field public static final SID_FIELD_NUMBER:I = 0xb

.field public static final SSID_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private volatile bid_:Ljava/lang/Object;

.field private bitField0_:I

.field private volatile bssid_:Ljava/lang/Object;

.field private volatile cid_:Ljava/lang/Object;

.field private volatile lac_:Ljava/lang/Object;

.field private lat_:F

.field private long_:F

.field private volatile mcc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile mnc_:Ljava/lang/Object;

.field private volatile nid_:Ljava/lang/Object;

.field private volatile pcba_:Ljava/lang/Object;

.field private volatile sid_:Ljava/lang/Object;

.field private volatile ssid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4318
    new-instance v0, Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-direct {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 4326
    new-instance v0, Lcom/oplus/camera/statistics/Position$LocInfo$1;

    invoke-direct {v0}, Lcom/oplus/camera/statistics/Position$LocInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1845
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2582
    iput-byte v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1846
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    .line 1847
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    .line 1848
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    .line 1849
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1850
    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    .line 1851
    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    .line 1852
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    .line 1853
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    .line 1854
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    .line 1855
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    .line 1856
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    .line 1857
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1869
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;-><init>()V

    .line 1872
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1876
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 1882
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 1958
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1959
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1960
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    goto :goto_0

    .line 1952
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1953
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1954
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    goto :goto_0

    .line 1946
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1947
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1948
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    goto :goto_0

    .line 1940
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1941
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1942
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    goto :goto_0

    .line 1934
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1935
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1936
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    goto :goto_0

    .line 1928
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1929
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1930
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    goto :goto_0

    .line 1923
    :sswitch_6
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1924
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    goto :goto_0

    .line 1918
    :sswitch_7
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1919
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    goto :goto_0

    .line 1913
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    .line 1914
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1907
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1908
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1909
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1901
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1902
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1903
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1895
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1896
    iget v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1897
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1889
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1890
    iget v4, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    .line 1891
    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1968
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1969
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1966
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1971
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1972
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->makeExtensionsImmutable()V

    .line 1973
    throw p1

    .line 1971
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1972
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x35 -> :sswitch_7
        0x3d -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1837
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1843
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2582
    iput-byte p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 1837
    invoke-direct {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 1837
    sget-boolean v0, Lcom/oplus/camera/statistics/Position$LocInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oplus/camera/statistics/Position$LocInfo;F)F
    .locals 0

    .line 1837
    iput p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    return p1
.end method

.method static synthetic access$2502(Lcom/oplus/camera/statistics/Position$LocInfo;F)F
    .locals 0

    .line 1837
    iput p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    return p1
.end method

.method static synthetic access$2600(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/oplus/camera/statistics/Position$LocInfo;I)I
    .locals 0

    .line 1837
    iput p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1837
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1

    .line 4322
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1977
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 2912
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 2915
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2885
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2886
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2892
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2893
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2853
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2859
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2898
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2899
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2905
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2906
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2873
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2874
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2880
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2881
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2869
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    .line 4337
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2714
    :cond_0
    instance-of v1, p1, Lcom/oplus/camera/statistics/Position$LocInfo;

    if-nez v1, :cond_1

    .line 2715
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2717
    :cond_1
    check-cast p1, Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 2720
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 2721
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 2722
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    .line 2723
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 2725
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 2726
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 2727
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    .line 2728
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 2730
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 2731
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 2732
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v1

    .line 2733
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 2735
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    .line 2736
    :goto_6
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 2737
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 2738
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 2740
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    .line 2741
    :goto_8
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 2743
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2745
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLat()F

    move-result v2

    .line 2744
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_f

    move v1, v0

    goto :goto_9

    :cond_f
    move v1, v3

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 2747
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_a

    :cond_11
    move v1, v3

    .line 2748
    :goto_a
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 2750
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLong()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2752
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLong()F

    move-result v2

    .line 2751
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_12

    move v1, v0

    goto :goto_b

    :cond_12
    move v1, v3

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 2754
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v2

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_c

    :cond_14
    move v1, v3

    .line 2755
    :goto_c
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 2756
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v1

    .line 2757
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_d

    :cond_15
    move v1, v3

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 2759
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v2

    if-ne v1, v2, :cond_17

    move v1, v0

    goto :goto_e

    :cond_17
    move v1, v3

    .line 2760
    :goto_e
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 2761
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 2762
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v0

    goto :goto_f

    :cond_18
    move v1, v3

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 2764
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    move v1, v0

    goto :goto_10

    :cond_1a
    move v1, v3

    .line 2765
    :goto_10
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 2766
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v1

    .line 2767
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_11

    :cond_1b
    move v1, v3

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 2769
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v2

    if-ne v1, v2, :cond_1d

    move v1, v0

    goto :goto_12

    :cond_1d
    move v1, v3

    .line 2770
    :goto_12
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    .line 2771
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    .line 2772
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_13

    :cond_1e
    move v1, v3

    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 2774
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v2

    if-ne v1, v2, :cond_20

    move v1, v0

    goto :goto_14

    :cond_20
    move v1, v3

    .line 2775
    :goto_14
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_21

    .line 2776
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v1

    .line 2777
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    goto :goto_15

    :cond_21
    move v1, v3

    :cond_22
    :goto_15
    if-eqz v1, :cond_23

    .line 2779
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v2

    if-ne v1, v2, :cond_23

    move v1, v0

    goto :goto_16

    :cond_23
    move v1, v3

    .line 2780
    :goto_16
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_24

    .line 2781
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v1

    .line 2782
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v0

    goto :goto_17

    :cond_24
    move v1, v3

    :cond_25
    :goto_17
    if-eqz v1, :cond_26

    .line 2784
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_18

    :cond_26
    move v0, v3

    :goto_18
    return v0
.end method

.method public getBid()Ljava/lang/String;
    .locals 2

    .line 2547
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    .line 2548
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2549
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2551
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2553
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2554
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2555
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getBidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2570
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    .line 2571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2572
    check-cast v0, Ljava/lang/String;

    .line 2573
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2575
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    return-object v0

    .line 2578
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 2

    .line 2380
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    .line 2381
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2382
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2384
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2386
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2387
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2388
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2399
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    .line 2400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2401
    check-cast v0, Ljava/lang/String;

    .line 2402
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2404
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    return-object v0

    .line 2407
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 2182
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    .line 2183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2184
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2186
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2188
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2189
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2205
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    .line 2206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2207
    check-cast v0, Ljava/lang/String;

    .line 2208
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2210
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    return-object v0

    .line 2213
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 0

    .line 4347
    sget-object p0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public getLac()Ljava/lang/String;
    .locals 2

    .line 2125
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    .line 2126
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2127
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2129
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2131
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLacBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2148
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    .line 2149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2150
    check-cast v0, Ljava/lang/String;

    .line 2151
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2153
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    return-object v0

    .line 2156
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLat()F
    .locals 0

    .line 2239
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    return p0
.end method

.method public getLong()F
    .locals 0

    .line 2264
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    return p0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .line 2011
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    .line 2012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2013
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2015
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2017
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2018
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2019
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMccBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2034
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    .line 2035
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2036
    check-cast v0, Ljava/lang/String;

    .line 2037
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2039
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    return-object v0

    .line 2042
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .line 2068
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    .line 2069
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2070
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2072
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2074
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2075
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMncBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2091
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    .line 2092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2093
    check-cast v0, Ljava/lang/String;

    .line 2094
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2096
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    return-object v0

    .line 2099
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 2

    .line 2490
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    .line 2491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2492
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2494
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2496
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2497
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2498
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2513
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    .line 2514
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2515
    check-cast v0, Ljava/lang/String;

    .line 2516
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2518
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    return-object v0

    .line 2521
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$LocInfo;",
            ">;"
        }
    .end annotation

    .line 4342
    sget-object p0, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPcba()Ljava/lang/String;
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    .line 2282
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2283
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2285
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2287
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2288
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2289
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPcbaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2300
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    .line 2301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2302
    check-cast v0, Ljava/lang/String;

    .line 2303
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2305
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    return-object v0

    .line 2308
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2661
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2665
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2666
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    :cond_1
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2669
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2671
    :cond_2
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2672
    iget-object v3, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2674
    :cond_3
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2675
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2677
    :cond_4
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 2678
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    .line 2679
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2681
    :cond_5
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 2682
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    .line 2683
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2685
    :cond_6
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 2686
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2688
    :cond_7
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 2689
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2691
    :cond_8
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 2692
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2694
    :cond_9
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    .line 2695
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2697
    :cond_a
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 2698
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2700
    :cond_b
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 2701
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2703
    :cond_c
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2704
    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedSize:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    .line 2433
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    .line 2434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2435
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2437
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2439
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2440
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2441
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2456
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    .line 2457
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2458
    check-cast v0, Ljava/lang/String;

    .line 2459
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2461
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    return-object v0

    .line 2464
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 2332
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    .line 2333
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2334
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2336
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2338
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2340
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2354
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    .line 2355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2356
    check-cast v0, Ljava/lang/String;

    .line 2357
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2359
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    return-object v0

    .line 2362
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1863
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasBid()Z
    .locals 1

    .line 2536
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBssid()Z
    .locals 1

    .line 2373
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCid()Z
    .locals 1

    .line 2171
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLac()Z
    .locals 1

    .line 2114
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLat()Z
    .locals 1

    .line 2228
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLong()Z
    .locals 1

    .line 2253
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMcc()Z
    .locals 1

    .line 2000
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMnc()Z
    .locals 1

    .line 2057
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNid()Z
    .locals 1

    .line 2479
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPcba()Z
    .locals 1

    .line 2274
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSid()Z
    .locals 1

    .line 2422
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSsid()Z
    .locals 1

    .line 2322
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 2790
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2791
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedHashCode:I

    return p0

    :cond_0
    const/16 v0, 0x30b

    .line 2794
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2795
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2797
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2799
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2801
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2803
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 2805
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2807
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 2809
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2811
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 2814
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLat()F

    move-result v1

    .line 2813
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 2816
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 2819
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLong()F

    move-result v1

    .line 2818
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 2821
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 2823
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2825
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 2827
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2829
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 2831
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2833
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 2835
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2837
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 2839
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2841
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 2843
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    .line 2845
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2846
    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 1983
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/oplus/camera/statistics/Position$LocInfo;

    const-class v1, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 1984
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2585
    iget-byte v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2589
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2590
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2593
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2594
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2597
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2598
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2601
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2602
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2605
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2606
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2609
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2610
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v2

    .line 2613
    :cond_7
    iput-byte v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->newBuilderForType()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1837
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->newBuilderForType()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 2910
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->newBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 2926
    new-instance p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oplus/camera/statistics/Position$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 2

    .line 2919
    sget-object v0, Lcom/oplus/camera/statistics/Position$LocInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$LocInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2920
    new-instance p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    invoke-direct {p0, v1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/oplus/camera/statistics/Position$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/oplus/camera/statistics/Position$1;)V

    invoke-virtual {v0, p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2620
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mcc_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2623
    :cond_0
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2624
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->mnc_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2626
    :cond_1
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2627
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lac_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2629
    :cond_2
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2630
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2632
    :cond_3
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    .line 2633
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->lat_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2635
    :cond_4
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    .line 2636
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->long_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2638
    :cond_5
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 2639
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->pcba_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2641
    :cond_6
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    .line 2642
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2644
    :cond_7
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0xa

    .line 2645
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bssid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2647
    :cond_8
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xb

    .line 2648
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->sid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2650
    :cond_9
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xc

    .line 2651
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->nid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2653
    :cond_a
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    .line 2654
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->bid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2656
    :cond_b
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
