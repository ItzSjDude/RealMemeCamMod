.class Lcom/oplus/camera/capmode/d$16;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onShutterCallback(ZZ)V
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

    .line 2634
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$16;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2637
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$16;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    if-nez v0, :cond_0

    const-string p0, "CommonCapMode"

    const-string v0, "pictureTakenCallback is already received, so return"

    .line 2638
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2643
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$16;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2644
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v2, "button_color_inside_none"

    .line 2645
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2647
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$16;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_1
    return-void
.end method
