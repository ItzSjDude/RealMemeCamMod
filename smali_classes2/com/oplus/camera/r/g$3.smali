.class Lcom/oplus/camera/r/g$3;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/g;->onMotionDetected()V
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

    .line 846
    iput-object p1, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 849
    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->j(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-virtual {v0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->k(Lcom/oplus/camera/r/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->l(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    const v2, 0x7f10020f

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 852
    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->m(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 853
    iget-object v0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->n(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/16 v3, 0xaf0

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 854
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v3, 0x3

    const-string v4, "button_color_inside_none"

    const-string v5, "button_shape_dial_still"

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 857
    iget-object v1, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {v1}, Lcom/oplus/camera/r/g;->o(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 858
    iget-object p0, p0, Lcom/oplus/camera/r/g$3;->a:Lcom/oplus/camera/r/g;

    invoke-static {p0}, Lcom/oplus/camera/r/g;->p(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/oplus/camera/capmode/a;->i(Z)V

    :cond_0
    return-void
.end method
