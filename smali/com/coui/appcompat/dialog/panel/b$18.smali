.class Lcom/coui/appcompat/dialog/panel/b$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->p()V
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

    .line 829
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$18;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$18;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 839
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 844
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$18;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 845
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$18;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->z(Lcom/coui/appcompat/dialog/panel/b;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$18;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 833
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
