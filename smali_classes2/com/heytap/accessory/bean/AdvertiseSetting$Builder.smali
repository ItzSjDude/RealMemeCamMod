.class public final Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/bean/AdvertiseSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionData:[B

.field private mAdvertiseMode:I

.field private mAdvertiseType:I

.field private mConnectType:I

.field private mDurationMillis:I

.field private mGoIntent:B

.field private mIsCancelAdv:Z

.field private mKeyType:I

.field private mMajor:I

.field private mModelId:[B

.field private mNickName:[B

.field private mPort:I

.field private mRdi:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseType:I

    const/4 v0, -0x1

    .line 244
    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mConnectType:I

    const/4 v1, 0x0

    .line 245
    iput v1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mDurationMillis:I

    const/4 v2, 0x2

    .line 246
    iput v2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mKeyType:I

    const/4 v2, 0x0

    .line 247
    iput-object v2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mModelId:[B

    .line 248
    iput-object v2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mNickName:[B

    .line 249
    iput-object v2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdditionData:[B

    .line 250
    iput-byte v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mGoIntent:B

    .line 251
    iput v1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mPort:I

    const/4 v0, 0x3

    .line 252
    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mMajor:I

    .line 253
    iput v1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseMode:I

    return-void
.end method

.method static synthetic lambda$setModelId$0([B)V
    .locals 1

    .line 292
    array-length p0, p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "model id invalid (length must be 3 byte)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$setNickName$1([B)V
    .locals 1

    .line 302
    array-length p0, p0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "nickName invalid (length must be 0-9 byte)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$setRdi$2([B)V
    .locals 1

    .line 351
    array-length p0, p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "rdi invalid (length must be 6 byte)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final build()Lcom/heytap/accessory/bean/AdvertiseSetting;
    .locals 18

    move-object/from16 v0, p0

    .line 360
    iget v1, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseType:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 361
    :cond_0
    iget-object v1, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mModelId:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 365
    :cond_1
    new-instance v1, Lcom/heytap/accessory/bean/AdvertiseSetting;

    iget v4, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseType:I

    iget v5, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mConnectType:I

    iget v6, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mDurationMillis:I

    iget v7, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mKeyType:I

    iget-object v8, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mModelId:[B

    iget-object v9, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mNickName:[B

    iget-object v10, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdditionData:[B

    iget-byte v11, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mGoIntent:B

    iget v12, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mPort:I

    iget v13, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mMajor:I

    iget v14, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseMode:I

    iget-boolean v15, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mIsCancelAdv:Z

    iget-object v0, v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mRdi:[B

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Lcom/heytap/accessory/bean/AdvertiseSetting;-><init>(IIII[B[B[BBIIIZ[BLcom/heytap/accessory/bean/AdvertiseSetting$1;)V

    return-object v1

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model id invalid (length must be 3 byte)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAdditionData([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdditionData:[B

    return-object p0
.end method

.method public final setAdvertiseMode(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 340
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseMode:I

    return-object p0

    .line 338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mode invalid, must be 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAdvertiseType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 261
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mAdvertiseType:I

    return-object p0

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown advertise type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setConnectType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 269
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mConnectType:I

    return-object p0

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown connect type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDurationMillis(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0xa4cb80

    if-gt p1, v0, :cond_0

    .line 278
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mDurationMillis:I

    return-object p0

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeoutMillis invalid (must be 0-10800000 milliseconds)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setGoIntent(B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 319
    iput-byte p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mGoIntent:B

    return-object p0

    .line 317
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

.method public final setIsCancelAdv(Z)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mIsCancelAdv:Z

    return-object p0
.end method

.method public final setKeyType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 286
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mKeyType:I

    return-object p0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyType invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMajor(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 332
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mMajor:I

    return-object p0

    .line 330
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "major invalid, must be 1-8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setModelId([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 2

    .line 291
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$EuXBymsn13ZdHKRe6BXQOgdHFZc;->INSTANCE:Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$EuXBymsn13ZdHKRe6BXQOgdHFZc;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 296
    iput-object p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mModelId:[B

    return-object p0
.end method

.method public final setNickName([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 2

    .line 301
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$LY2CgSsllbYW6o244jrpQhdzPc0;->INSTANCE:Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$LY2CgSsllbYW6o244jrpQhdzPc0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 306
    iput-object p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mNickName:[B

    return-object p0
.end method

.method public final setPort(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 0

    .line 324
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mPort:I

    return-object p0
.end method

.method public final setRdi([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    .locals 2

    .line 350
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$ZJD6kBviMnhtUlp-grQPT3PFP1s;->INSTANCE:Lcom/heytap/accessory/bean/-$$Lambda$AdvertiseSetting$Builder$ZJD6kBviMnhtUlp-grQPT3PFP1s;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 355
    iput-object p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->mRdi:[B

    return-object p0
.end method
