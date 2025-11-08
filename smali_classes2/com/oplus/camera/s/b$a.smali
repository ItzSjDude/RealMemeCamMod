.class Lcom/oplus/camera/s/b$a;
.super Ljava/lang/Object;
.source "StarVideoMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/s/b;

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/view/Window;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/s/b;Landroid/app/Activity;I)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/oplus/camera/s/b$a;->a:Lcom/oplus/camera/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/s/b$a;->e:Landroid/view/Window;

    .line 789
    iget-object p1, p0, Lcom/oplus/camera/s/b$a;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/s/b$a;->f:Landroid/view/WindowManager$LayoutParams;

    .line 790
    iput p3, p0, Lcom/oplus/camera/s/b$a;->g:I

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTargetBrightness, targetBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iput p3, p0, Lcom/oplus/camera/s/b$a;->b:F

    .line 798
    iput p2, p0, Lcom/oplus/camera/s/b$a;->c:F

    .line 799
    iput p1, p0, Lcom/oplus/camera/s/b$a;->d:F

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 805
    iget v0, p0, Lcom/oplus/camera/s/b$a;->c:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/oplus/camera/s/b$a;->b:F

    add-float/2addr v0, p1

    .line 807
    iget p1, p0, Lcom/oplus/camera/s/b$a;->c:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v2, v1, p1

    if-gtz v2, :cond_0

    div-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 811
    :goto_0
    iget v1, p0, Lcom/oplus/camera/s/b$a;->d:F

    sub-float/2addr v1, v0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    .line 812
    iget-object p1, p0, Lcom/oplus/camera/s/b$a;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/s/b$a;->g:I

    int-to-float v1, v1

    div-float v1, v0, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 813
    iget-object v1, p0, Lcom/oplus/camera/s/b$a;->e:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 814
    iput v0, p0, Lcom/oplus/camera/s/b$a;->d:F

    :cond_1
    return-void
.end method
