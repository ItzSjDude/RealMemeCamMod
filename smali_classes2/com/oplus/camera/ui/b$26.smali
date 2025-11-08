.class Lcom/oplus/camera/ui/b$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/oplus/camera/ui/b$26;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 748
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 738
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 739
    iget-object p1, p0, Lcom/oplus/camera/ui/b$26;->a:Lcom/oplus/camera/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 740
    iget-object p0, p0, Lcom/oplus/camera/ui/b$26;->a:Lcom/oplus/camera/ui/b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/camera/ui/b;->K:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 741
    iput p1, p0, Lcom/oplus/camera/ui/b;->J:F

    .line 742
    iput p1, p0, Lcom/oplus/camera/ui/b;->L:F

    .line 743
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->postInvalidate()V

    return-void
.end method
