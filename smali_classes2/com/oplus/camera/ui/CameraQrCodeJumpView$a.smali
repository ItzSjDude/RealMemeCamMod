.class Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;
.super Landroid/view/animation/Animation;
.source "CameraQrCodeJumpView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/CameraQrCodeJumpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

.field private b:F

.field private c:F

.field private d:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    .line 279
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 274
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    const/4 p1, 0x0

    .line 275
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->c:F

    const/4 p1, 0x0

    .line 276
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->d:I

    .line 280
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(II)V
    .locals 2

    int-to-long v0, p1

    .line 323
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->setStartOffset(J)V

    int-to-long p1, p2

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScreenAnimation, animationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v0, 0x12c

    .line 304
    invoke-direct {p0, v3, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a(II)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {v4, v3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Z)Z

    const/16 v4, 0xa0

    .line 297
    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a(II)V

    .line 298
    iget-object v3, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01002d

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->setInterpolator(Landroid/content/Context;I)V

    .line 299
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->c:F

    .line 300
    iput v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    goto :goto_0

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {v4, v3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Z)Z

    const/16 v3, 0x50

    const/16 v4, 0x14a

    .line 289
    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a(II)V

    .line 290
    iget-object v3, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01009f

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->setInterpolator(Landroid/content/Context;I)V

    .line 291
    iput v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->c:F

    .line 292
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    .line 308
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->d:I

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Z)Z

    .line 313
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 314
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->clearAnimation()V

    .line 317
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 329
    iget-object p2, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 333
    :cond_0
    iget p2, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->c:F

    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd(), mAnimationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->d:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setVisibility(I)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->b:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 363
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart(), mbActivityPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Z)Z

    .line 370
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->c:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    return-void
.end method
