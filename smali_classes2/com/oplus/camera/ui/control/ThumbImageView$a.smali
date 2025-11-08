.class Lcom/oplus/camera/ui/control/ThumbImageView$a;
.super Lcom/oplus/camera/b/a;
.source "ThumbImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/ThumbImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/ThumbImageView;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ThumbImageView$1;)V
    .locals 0

    .line 501
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView$a;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 517
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "ThumbImageView"

    const-string v0, "ThumbReboundListener, onAnimationCancel, endNewThumbAnimation"

    .line 519
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;I)I

    .line 523
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->c(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->c(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 504
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "ThumbImageView"

    const-string v0, "ThumbReboundListener, onAnimationEnd, endNewThumbAnimation"

    .line 506
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;I)I

    .line 510
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->c(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView$a;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->c(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
