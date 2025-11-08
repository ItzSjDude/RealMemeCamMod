.class public final Lcom/heytap/accessory/bean/PairSetting$Builder;
.super Ljava/lang/Object;
.source "PairSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/bean/PairSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mGoIntent:B

.field private mPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput-byte v0, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mGoIntent:B

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mPort:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/heytap/accessory/bean/PairSetting;
    .locals 3

    .line 101
    new-instance v0, Lcom/heytap/accessory/bean/PairSetting;

    iget-byte v1, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mGoIntent:B

    iget p0, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mPort:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/heytap/accessory/bean/PairSetting;-><init>(BILcom/heytap/accessory/bean/PairSetting$1;)V

    return-object v0
.end method

.method public final setGoIntent(B)Lcom/heytap/accessory/bean/PairSetting$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 91
    iput-byte p1, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mGoIntent:B

    return-object p0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown go intent "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPort(I)Lcom/heytap/accessory/bean/PairSetting$Builder;
    .locals 0

    .line 96
    iput p1, p0, Lcom/heytap/accessory/bean/PairSetting$Builder;->mPort:I

    return-object p0
.end method
