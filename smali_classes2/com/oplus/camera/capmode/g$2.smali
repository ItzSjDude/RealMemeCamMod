.class Lcom/oplus/camera/capmode/g$2;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/g;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {v0}, Lcom/oplus/camera/capmode/g;->k(Lcom/oplus/camera/capmode/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "assets:/meicam.lic"

    invoke-static {v0, v2, v1}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    .line 1122
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/g;->c(Lcom/oplus/camera/capmode/g;Z)Z

    .line 1124
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1125
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$2;->a:Lcom/oplus/camera/capmode/g;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aP()V

    :cond_0
    return-void
.end method
