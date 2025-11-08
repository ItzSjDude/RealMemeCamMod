.class Landroidx/appcompat/app/i$c;
.super Landroidx/appcompat/view/i;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/i;Landroid/view/Window$Callback;)V
    .locals 0

    .line 516
    iput-object p1, p0, Landroidx/appcompat/app/i$c;->a:Landroidx/appcompat/app/i;

    .line 517
    invoke-direct {p0, p2}, Landroidx/appcompat/view/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 536
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/i$c;->a:Landroidx/appcompat/app/i;

    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->b()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 538
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 522
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget-object p2, p0, Landroidx/appcompat/app/i$c;->a:Landroidx/appcompat/app/i;

    iget-boolean p2, p2, Landroidx/appcompat/app/i;->b:Z

    if-nez p2, :cond_0

    .line 524
    iget-object p2, p0, Landroidx/appcompat/app/i$c;->a:Landroidx/appcompat/app/i;

    iget-object p2, p2, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p2}, Landroidx/appcompat/widget/z;->m()V

    .line 525
    iget-object p0, p0, Landroidx/appcompat/app/i$c;->a:Landroidx/appcompat/app/i;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/app/i;->b:Z

    :cond_0
    return p1
.end method
