.class public Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
.super Ljava/lang/Object;
.source "HumanEffectFusionApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;,
        Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;,
        Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;,
        Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;
    }
.end annotation


# static fields
.field private static sCaptureInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

.field private static sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

.field private static sPreviewInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;


# direct methods
.method private constructor <init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sput-object p1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    return-void
.end method

.method public static getCaptureInstance()Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
    .locals 3

    .line 32
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sCaptureInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sCaptureInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->getCaptureInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;-><init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi;)V

    sput-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sCaptureInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sCaptureInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    return-object v0
.end method

.method public static getPreviewInstance()Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
    .locals 3

    .line 20
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sPreviewInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sPreviewInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->getPreviewInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;-><init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi;)V

    sput-object v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sPreviewInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sPreviewInstance:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 57
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initByConfig(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;)I
    .locals 0

    .line 53
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-static {p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->access$100(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->initByConfig(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)I

    move-result p0

    return p0
.end method

.method public preInit()V
    .locals 3

    .line 81
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->preInit()V

    .line 84
    :try_start_0
    const-class p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    const-string v0, "isSoLoaded"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    const-class v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public process(I[IIIIZ)I
    .locals 9

    .line 61
    new-instance p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;-><init>(IZIII)V

    .line 63
    new-instance p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v5, 0x0

    move-object v3, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;-><init>(IZIII)V

    .line 65
    new-instance p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;

    if-eqz p6, :cond_0

    .line 66
    sget-object p3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_FRONT:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    :goto_0
    invoke-direct {p2, p3, p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;-><init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;)V

    .line 68
    new-instance p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;

    invoke-direct {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;-><init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;)V

    .line 69
    sget-object p1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p1, p2, p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->process(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;)I

    move-result p0

    return p0
.end method

.method public release()I
    .locals 0

    .line 77
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->release()I

    move-result p0

    return p0
.end method

.method public setFeatureType(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;)I
    .locals 0

    .line 45
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-static {p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->access$000(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setFeatureType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;)I

    move-result p0

    return p0
.end method

.method public setLogLevel(I)I
    .locals 0

    .line 49
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I
    .locals 0

    .line 73
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->sHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-static {p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->access$200(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    move-result p0

    return p0
.end method
