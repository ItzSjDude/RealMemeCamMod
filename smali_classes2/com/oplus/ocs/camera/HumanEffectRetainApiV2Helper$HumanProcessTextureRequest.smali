.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTextureRequest"
.end annotation


# instance fields
.field public cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

.field public humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;->cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    .line 251
    iput-object p2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;->humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    return-void
.end method

.method public static Builder()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 1

    .line 246
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTextureRequest;
    .locals 2

    .line 255
    new-instance v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTextureRequest;

    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;->cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    .line 256
    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;->humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTextureRequest;-><init>(Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$CameraType;Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;)V

    return-object v0
.end method
