.class public final Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Position.java"

# interfaces
.implements Lcom/oplus/camera/statistics/Position$UserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/Position$UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/oplus/camera/statistics/Position$UserInfo$Builder;",
        ">;",
        "Lcom/oplus/camera/statistics/Position$UserInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/oplus/camera/statistics/Position$AddrInfo;",
            "Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;",
            "Lcom/oplus/camera/statistics/Position$AddrInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

.field private bitField0_:I

.field private gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/oplus/camera/statistics/Position$LocInfo;",
            "Lcom/oplus/camera/statistics/Position$LocInfo$Builder;",
            "Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gps_:Lcom/oplus/camera/statistics/Position$LocInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4728
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4900
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 5021
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 4729
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4734
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 4900
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 5021
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 4735
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 4710
    invoke-direct {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 4710
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;-><init>()V

    return-void
.end method

.method private getAddrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/oplus/camera/statistics/Position$AddrInfo;",
            "Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;",
            "Lcom/oplus/camera/statistics/Position$AddrInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5010
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5011
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5013
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v1

    .line 5014
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5015
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5016
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 5018
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4716
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGpsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/oplus/camera/statistics/Position$LocInfo;",
            "Lcom/oplus/camera/statistics/Position$LocInfo$Builder;",
            "Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5131
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5132
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5134
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v1

    .line 5135
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5136
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5137
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5139
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 4739
    invoke-static {}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4740
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getAddrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4741
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getGpsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4838
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 1

    .line 4775
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    .line 4776
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4777
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 4

    .line 4784
    new-instance v0, Lcom/oplus/camera/statistics/Position$UserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/Position$UserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oplus/camera/statistics/Position$1;)V

    .line 4785
    iget v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4790
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1

    .line 4791
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4102(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo;

    goto :goto_1

    .line 4793
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/statistics/Position$AddrInfo;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4102(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo;

    :goto_1
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 4798
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 4799
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4202(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo;

    goto :goto_2

    .line 4801
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4202(Lcom/oplus/camera/statistics/Position$UserInfo;Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 4803
    :goto_2
    invoke-static {v0, v3}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4302(Lcom/oplus/camera/statistics/Position$UserInfo;I)I

    .line 4804
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 2

    .line 4746
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 4747
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4748
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    goto :goto_0

    .line 4750
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4752
    :goto_0
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    .line 4753
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4754
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    goto :goto_1

    .line 4756
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4758
    :goto_1
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAddrInfo()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4975
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4976
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4977
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 4979
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4981
    :goto_0
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4821
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public clearGps()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 5096
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5097
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5098
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 5100
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5102
    :goto_0
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4826
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4810
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;
    .locals 1

    .line 4915
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4916
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p0

    :cond_0
    return-object p0

    .line 4918
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$AddrInfo;

    return-object p0
.end method

.method public getAddrInfoBuilder()Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;
    .locals 1

    .line 4988
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    .line 4989
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    .line 4990
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getAddrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;

    return-object p0
.end method

.method public getAddrInfoOrBuilder()Lcom/oplus/camera/statistics/Position$AddrInfoOrBuilder;
    .locals 1

    .line 4997
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4998
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$AddrInfoOrBuilder;

    return-object p0

    .line 5000
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-nez p0, :cond_1

    .line 5001
    invoke-static {}, Lcom/oplus/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4710
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$UserInfo;
    .locals 0

    .line 4770
    invoke-static {}, Lcom/oplus/camera/statistics/Position$UserInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 4765
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getGps()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1

    .line 5036
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5037
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    :cond_0
    return-object p0

    .line 5039
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo;

    return-object p0
.end method

.method public getGpsBuilder()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 5109
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    .line 5110
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    .line 5111
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getGpsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public getGpsOrBuilder()Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;
    .locals 1

    .line 5118
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5119
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;

    return-object p0

    .line 5121
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-nez p0, :cond_1

    .line 5122
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public hasAddrInfo()Z
    .locals 1

    .line 4908
    iget p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

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

    .line 5029
    iget p0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 4722
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/oplus/camera/statistics/Position$UserInfo;

    const-class v1, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4723
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4865
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->hasAddrInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4868
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->hasGps()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4871
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$AddrInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4874
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public mergeAddrInfo(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 3

    .line 4955
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4956
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    if-eqz v0, :cond_0

    .line 4958
    invoke-static {}, Lcom/oplus/camera/statistics/Position$AddrInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4959
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4960
    invoke-static {v0}, Lcom/oplus/camera/statistics/Position$AddrInfo;->newBuilder(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    goto :goto_0

    .line 4962
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4964
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_1

    .line 4966
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4968
    :goto_1
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4887
    :try_start_0
    sget-object v1, Lcom/oplus/camera/statistics/Position$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/statistics/Position$UserInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4893
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4889
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/statistics/Position$UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4890
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4893
    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4895
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4842
    instance-of v0, p1, Lcom/oplus/camera/statistics/Position$UserInfo;

    if-eqz v0, :cond_0

    .line 4843
    check-cast p1, Lcom/oplus/camera/statistics/Position$UserInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0

    .line 4845
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4851
    invoke-static {}, Lcom/oplus/camera/statistics/Position$UserInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$UserInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4852
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasAddrInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4853
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->getAddrInfo()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeAddrInfo(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4855
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->hasGps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4856
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->getGps()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeGps(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4858
    :cond_2
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$UserInfo;->access$4400(Lcom/oplus/camera/statistics/Position$UserInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    .line 4859
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGps(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 3

    .line 5076
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5077
    iget v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    if-eqz v0, :cond_0

    .line 5079
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5080
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5081
    invoke-static {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->newBuilder(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    goto :goto_0

    .line 5083
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5085
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_1

    .line 5087
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5089
    :goto_1
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 5150
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public setAddrInfo(Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4942
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4943
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4944
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 4946
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$AddrInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$AddrInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4948
    :goto_0
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAddrInfo(Lcom/oplus/camera/statistics/Position$AddrInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 4925
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4929
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->addrInfo_:Lcom/oplus/camera/statistics/Position$AddrInfo;

    .line 4930
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 4927
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 4932
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4934
    :goto_0
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4816
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public setGps(Lcom/oplus/camera/statistics/Position$LocInfo$Builder;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 5063
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5064
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5065
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 5067
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5069
    :goto_0
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGps(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 1

    .line 5046
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gpsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 5050
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->gps_:Lcom/oplus/camera/statistics/Position$LocInfo;

    .line 5051
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->onChanged()V

    goto :goto_0

    .line 5048
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 5053
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5055
    :goto_0
    iget p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 4832
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4710
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$UserInfo$Builder;
    .locals 0

    .line 5144
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$UserInfo$Builder;

    return-object p0
.end method
