.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessFrameRequest"
.end annotation


# instance fields
.field public humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;-><init>()V

    .line 144
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    return-void
.end method


# virtual methods
.method public mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;
    .locals 3

    .line 151
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;->mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    move-result-object v1

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->cameraType:Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    goto :goto_0

    :cond_0
    const-string v1, "HumanVideoApiHelper"

    const-string v2, "mappingSDKObject, has not set cameraType"

    .line 156
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget-object v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->data:[B

    iput-object v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->data:[B

    .line 160
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->height:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->height:I

    .line 161
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->width:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->width:I

    .line 162
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->rotation:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->rotation:I

    .line 163
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameRequest;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameRequest;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->type:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    move-result-object p0

    iput-object p0, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->type:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    return-object v0
.end method
