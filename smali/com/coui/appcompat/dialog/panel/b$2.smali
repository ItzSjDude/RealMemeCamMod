.class Lcom/coui/appcompat/dialog/panel/b$2;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->a(III)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;FII)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/b$2;->a:F

    iput p3, p0, Lcom/coui/appcompat/dialog/panel/b$2;->b:I

    iput p4, p0, Lcom/coui/appcompat/dialog/panel/b$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 920
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 922
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 923
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->A(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;F)F

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->f(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 927
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->l(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->a:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/b$2;->b:I

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/b$2;->c:I

    if-le v2, v3, :cond_1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 928
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->B(Lcom/coui/appcompat/dialog/panel/b;)V

    .line 929
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$2;->d:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0, v1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    :cond_1
    return-void
.end method
