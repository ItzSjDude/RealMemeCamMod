.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;
.super Ljava/lang/Object;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoConfig"
.end annotation


# instance fields
.field public cachePath:Ljava/lang/String;

.field public isRealTime:Z

.field public modelData:[B

.field public modelPath:Ljava/lang/String;

.field public nativeLibPath:Ljava/lang/String;

.field public sdkCapability:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;
    .locals 2

    .line 271
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;-><init>()V

    .line 272
    iget v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->sdkCapability:I

    iput v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->sdkCapability:I

    .line 273
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->modelData:[B

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->modelData:[B

    .line 274
    iget-boolean v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->isRealTime:Z

    iput-boolean v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->isRealTime:Z

    .line 275
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->cachePath:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    .line 277
    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->modelPath:Ljava/lang/String;

    iput-object p0, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoConfig;->modelPath:Ljava/lang/String;

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

    .line 264
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->sdkCapability:I

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->modelData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 266
    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    const-string v3, "null"

    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 267
    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget-boolean p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->isRealTime:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "sdkCapability %d, model size %d, cache path %s, lib path %s, realtime %b"

    .line 264
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
