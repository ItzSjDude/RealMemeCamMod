.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTextureRequestBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

.field public height:I

.field public isOES:Z

.field public rotation:I

.field public texID:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 260
    const-class v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;
    .locals 7

    .line 302
    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->texID:I

    if-lez v1, :cond_0

    iget v3, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->width:I

    if-lez v3, :cond_0

    iget v4, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->height:I

    if-lez v4, :cond_0

    iget v5, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->rotation:I

    rem-int/lit8 v0, v5, 0x5a

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    if-eqz v0, :cond_0

    .line 304
    new-instance v6, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    iget-boolean v2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->isOES:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;-><init>(IZIII)V

    .line 307
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    invoke-direct {v0, p0, v6}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;-><init>(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCameraType(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->cameraType:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    return-object p0
.end method

.method public setHeight(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 292
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->height:I

    return-object p0
.end method

.method public setOES(Z)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->isOES:Z

    return-object p0
.end method

.method public setRotation(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 297
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->rotation:I

    return-object p0
.end method

.method public setTexID(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 277
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->texID:I

    return-object p0
.end method

.method public setWidth(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;
    .locals 0

    .line 287
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->width:I

    return-object p0
.end method
