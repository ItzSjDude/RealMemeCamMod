.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;
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

    .line 323
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;I)I

    return-void
.end method
