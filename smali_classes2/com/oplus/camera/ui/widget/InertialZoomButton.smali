.class public Lcom/oplus/camera/ui/widget/InertialZoomButton;
.super Lcom/oplus/camera/ui/RotateImageView;
.source "InertialZoomButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/InertialZoomButton$a;
    }
.end annotation


# instance fields
.field private m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Lcom/oplus/camera/ui/widget/InertialZoomButton$a;->c()V

    :cond_1
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    .line 60
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/oplus/camera/ui/widget/InertialZoomButton$a;->a()V

    .line 35
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/RotateImageView;->performClick()Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->n:Z

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Lcom/oplus/camera/ui/widget/InertialZoomButton$a;->b()V

    :cond_0
    return v0
.end method

.method public setOnInertialZoomButtonListener(Lcom/oplus/camera/ui/widget/InertialZoomButton$a;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertialZoomButton;->m:Lcom/oplus/camera/ui/widget/InertialZoomButton$a;

    return-void
.end method
