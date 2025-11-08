.class Lcom/coui/appcompat/dialog/panel/d$4;
.super Ljava/lang/Object;
.source "COUIPanelAdjustResizeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/d;->a(Lcom/coui/appcompat/widget/l;FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/l;

.field final synthetic b:Lcom/coui/appcompat/dialog/panel/d;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/d;Lcom/coui/appcompat/widget/l;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$4;->b:Lcom/coui/appcompat/dialog/panel/d;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/d$4;->a:Lcom/coui/appcompat/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d$4;->a:Lcom/coui/appcompat/widget/l;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 383
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d$4;->a:Lcom/coui/appcompat/widget/l;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setTranslationY(F)V

    .line 384
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/d$4;->a:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
