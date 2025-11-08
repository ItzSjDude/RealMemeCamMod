.class Lcom/oplus/camera/ag$12;
.super Landroid/os/Handler;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;Landroid/os/Looper;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x19

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    .line 545
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ag$12;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->a(F)V

    goto/16 :goto_3

    .line 540
    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ag$12;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    iget-object p0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    const/high16 p1, -0x40000000    # -2.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->a(F)V

    goto/16 :goto_3

    .line 501
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v3, :cond_3

    .line 502
    invoke-virtual {p0, v3, v1, v2}, Lcom/oplus/camera/ag$12;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->o(Lcom/oplus/camera/ag;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;F)F

    move-result v0

    .line 507
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    .line 508
    invoke-static {v1}, Lcom/oplus/camera/ag;->p(Lcom/oplus/camera/ag;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    .line 509
    invoke-static {v1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v1

    cmpl-float v1, v0, v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/high16 v2, 0x41200000    # 10.0f

    if-lez v1, :cond_4

    mul-float/2addr v0, v2

    float-to-double v0, v0

    .line 512
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    div-double/2addr v0, v4

    double-to-float v0, v0

    goto :goto_1

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    mul-float/2addr v0, v2

    float-to-double v0, v0

    .line 514
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 518
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2, v3}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FFZZ)V

    .line 519
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 521
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->p(Lcom/oplus/camera/ag;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 522
    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 523
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 526
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->s(Lcom/oplus/camera/ag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 528
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 529
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->s(Lcom/oplus/camera/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/ai;->j(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    goto :goto_2

    .line 532
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    .line 536
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/ag$12;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v2}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;Z)Z

    :goto_3
    return-void
.end method
