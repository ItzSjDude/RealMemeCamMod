.class Lcom/oplus/camera/capmode/m$4;
.super Ljava/lang/Object;
.source "LongExposureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/m;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/m;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "LongExposureMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 432
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->e(Lcom/oplus/camera/capmode/m;)V

    .line 438
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    iget-object v0, v0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(IZ)V

    .line 440
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 441
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/m;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    const v3, 0x7f100314

    invoke-static {v1, v3, v2, v2, v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;IZII)V

    .line 446
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    .line 447
    invoke-static {v2}, Lcom/oplus/camera/capmode/m;->f(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result v2

    .line 446
    invoke-virtual {v1, v2}, Lcom/oplus/camera/longexposure/k;->c(I)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 448
    iget-object v2, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    iget-object v2, v2, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 450
    iget-object v2, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/o;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/ui/o;->a(J)V

    .line 451
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/o;->c()V

    .line 452
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/o;->e()V

    .line 454
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x21

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 455
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_2

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    const v3, 0x7f1005e5

    invoke-static {v1, v3, v2, v2, v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;IZII)V

    .line 459
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    iget-object v1, v1, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x1770

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 460
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ui/i;->b(J)V

    .line 461
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/i;->c()V

    .line 463
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x23

    goto :goto_1

    :cond_3
    const/16 v1, 0x1e

    .line 464
    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 467
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$4;->a:Lcom/oplus/camera/capmode/m;

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method
