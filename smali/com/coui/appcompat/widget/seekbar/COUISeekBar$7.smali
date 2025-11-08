.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->h()V
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

    .line 771
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const-string v1, "progress"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 775
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const-string v1, "radiusOut"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const-string v1, "thumbShadowRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;I)I

    .line 777
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 778
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    return-void
.end method
