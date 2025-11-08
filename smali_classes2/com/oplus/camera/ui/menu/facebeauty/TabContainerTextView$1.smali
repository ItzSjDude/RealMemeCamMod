.class Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;
.super Ljava/lang/Object;
.source "TabContainerTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;Z)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    const-string v1, "scaleHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)F

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->a:Z

    if-eqz v0, :cond_0

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

    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)F

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->c(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)V

    :goto_0
    return-void
.end method
