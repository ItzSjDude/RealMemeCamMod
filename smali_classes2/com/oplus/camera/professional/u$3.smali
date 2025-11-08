.class Lcom/oplus/camera/professional/u$3;
.super Ljava/lang/Object;
.source "ProfessionalAnimUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:Lcom/oplus/camera/professional/u$a;


# direct methods
.method constructor <init>(Landroid/view/View;FLcom/oplus/camera/professional/u$a;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    iput p2, p0, Lcom/oplus/camera/professional/u$3;->b:F

    iput-object p3, p0, Lcom/oplus/camera/professional/u$3;->c:Lcom/oplus/camera/professional/u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/professional/u$3;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$3;->c:Lcom/oplus/camera/professional/u$a;

    iget-boolean p0, p0, Lcom/oplus/camera/professional/u$a;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/professional/u$3;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$3;->c:Lcom/oplus/camera/professional/u$a;

    iget-boolean p0, p0, Lcom/oplus/camera/professional/u$a;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/professional/u$3;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
