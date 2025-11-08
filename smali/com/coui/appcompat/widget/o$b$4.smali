.class Lcom/coui/appcompat/widget/o$b$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/o$b;->k()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/o$b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/o$b;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1031
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1032
    iget-object p1, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p1, p1, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    invoke-static {p1}, Lcom/coui/appcompat/widget/o;->d(Lcom/coui/appcompat/widget/o;)Lcom/coui/appcompat/widget/o$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1033
    iget-object p1, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p1, p1, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    invoke-static {p1}, Lcom/coui/appcompat/widget/o;->d(Lcom/coui/appcompat/widget/o;)Lcom/coui/appcompat/widget/o$a;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/widget/o$a;->b(Lcom/coui/appcompat/widget/o;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1039
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1040
    iget-object p1, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p1, p1, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    invoke-static {p1}, Lcom/coui/appcompat/widget/o;->d(Lcom/coui/appcompat/widget/o;)Lcom/coui/appcompat/widget/o$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1041
    iget-object p1, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p1, p1, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    invoke-static {p1}, Lcom/coui/appcompat/widget/o;->d(Lcom/coui/appcompat/widget/o;)Lcom/coui/appcompat/widget/o$a;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b$4;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/widget/o$a;->b(Lcom/coui/appcompat/widget/o;Z)V

    :cond_0
    return-void
.end method
