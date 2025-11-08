.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTextureRequest"
.end annotation


# instance fields
.field public humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;-><init>()V

    .line 181
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    return-void
.end method


# virtual methods
.method public mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;
    .locals 3

    .line 189
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;->mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    move-result-object v1

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->cameraType:Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    goto :goto_0

    :cond_0
    const-string v1, "HumanVideoApiHelper"

    const-string v2, "mappingSDKObject, has not set cameraType"

    .line 194
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->height:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->height:I

    .line 198
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->width:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->width:I

    .line 199
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget-boolean v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->isOES:Z

    iput-boolean v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->isOES:Z

    .line 200
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->texID:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->texID:I

    .line 201
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTextureRequest;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->rotation:I

    iput p0, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->rotation:I

    return-object v0
.end method
