.class public Lcom/oplus/camera/professional/v$a;
.super Landroid/widget/RelativeLayout;
.source "ProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/professional/v;Landroid/content/Context;)V
    .locals 0

    .line 3999
    iput-object p1, p0, Lcom/oplus/camera/professional/v$a;->a:Lcom/oplus/camera/professional/v;

    .line 4000
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3997
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v$a;->b:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4009
    iget-object v0, p0, Lcom/oplus/camera/professional/v$a;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aK(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v$a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/v$a;->a:Lcom/oplus/camera/professional/v;

    .line 4011
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aL(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/v$a;->a:Lcom/oplus/camera/professional/v;

    .line 4012
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aM(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4023
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$a;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aN(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4024
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 4025
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4026
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    .line 4030
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 4014
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v$a;->b:Z

    if-nez v0, :cond_3

    .line 4015
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 4016
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4017
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setTouchState(Z)V
    .locals 0

    .line 4004
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v$a;->b:Z

    return-void
.end method
