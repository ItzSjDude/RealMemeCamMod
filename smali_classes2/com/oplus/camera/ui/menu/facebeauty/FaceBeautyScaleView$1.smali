.class Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;
.super Ljava/lang/Object;
.source "FaceBeautyScaleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;Z)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    const-string v1, "scaleHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)F

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->a:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;Z)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)F

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->c(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)V

    :goto_0
    return-void
.end method
