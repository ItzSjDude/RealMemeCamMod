.class final Landroidx/appcompat/app/i$a;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    .line 554
    iput-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/h;Z)V
    .locals 1

    .line 568
    iget-boolean p2, p0, Landroidx/appcompat/app/i$a;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 572
    iput-boolean p2, p0, Landroidx/appcompat/app/i$a;->b:Z

    .line 573
    iget-object p2, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p2, p2, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p2}, Landroidx/appcompat/widget/z;->n()V

    .line 574
    iget-object p2, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p2, p2, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    .line 575
    iget-object p2, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p2, p2, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 577
    iput-boolean p1, p0, Landroidx/appcompat/app/i$a;->b:Z

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/h;)Z
    .locals 1

    .line 559
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 560
    iget-object p0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p0, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
