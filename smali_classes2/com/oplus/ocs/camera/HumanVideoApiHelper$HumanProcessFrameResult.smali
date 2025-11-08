.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessFrameResult"
.end annotation


# instance fields
.field public humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;-><init>()V

    .line 53
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    return-void
.end method


# virtual methods
.method mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessResult;
    .locals 3

    .line 60
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;-><init>()V

    .line 61
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget-object v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->type:Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;

    invoke-virtual {v2}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$ImageType;->mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    move-result-object v2

    iput-object v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->type:Lcom/anc/humanvideo/HumanVideoApi$ImageType;

    .line 62
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->rotation:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->rotation:I

    .line 63
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->width:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->width:I

    .line 64
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->height:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->height:I

    .line 65
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessFrameResult;->humanFrame:Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessFrameResult;->humanFrame:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanFrame;->data:[B

    iput-object p0, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanFrame;->data:[B

    return-object v0
.end method
