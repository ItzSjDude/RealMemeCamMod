.class public Lcom/oplus/camera/t/c$a;
.super Landroid/widget/RelativeLayout;
.source "StreetFixFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/t/c;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/t/c;Landroid/app/Activity;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    .line 604
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 601
    iput-boolean p1, p0, Lcom/oplus/camera/t/c$a;->b:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 613
    iget-boolean v0, p0, Lcom/oplus/camera/t/c$a;->b:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->a(Lcom/oplus/camera/t/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->b(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 625
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 626
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 630
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    iget-object v0, v0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->c(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->d(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/oplus/camera/t/c$a;->a:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->d(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/t/c$b;->b()V

    .line 639
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 614
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/t/c$a;->b:Z

    if-nez v0, :cond_4

    .line 615
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 616
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 617
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTouchState(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lcom/oplus/camera/t/c$a;->b:Z

    return-void
.end method
