.class public Lcom/oplus/camera/professional/r$a;
.super Landroid/widget/RelativeLayout;
.source "ProMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/professional/r;Landroid/content/Context;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/oplus/camera/professional/r$a;->a:Lcom/oplus/camera/professional/r;

    .line 695
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 692
    iput-boolean p1, p0, Lcom/oplus/camera/professional/r$a;->b:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 704
    iget-boolean v0, p0, Lcom/oplus/camera/professional/r$a;->b:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/r$a;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/r$a;->a:Lcom/oplus/camera/professional/r;

    .line 706
    invoke-static {v0}, Lcom/oplus/camera/professional/r;->b(Lcom/oplus/camera/professional/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/r$a;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 719
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 720
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 724
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 708
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/professional/r$a;->b:Z

    if-nez v0, :cond_3

    .line 709
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 710
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 711
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2
.end method

.method public setTouchState(Z)V
    .locals 0

    .line 699
    iput-boolean p1, p0, Lcom/oplus/camera/professional/r$a;->b:Z

    return-void
.end method
