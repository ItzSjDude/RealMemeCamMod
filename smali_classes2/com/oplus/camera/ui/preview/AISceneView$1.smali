.class Lcom/oplus/camera/ui/preview/AISceneView$1;
.super Ljava/lang/Object;
.source "AISceneView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/AISceneView;->a(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/AISceneView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/AISceneView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AISceneView$1;->a:Lcom/oplus/camera/ui/preview/AISceneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView$1;->a:Lcom/oplus/camera/ui/preview/AISceneView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/AISceneView;->a(Lcom/oplus/camera/ui/preview/AISceneView;I)I

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AISceneView$1;->a:Lcom/oplus/camera/ui/preview/AISceneView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->invalidate()V

    return-void
.end method
