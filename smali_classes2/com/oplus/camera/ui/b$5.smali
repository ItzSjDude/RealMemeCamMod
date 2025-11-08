.class Lcom/oplus/camera/ui/b$5;
.super Ljava/lang/Object;
.source "CameraSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->i()V
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

    .line 492
    iput-object p1, p0, Lcom/oplus/camera/ui/b$5;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/ui/b$5;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/oplus/camera/ui/b;->C:F

    .line 497
    iget-object p1, p0, Lcom/oplus/camera/ui/b$5;->a:Lcom/oplus/camera/ui/b;

    iget-object p1, p1, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/oplus/camera/ui/b$5;->a:Lcom/oplus/camera/ui/b;

    iget-object p1, p1, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    iget-object p0, p0, Lcom/oplus/camera/ui/b$5;->a:Lcom/oplus/camera/ui/b;

    iget p0, p0, Lcom/oplus/camera/ui/b;->C:F

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/b$a;->c(F)V

    :cond_0
    return-void
.end method
