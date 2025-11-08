.class Lcom/oplus/camera/ui/menu/i$3;
.super Ljava/lang/Object;
.source "RotationOptionItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/i;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/i;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i$3;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i$3;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/i;->c(Lcom/oplus/camera/ui/menu/i;F)F

    .line 299
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i$3;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->postInvalidate()V

    return-void
.end method
