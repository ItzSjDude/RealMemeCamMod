.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoBokehParams;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoBokehParams"
.end annotation


# instance fields
.field public blurIntensity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;-><init>()V

    return-void
.end method


# virtual methods
.method public mappingSDK()Lcom/anc/humanvideo/HumanVideoApi$HumanVideoParams;
    .locals 1

    .line 126
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoBokehParams;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoBokehParams;-><init>()V

    .line 127
    iget p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoBokehParams;->blurIntensity:F

    iput p0, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoBokehParams;->blurIntensity:F

    return-object v0
.end method
