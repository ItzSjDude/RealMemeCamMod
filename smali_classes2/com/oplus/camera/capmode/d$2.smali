.class Lcom/oplus/camera/capmode/d$2;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->updateNightCaptureShutter()V
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

    .line 2821
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2824
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "CommonCapMode"

    const-string v0, "onFirstCaptureArrived, mbPaused, so return!"

    .line 2825
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2830
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 2831
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const-string v1, "button_color_ring_theme"

    .line 2832
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(Ljava/lang/String;)V

    .line 2833
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/p;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_4

    .line 2836
    iget-object v3, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v3, v3, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    long-to-int v1, v1

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2837
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    if-eq v1, v4, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 2844
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    .line 2845
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x3

    .line 2842
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2848
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2850
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/camera/capmode/d;->access$1502(Lcom/oplus/camera/capmode/d;Z)Z

    .line 2851
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->c(IZ)V

    .line 2853
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/p;->d()V

    .line 2854
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/p;->e()V

    goto :goto_3

    .line 2856
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    if-ne v1, v5, :cond_5

    const/4 v1, 0x4

    .line 2857
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_3

    .line 2859
    :cond_5
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2863
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$2;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method
