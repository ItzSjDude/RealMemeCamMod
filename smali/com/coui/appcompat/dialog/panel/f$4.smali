.class Lcom/coui/appcompat/dialog/panel/f$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIPanelImeAnimController.java"


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

    .line 277
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/f$4;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 287
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$4;->a:Lcom/coui/appcompat/dialog/panel/f;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/f$4;->a:Lcom/coui/appcompat/dialog/panel/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;Z)Z

    .line 293
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$4;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 280
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 281
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$4;->a:Lcom/coui/appcompat/dialog/panel/f;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;Z)Z

    return-void
.end method
