.class Lcom/oplus/camera/ui/menu/shareedit/a$7;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$7;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1640
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1641
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$7;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->Q(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleX(F)V

    .line 1642
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$7;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->Q(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleY(F)V

    .line 1643
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$7;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->R(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleX(F)V

    .line 1644
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$7;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->R(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setScaleY(F)V

    return-void
.end method
