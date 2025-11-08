.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoFrame;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$ImageType;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkPowerMode;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;,
        Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;
    }
.end annotation


# static fields
.field private static final mInstance:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;-><init>()V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->mInstance:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
    .locals 1

    .line 17
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->mInstance:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initHandle(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;)I
    .locals 0

    .line 33
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->initHandle(Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoConfig;)I

    move-result p0

    return p0
.end method

.method public preInit()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->preInit()V

    return-void
.end method

.method public process(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;)I
    .locals 0

    .line 41
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTextureRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTexureResult;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->process(Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTextureRequest;Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTexureResult;)I

    move-result p0

    return p0
.end method

.method public release()I
    .locals 0

    .line 37
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->release()I

    move-result p0

    return p0
.end method

.method public setLogLevel(I)I
    .locals 0

    .line 21
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public setParams(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;)I
    .locals 0

    .line 25
    invoke-static {}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->getInstance()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoRetainParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2;->setParams(Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoRetainParams;)I

    move-result p0

    return p0
.end method
