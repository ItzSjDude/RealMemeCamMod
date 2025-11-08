.class Lcom/oplus/camera/professional/u$4;
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
.field final synthetic a:Lcom/oplus/camera/professional/u$a;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/u$a;Landroid/view/View;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iput-object p2, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget-object p1, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    const-string v0, "translationY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget-object p1, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    const-string v0, "translationY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget-object p1, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    const-string v0, "translationY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->d:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/u$4;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/u$4;->a:Lcom/oplus/camera/professional/u$a;

    iget p0, p0, Lcom/oplus/camera/professional/u$a;->d:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method
