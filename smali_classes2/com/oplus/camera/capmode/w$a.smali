.class public Lcom/oplus/camera/capmode/w$a;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/view/Window;

.field private f:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/w;Landroid/app/Activity;)V
    .locals 0

    .line 3489
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$a;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3490
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/w$a;->e:Landroid/view/Window;

    .line 3491
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$a;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/w$a;->f:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTargetBrightness, targetBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", MaxScreenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w$a;->a:Lcom/oplus/camera/capmode/w;

    iget-object v1, v1, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3496
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    .line 3495
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    iput p3, p0, Lcom/oplus/camera/capmode/w$a;->b:F

    .line 3499
    iput p2, p0, Lcom/oplus/camera/capmode/w$a;->c:F

    .line 3500
    iput p1, p0, Lcom/oplus/camera/capmode/w$a;->d:F

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 3505
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$a;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3507
    iget v1, p0, Lcom/oplus/camera/capmode/w$a;->c:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/oplus/camera/capmode/w$a;->b:F

    add-float/2addr v1, p1

    .line 3509
    iget p1, p0, Lcom/oplus/camera/capmode/w$a;->c:F

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    div-float v0, p1, v2

    .line 3513
    :cond_0
    iget p1, p0, Lcom/oplus/camera/capmode/w$a;->d:F

    sub-float/2addr p1, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 3514
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$a;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->V()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3515
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$a;->e:Landroid/view/Window;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$a;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3516
    iput v1, p0, Lcom/oplus/camera/capmode/w$a;->d:F

    .line 3517
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$a;->a:Lcom/oplus/camera/capmode/w;

    iget p0, p0, Lcom/oplus/camera/capmode/w$a;->d:F

    iput p0, p1, Lcom/oplus/camera/capmode/w;->mBrightness:F

    :cond_1
    return-void
.end method
