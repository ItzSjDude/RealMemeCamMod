.class Lcom/coui/appcompat/dialog/panel/b$3;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->f(Z)Landroid/animation/ValueAnimator;
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

    .line 947
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$3;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 950
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 951
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$3;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->C(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$3;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;F)F

    .line 953
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$3;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->C(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$3;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->D(Lcom/coui/appcompat/dialog/panel/b;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
