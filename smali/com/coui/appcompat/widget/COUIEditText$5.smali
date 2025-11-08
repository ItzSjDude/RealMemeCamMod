.class Lcom/coui/appcompat/widget/COUIEditText$5;
.super Ljava/lang/Object;
.source "COUIEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIEditText;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$5;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1380
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText$5;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIEditText;->b(Lcom/coui/appcompat/widget/COUIEditText;)Lcom/coui/appcompat/widget/d$a;

    move-result-object p0

    .line 1381
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 1380
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/d$a;->b(F)V

    return-void
.end method
