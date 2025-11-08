.class Lcom/oplus/camera/capmode/d$5;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->displayFixedUpModeHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 4006
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 4009
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.high.definition.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.super.resolution.picturesize"

    .line 4011
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4014
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0604ff

    const v3, 0x7f0805e9

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->getDisplayHighPictureSize()D

    move-result-wide v4

    .line 4017
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getHighPictureSizeHint()I

    move-result p0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 4019
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v1

    .line 4017
    invoke-interface {v0, p0, v3, v2, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 4021
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$5;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100369

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v3, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
