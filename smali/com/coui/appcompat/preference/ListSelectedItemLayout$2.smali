.class Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;
.super Ljava/lang/Object;
.source "ListSelectedItemLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;->a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;->a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a(Lcom/coui/appcompat/preference/ListSelectedItemLayout;I)I

    .line 128
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;->a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-static {p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;->a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a(Lcom/coui/appcompat/preference/ListSelectedItemLayout;Z)Z

    .line 130
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;->a:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-static {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->c(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
