.class Lcom/coui/appcompat/dialog/panel/f$2;
.super Ljava/lang/Object;
.source "COUIPanelImeAnimController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/f;
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

    .line 109
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;)Lcom/coui/appcompat/dialog/panel/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;)Lcom/coui/appcompat/dialog/panel/f$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/coui/appcompat/dialog/panel/f$a;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/f;->d(Lcom/coui/appcompat/dialog/panel/f;)V

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/f;->d(Lcom/coui/appcompat/dialog/panel/f;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f$2;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;Landroid/view/WindowInsetsAnimationController;)V

    return-void
.end method
