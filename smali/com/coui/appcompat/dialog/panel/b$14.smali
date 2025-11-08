.class Lcom/coui/appcompat/dialog/panel/b$14;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->k()V
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

    .line 596
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowInsetsAnimationController;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 612
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->m(Lcom/coui/appcompat/dialog/panel/b;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p2, :cond_0

    .line 614
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->n(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 616
    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->k(Lcom/coui/appcompat/dialog/panel/b;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    .line 613
    invoke-static {p1, p2, v0, p0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;IZLandroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 605
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 606
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$14;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->l(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p0

    return p0
.end method
