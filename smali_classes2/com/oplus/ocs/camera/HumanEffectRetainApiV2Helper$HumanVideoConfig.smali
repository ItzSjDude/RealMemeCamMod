.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoConfig"
.end annotation


# instance fields
.field public cachePath:Ljava/lang/String;

.field public isBackCamera:Z

.field public isRealTime:Z

.field public modelData:[B

.field public modelPath:Ljava/lang/String;

.field public nativeLibPath:Ljava/lang/String;

.field public powerMode:I

.field public sdkLoadType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkPowerMode;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkPowerMode;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->powerMode:I

    .line 56
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->sdkLoadType:I

    return-void
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;
    .locals 2

    .line 72
    new-instance v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;

    invoke-direct {v0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;-><init>()V

    .line 73
    iget-boolean v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->isRealTime:Z

    iput-boolean v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->isRealTime:Z

    .line 74
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->modelData:[B

    iput-object v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->modelData:[B

    .line 75
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->cachePath:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    .line 77
    iget-boolean v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->isBackCamera:Z

    iput-boolean v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->isBackCamera:Z

    .line 78
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->modelPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->modelPath:Ljava/lang/String;

    .line 79
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->powerMode:I

    iput v1, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->powerMode:I

    .line 80
    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->sdkLoadType:I

    iput p0, v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;->sdkLoadType:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x5

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->modelData:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 66
    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    const-string v3, "null"

    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 67
    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->isRealTime:Z

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->sdkLoadType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "model size %d, cache path %s, lib path %s, realtime %b, sdkLoadType %d"

    .line 64
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
