.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(I)V
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

    .line 553
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 569
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 572
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 561
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 564
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a()V

    return-void
.end method
