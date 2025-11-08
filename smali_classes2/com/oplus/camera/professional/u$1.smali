.class Lcom/oplus/camera/professional/u$1;
.super Ljava/lang/Object;
.source "ProfessionalAnimUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/u;->a(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(FFLandroid/view/View;)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/oplus/camera/professional/u$1;->a:F

    iput p2, p0, Lcom/oplus/camera/professional/u$1;->b:F

    iput-object p3, p0, Lcom/oplus/camera/professional/u$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 148
    iget v0, p0, Lcom/oplus/camera/professional/u$1;->a:F

    iget v1, p0, Lcom/oplus/camera/professional/u$1;->b:F

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/professional/u$1;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/oplus/camera/professional/u$1;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method
