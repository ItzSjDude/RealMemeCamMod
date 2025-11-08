.class Lcom/oplus/camera/r/g$4;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/g;->onFrameInterpolationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->q(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->r(Lcom/oplus/camera/r/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlowVideoMode"

    const-string v1, "onFrameInterpolationStarted, onVideoShutterButtonClick"

    .line 881
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-virtual {v0}, Lcom/oplus/camera/r/g;->onVideoShutterButtonClick()V

    .line 884
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x4

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_dial_still"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-static {v1}, Lcom/oplus/camera/r/g;->s(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 888
    iget-object p0, p0, Lcom/oplus/camera/r/g$4;->a:Lcom/oplus/camera/r/g;

    invoke-static {p0}, Lcom/oplus/camera/r/g;->t(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f100210

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method
