.class Lcom/oplus/camera/n/a$4;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/n/a;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 949
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->e(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->f(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    .line 951
    invoke-static {v0}, Lcom/oplus/camera/n/a;->g(Lcom/oplus/camera/n/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait_streamer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->h(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    const v2, 0x7f1001d8

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-virtual {v0}, Lcom/oplus/camera/n/a;->onUpdateCameraSettingMenu()V

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    const-string v1, "pref_dual_camera"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->c(Lcom/oplus/camera/n/a;Z)Z

    .line 959
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->i(Lcom/oplus/camera/n/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object p0, p0, Lcom/oplus/camera/n/a$4;->a:Lcom/oplus/camera/n/a;

    invoke-static {p0}, Lcom/oplus/camera/n/a;->i(Lcom/oplus/camera/n/a;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
