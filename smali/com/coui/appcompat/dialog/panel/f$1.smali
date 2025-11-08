.class Lcom/coui/appcompat/dialog/panel/f$1;
.super Ljava/lang/Object;
.source "COUIPanelImeAnimController.java"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


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

    .line 78
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/f$1;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .locals 7

    .line 81
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f$1;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;)Lcom/coui/appcompat/dialog/panel/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f$1;->a:Lcom/coui/appcompat/dialog/panel/f;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Lcom/coui/appcompat/dialog/panel/f;)Lcom/coui/appcompat/dialog/panel/f$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/coui/appcompat/dialog/panel/f$a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 85
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    const-wide/16 v2, -0x1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/f$1;->a:Lcom/coui/appcompat/dialog/panel/f;

    .line 88
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/f;->b(Lcom/coui/appcompat/dialog/panel/f;)Landroid/os/CancellationSignal;

    move-result-object v5

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/f$1;->a:Lcom/coui/appcompat/dialog/panel/f;

    .line 89
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/f;->c(Lcom/coui/appcompat/dialog/panel/f;)Landroid/view/WindowInsetsAnimationControlListener;

    move-result-object v6

    move-object v0, p1

    .line 84
    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 92
    :cond_2
    invoke-interface {p1, p0}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_3
    return-void
.end method
