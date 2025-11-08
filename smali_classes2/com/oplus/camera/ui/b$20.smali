.class Lcom/oplus/camera/ui/b$20;
.super Ljava/lang/Object;
.source "CameraSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 681
    iput-object p1, p0, Lcom/oplus/camera/ui/b$20;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/ui/b$20;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/oplus/camera/ui/b;->H:F

    .line 686
    iget-object p0, p0, Lcom/oplus/camera/ui/b$20;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->postInvalidate()V

    return-void
.end method
