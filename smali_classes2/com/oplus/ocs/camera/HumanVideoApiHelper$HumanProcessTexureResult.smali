.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTexureResult"
.end annotation


# instance fields
.field public humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;-><init>()V

    .line 72
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    return-void
.end method


# virtual methods
.method mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessResult;
    .locals 3

    .line 79
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;-><init>()V

    .line 80
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->rotation:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->rotation:I

    .line 81
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->texID:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->texID:I

    .line 82
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget-boolean v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->isOES:Z

    iput-boolean v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->isOES:Z

    .line 83
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object v2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v2, v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->width:I

    iput v2, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->width:I

    .line 84
    iget-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessTexureResult;->humanTexture:Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->height:I

    iput p0, v1, Lcom/anc/humanvideo/HumanVideoApi$HumanTexture;->height:I

    return-object v0
.end method
