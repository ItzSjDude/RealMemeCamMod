.class Lcom/oplus/camera/professional/h$a;
.super Landroid/widget/RelativeLayout;
.source "HSProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/professional/h;Landroid/content/Context;)V
    .locals 0

    .line 3777
    iput-object p1, p0, Lcom/oplus/camera/professional/h$a;->a:Lcom/oplus/camera/professional/h;

    .line 3778
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3775
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 3782
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h$a;->b:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3787
    iget-object v0, p0, Lcom/oplus/camera/professional/h$a;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aC(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/professional/h$a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/h$a;->a:Lcom/oplus/camera/professional/h;

    .line 3789
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aD(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/h$a;->a:Lcom/oplus/camera/professional/h;

    .line 3790
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aE(Lcom/oplus/camera/professional/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3801
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$a;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aF(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3802
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3803
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3804
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    .line 3808
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 3792
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h$a;->b:Z

    if-nez v0, :cond_3

    .line 3793
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3794
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3795
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
