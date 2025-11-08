.class Lcom/coui/appcompat/widget/e$4;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/e;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/e;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/coui/appcompat/widget/e$4;->a:Lcom/coui/appcompat/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/widget/e$4;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {v0}, Lcom/coui/appcompat/widget/e;->c(Lcom/coui/appcompat/widget/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/coui/appcompat/widget/e$4;->a:Lcom/coui/appcompat/widget/e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/e;->e(Lcom/coui/appcompat/widget/e;F)F

    :cond_0
    return-void
.end method
