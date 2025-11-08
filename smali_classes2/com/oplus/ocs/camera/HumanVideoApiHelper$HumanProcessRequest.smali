.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;
.super Ljava/lang/Object;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessRequest"
.end annotation


# instance fields
.field public cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;
    .locals 1

    .line 225
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;-><init>()V

    .line 226
    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;->cameraType:Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$CameraType;->mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    move-result-object p0

    iput-object p0, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessRequest;->cameraType:Lcom/anc/humanvideo/HumanVideoApi$CameraType;

    return-object v0
.end method
