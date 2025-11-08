.class Lcom/coui/appcompat/dialog/panel/d$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIPanelAdjustResizeHelper.java"


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

.field final synthetic b:F

.field final synthetic c:Lcom/coui/appcompat/dialog/panel/d;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/d;Lcom/coui/appcompat/widget/l;F)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$3;->c:Lcom/coui/appcompat/dialog/panel/d;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/d$3;->a:Lcom/coui/appcompat/widget/l;

    iput p3, p0, Lcom/coui/appcompat/dialog/panel/d$3;->b:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$3;->a:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d$3;->b:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setTranslationY(F)V

    .line 375
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$3;->a:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d$3;->b:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
