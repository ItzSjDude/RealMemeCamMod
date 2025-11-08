.class Lcom/oplus/camera/util/b$4;
.super Ljava/lang/Object;
.source "AnimUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/b;->a(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;ILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/oplus/camera/util/b$4;->a:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/util/b$4;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 250
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/oplus/camera/util/b$4;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 243
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/util/b$4;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 257
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/util/b$4;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 236
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
