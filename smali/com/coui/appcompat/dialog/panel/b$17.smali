.class Lcom/coui/appcompat/dialog/panel/b$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 800
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 801
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->x(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->y(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 804
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$17$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$17$1;-><init>(Lcom/coui/appcompat/dialog/panel/b$17;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 810
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 812
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->z(Lcom/coui/appcompat/dialog/panel/b;)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$17;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->z(Lcom/coui/appcompat/dialog/panel/b;)V

    :goto_0
    return-void
.end method
