.class Lcom/oplus/camera/ui/b/a$3;
.super Ljava/lang/Object;
.source "CameraSuperTextUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/ThumbImageView;

.field final synthetic b:Lcom/oplus/camera/ui/b/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b/a;Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    iput-object p2, p0, Lcom/oplus/camera/ui/b/a$3;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 358
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleX(F)V

    .line 359
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleY(F)V

    .line 360
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setAlpha(F)V

    .line 362
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    iget-object v0, p0, Lcom/oplus/camera/ui/b/a$3;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->d(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/control/e;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    invoke-static {v2}, Lcom/oplus/camera/ui/b/a;->e(Lcom/oplus/camera/ui/b/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/b/a;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V

    .line 363
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/b/a;Z)Z

    .line 364
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/b/a;->f(Lcom/oplus/camera/ui/b/a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a$3;->b:Lcom/oplus/camera/ui/b/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/b/a;Z)Z

    return-void
.end method
