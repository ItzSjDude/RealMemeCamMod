.class Lcom/oplus/camera/ui/preview/g$33;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/IntelligentDragView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 533
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/ui/preview/g$b;->m(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/g$b;->a(IIJ)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 545
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->l(II)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 555
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->m(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$33;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/ui/preview/g$b;->f(II)V

    :cond_0
    return-void
.end method
