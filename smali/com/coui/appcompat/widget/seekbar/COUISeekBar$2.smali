.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 299
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 301
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v2

    const v3, 0x3fdc6a7f    # 1.722f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 302
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    return-void
.end method
