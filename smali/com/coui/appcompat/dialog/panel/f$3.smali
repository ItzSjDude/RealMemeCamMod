.class Lcom/coui/appcompat/dialog/panel/f$3;
.super Ljava/lang/Object;
.source "COUIPanelImeAnimController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/f;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/f;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/f;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/f$3;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 274
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$3;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->b(I)I

    return-void
.end method
