.class public final Lcom/oplus/camera/statistics/Position$UserInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Position.java"

# interfaces
.implements Lcom/oplus/camera/statistics/Position$UserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    }
.end annotation


# static fields
.field public static final ADDRINFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

.field public static final GPS_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

.field private bitField0_:I

.field private gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5160
    new-instance v0, Lcom/oplus/camera/statistics/Position$UserInfo;

    invoke-direct {v0}, Lcom/oplus/camera/statistics/Position$UserInfo;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    .line 5168
    new-instance v0, Lcom/oplus/camera/statistics/Position$UserInfo$1;

    invoke-direct {v0}, Lcom/oplus/camera/statistics/Position$UserInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4524
    iput-byte v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4405
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;-><init>()V

    .line 4408
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 4412
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 4418
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/oplus/camera/statistics/Position$UserInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4439
    :cond_1
    iget v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 4440
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-virtual {v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object v5

    .line 4442
    :cond_2
    sget-object v2, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/statistics/Position$LocInfo;

    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-eqz v5, :cond_3

    .line 4444
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-virtual {v5, v2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 4445
    invoke-virtual {v5}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 4447
    :cond_3
    iget v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    goto :goto_0

    .line 4426
    :cond_4
    iget v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    .line 4427
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    invoke-virtual {v2}, Lcom/oplus/camera/statistics/Position$AddrInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v5

    .line 4429
    :cond_5
    sget-object v2, Lcom/oplus/camera/statistics/Position$AddrInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/statistics/Position$AddrInfo;

    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-eqz v5, :cond_6

    .line 4431
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    invoke-virtual {v5, v2}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;

    .line 4432
    invoke-virtual {v5}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4434
    :cond_6
    iget v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4455
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4456
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4453
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4458
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4459
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->makeExtensionsImmutable()V

    .line 4460
    throw p1

    .line 4458
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4459
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4385
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4524
    iput-byte p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 4385
    invoke-direct {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 4385
    sget-boolean v0, Lcom/oplus/camera/statistics/Position$UserInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo;
    .locals 0

    .line 4385
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 0

    .line 4385
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/oplus/camera/statistics/Position$UserInfo;I)I
    .locals 0

    .line 4385
    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$4400(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 4385
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1

    .line 5164
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4464
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4690
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$UserInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4693
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$UserInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4663
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4664
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4670
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4671
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4631
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4637
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4676
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4677
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4683
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4684
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4651
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4652
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4658
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4659
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4641
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4647
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$UserInfo;",
            ">;"
        }
    .end annotation

    .line 5179
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4588
    :cond_0
    instance-of v1, p1, Lcom/oplus/camera/statistics/Position$UserInfo;

    if-nez v1, :cond_1

    .line 4589
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4591
    :cond_1
    check-cast p1, Lcom/oplus/camera/statistics/Position$UserInfo;

    .line 4594
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 4595
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 4596
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v1

    .line 4597
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/statistics/Position$AddrInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 4599
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 4600
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 4601
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v1

    .line 4602
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 4604
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    return v0
.end method

.method public getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;
    .locals 0

    .line 4490
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getAddrInfoOrBuilder()Lcom/oplus/camera/statistics/Position$AddrInfoOrBuilder;
    .locals 0

    .line 4497
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 0

    .line 5189
    sget-object p0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    return-object p0
.end method

.method public getGps()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 0

    .line 4514
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getGpsOrBuilder()Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;
    .locals 0

    .line 4521
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/oplus/camera/statistics/Position$UserInfo;",
            ">;"
        }
    .end annotation

    .line 5184
    sget-object p0, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4565
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4569
    iget v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4571
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4573
    :cond_1
    iget v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4575
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4577
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4578
    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 4399
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasAddrInfo()Z
    .locals 1

    .line 4483
    iget p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGps()Z
    .locals 1

    .line 4507
    iget p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 4610
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4611
    iget p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedHashCode:I

    return p0

    :cond_0
    const/16 v0, 0x30b

    .line 4614
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4615
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4617
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/statistics/Position$AddrInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4619
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4621
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 4623
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4624
    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 4470
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/oplus/camera/statistics/Position$UserInfo;

    const-class v1, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4471
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 4527
    iget-byte v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4531
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4532
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return v2

    .line 4535
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4536
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return v2

    .line 4539
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$AddrInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4540
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return v2

    .line 4543
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4544
    iput-byte v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return v2

    .line 4547
    :cond_5
    iput-byte v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->newBuilderForType()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4385
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->newBuilderForType()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4688
    invoke-static {}, Lcom/oplus/camera/statistics/Position$UserInfo;->newBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4704
    new-instance p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oplus/camera/statistics/Position$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4385
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->toBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 2

    .line 4697
    sget-object v0, Lcom/oplus/camera/statistics/Position$UserInfo;->DEFAULT_INSTANCE:Lcom/oplus/camera/statistics/Position$UserInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4698
    new-instance p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    invoke-direct {p0, v1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;-><init>(Lcom/oplus/camera/statistics/Position$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;-><init>(Lcom/oplus/camera/statistics/Position$1;)V

    invoke-virtual {v0, p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4554
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4555
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4557
    :cond_0
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4558
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4560
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
