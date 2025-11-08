.class Lcom/coui/appcompat/widget/o$b$1;
.super Ljava/lang/Object;
.source "COUISpinner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/o$b;->k()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/coui/appcompat/widget/o$b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/o$b;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/coui/appcompat/widget/o$b$1;->b:Lcom/coui/appcompat/widget/o$b;

    iput-object p2, p0, Lcom/coui/appcompat/widget/o$b$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
