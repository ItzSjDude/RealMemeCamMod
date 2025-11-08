.class public final Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Position.java"

# interfaces
.implements Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/Position$LocInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/oplus/camera/statistics/Position$LocInfo$Builder;",
        ">;",
        "Lcom/oplus/camera/statistics/Position$LocInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bid_:Ljava/lang/Object;

.field private bitField0_:I

.field private bssid_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private lac_:Ljava/lang/Object;

.field private lat_:F

.field private long_:F

.field private mcc_:Ljava/lang/Object;

.field private mnc_:Ljava/lang/Object;

.field private nid_:Ljava/lang/Object;

.field private pcba_:Ljava/lang/Object;

.field private sid_:Ljava/lang/Object;

.field private ssid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3224
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3327
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3430
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3533
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3736
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3815
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3912
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3991
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4094
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4197
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 2951
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2956
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3224
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3327
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3430
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3533
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3736
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3815
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3912
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3991
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4094
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4197
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 2957
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 2932
    invoke-direct {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/statistics/Position$1;)V
    .locals 0

    .line 2932
    invoke-direct {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2938
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2961
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$1800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3106
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->build()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 1

    .line 3008
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    .line 3009
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3010
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 5

    .line 3017
    new-instance v0, Lcom/oplus/camera/statistics/Position$LocInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/Position$LocInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/oplus/camera/statistics/Position$1;)V

    .line 3018
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3023
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2002(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3027
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2102(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3031
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2202(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3035
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2302(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 3042
    :cond_5
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lat_:F

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2402(Lcom/oplus/camera/statistics/Position$LocInfo;F)F

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 3046
    :cond_6
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->long_:F

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2502(Lcom/oplus/camera/statistics/Position$LocInfo;F)F

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 3050
    :cond_7
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2602(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 3054
    :cond_8
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2702(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 3058
    :cond_9
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2802(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 3062
    :cond_a
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2902(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    .line 3066
    :cond_b
    iget-object v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3002(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x1000

    .line 3070
    :cond_c
    iget-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3102(Lcom/oplus/camera/statistics/Position$LocInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-static {v0, v3}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3202(Lcom/oplus/camera/statistics/Position$LocInfo;I)I

    .line 3072
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clear()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 3

    .line 2966
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 2967
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 2968
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2969
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 2970
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2971
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 2972
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2973
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 2974
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2975
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 2976
    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lat_:F

    .line 2977
    iget v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2978
    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->long_:F

    .line 2979
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2980
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 2981
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2982
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 2983
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2984
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 2985
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2986
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 2987
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2988
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 2989
    iget v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 2990
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 2991
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 4277
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4278
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 4279
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBssid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3972
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3973
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getBssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3974
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3613
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3614
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3615
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3089
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public clearLac()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3510
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3511
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3512
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLat()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3680
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3681
    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lat_:F

    .line 3682
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLong()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3730
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3731
    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->long_:F

    .line 3732
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMcc()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3304
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3305
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3306
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMnc()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3407
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3408
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3409
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 4174
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4175
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getNid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4176
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3094
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public clearPcba()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3796
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3797
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getPcba()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3798
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 4071
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4072
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4073
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSsid()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3890
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3891
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/Position$LocInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3892
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3078
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->clone()Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBid()Ljava/lang/String;
    .locals 2

    .line 4218
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 4219
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4220
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4222
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4223
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4224
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4228
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4241
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 4242
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4243
    check-cast v0, Ljava/lang/String;

    .line 4244
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4246
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    return-object v0

    .line 4249
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 2

    .line 3925
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3926
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3929
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3930
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3931
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3935
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3944
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3945
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3946
    check-cast v0, Ljava/lang/String;

    .line 3947
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3949
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    return-object v0

    .line 3952
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 3554
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3555
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3556
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3558
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3559
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3560
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3564
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3577
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3578
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3579
    check-cast v0, Ljava/lang/String;

    .line 3580
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3582
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 3585
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/oplus/camera/statistics/Position$LocInfo;
    .locals 0

    .line 3003
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 2998
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getLac()Ljava/lang/String;
    .locals 2

    .line 3451
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3452
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3453
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3455
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3456
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3461
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLacBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3475
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3476
    check-cast v0, Ljava/lang/String;

    .line 3477
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3479
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    return-object v0

    .line 3482
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLat()F
    .locals 0

    .line 3657
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lat_:F

    return p0
.end method

.method public getLong()F
    .locals 0

    .line 3707
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->long_:F

    return p0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .line 3245
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3246
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3247
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3249
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3250
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3251
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3255
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMccBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3268
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3269
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3270
    check-cast v0, Ljava/lang/String;

    .line 3271
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3273
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    return-object v0

    .line 3276
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .line 3348
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3349
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3350
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3352
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3353
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3354
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3358
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMncBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3371
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3373
    check-cast v0, Ljava/lang/String;

    .line 3374
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3376
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    return-object v0

    .line 3379
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 2

    .line 4115
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4116
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4117
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4119
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4120
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4121
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4125
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4138
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4140
    check-cast v0, Ljava/lang/String;

    .line 4141
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4143
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    return-object v0

    .line 4146
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPcba()Ljava/lang/String;
    .locals 2

    .line 3749
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3750
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3751
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3753
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3754
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3755
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3759
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPcbaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3768
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3769
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3770
    check-cast v0, Ljava/lang/String;

    .line 3771
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3773
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    return-object v0

    .line 3776
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    .line 4012
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4013
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4014
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4016
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4017
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4018
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4022
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4035
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4036
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4037
    check-cast v0, Ljava/lang/String;

    .line 4038
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4040
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    return-object v0

    .line 4043
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 3834
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3835
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3836
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3838
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3839
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3840
    iput-object v1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3844
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3856
    iget-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3858
    check-cast v0, Ljava/lang/String;

    .line 3859
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3861
    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    return-object v0

    .line 3864
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasBid()Z
    .locals 1

    .line 4207
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3918
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3543
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3440
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3646
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3696
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3234
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3337
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 4104
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3742
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 4001
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

    .line 3824
    iget p0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 2944
    invoke-static {}, Lcom/oplus/camera/statistics/Position;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/oplus/camera/statistics/Position$LocInfo;

    const-class v1, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 2945
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3183
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasMcc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3186
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasMnc()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3189
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasLac()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 3192
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasCid()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 3195
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasLat()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 3198
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->hasLong()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

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

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

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

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

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

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3211
    :try_start_0
    sget-object v1, Lcom/oplus/camera/statistics/Position$LocInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/statistics/Position$LocInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3217
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3213
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/statistics/Position$LocInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3214
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

    .line 3217
    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 3219
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3110
    instance-of v0, p1, Lcom/oplus/camera/statistics/Position$LocInfo;

    if-eqz v0, :cond_0

    .line 3111
    check-cast p1, Lcom/oplus/camera/statistics/Position$LocInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0

    .line 3113
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3119
    invoke-static {}, Lcom/oplus/camera/statistics/Position$LocInfo;->getDefaultInstance()Lcom/oplus/camera/statistics/Position$LocInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3120
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMcc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3121
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3122
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2000(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3123
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3125
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasMnc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3126
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3127
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2100(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3128
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3130
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLac()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3131
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3132
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2200(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3133
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3135
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3136
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3137
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2300(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3138
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3140
    :cond_4
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3141
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setLat(F)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 3143
    :cond_5
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3144
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->getLong()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setLong(F)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 3146
    :cond_6
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasPcba()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3147
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3148
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2600(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3149
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3151
    :cond_7
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3152
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3153
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2700(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3154
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3156
    :cond_8
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3157
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3158
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2800(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3159
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3161
    :cond_9
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasSid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3162
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3163
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$2900(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 3164
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3166
    :cond_a
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasNid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3167
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3168
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3000(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 3169
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3171
    :cond_b
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3172
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3173
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3100(Lcom/oplus/camera/statistics/Position$LocInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 3174
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    .line 3176
    :cond_c
    invoke-static {p1}, Lcom/oplus/camera/statistics/Position$LocInfo;->access$3300(Lcom/oplus/camera/statistics/Position$LocInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    .line 3177
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 4308
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public setBid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4264
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4265
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 4266
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4262
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setBidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4294
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4295
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bid_:Ljava/lang/Object;

    .line 4296
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4292
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3963
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3964
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3965
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3961
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setBssidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3985
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3986
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bssid_:Ljava/lang/Object;

    .line 3987
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3983
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3600
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3601
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3602
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3598
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3630
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3631
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->cid_:Ljava/lang/Object;

    .line 3632
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3628
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3084
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public setLac(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3497
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3498
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3499
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3495
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setLacBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3527
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3528
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lac_:Ljava/lang/Object;

    .line 3529
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3525
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setLat(F)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3667
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3668
    iput p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->lat_:F

    .line 3669
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLong(F)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    .line 3717
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3718
    iput p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->long_:F

    .line 3719
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setMcc(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3291
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3292
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3293
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3289
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setMccBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3321
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3322
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mcc_:Ljava/lang/Object;

    .line 3323
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3319
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setMnc(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3394
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3395
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3396
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3392
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setMncBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3424
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3425
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->mnc_:Ljava/lang/Object;

    .line 3426
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3422
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setNid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4161
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4162
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4163
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4159
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setNidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4191
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4192
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->nid_:Ljava/lang/Object;

    .line 4193
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4189
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setPcba(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3787
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3788
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3789
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3785
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setPcbaBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3809
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3810
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->pcba_:Ljava/lang/Object;

    .line 3811
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3807
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 3100
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method

.method public setSid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4058
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4059
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4060
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4056
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setSidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4088
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 4089
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->sid_:Ljava/lang/Object;

    .line 4090
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 4086
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3878
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3879
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3880
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3876
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3906
    iget v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->bitField0_:I

    .line 3907
    iput-object p1, p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->ssid_:Ljava/lang/Object;

    .line 3908
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->onChanged()V

    return-object p0

    .line 3904
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/oplus/camera/statistics/Position$LocInfo$Builder;
    .locals 0

    .line 4302
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/Position$LocInfo$Builder;

    return-object p0
.end method
