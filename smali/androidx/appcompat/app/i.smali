.class Landroidx/appcompat/app/i;
.super Landroidx/appcompat/app/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/i$b;,
        Landroidx/appcompat/app/i$a;,
        Landroidx/appcompat/app/i$c;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/z;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/i;->f:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroidx/appcompat/app/i$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/i$1;-><init>(Landroidx/appcompat/app/i;)V

    iput-object v0, p0, Landroidx/appcompat/app/i;->g:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Landroidx/appcompat/app/i$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/i$2;-><init>(Landroidx/appcompat/app/i;)V

    iput-object v0, p0, Landroidx/appcompat/app/i;->h:Landroidx/appcompat/widget/Toolbar$c;

    .line 69
    new-instance v0, Landroidx/appcompat/widget/as;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/as;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    .line 70
    new-instance v0, Landroidx/appcompat/app/i$c;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/app/i$c;-><init>(Landroidx/appcompat/app/i;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    .line 71
    iget-object p3, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    iget-object v0, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/z;->a(Landroid/view/Window$Callback;)V

    .line 72
    iget-object p3, p0, Landroidx/appcompat/app/i;->h:Landroidx/appcompat/widget/Toolbar$c;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    .line 73
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0, p2}, Landroidx/appcompat/widget/z;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j()Landroid/view/Menu;
    .locals 3

    .line 543
    iget-boolean v0, p0, Landroidx/appcompat/app/i;->d:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    new-instance v1, Landroidx/appcompat/app/i$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/i$a;-><init>(Landroidx/appcompat/app/i;)V

    new-instance v2, Landroidx/appcompat/app/i$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/i$b;-><init>(Landroidx/appcompat/app/i;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/z;->a(Landroidx/appcompat/view/menu/n$a;Landroidx/appcompat/view/menu/h$a;)V

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Landroidx/appcompat/app/i;->d:Z

    .line 548
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->q()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 323
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->o()I

    move-result p0

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 136
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->a()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/h/v;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 259
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->o()I

    move-result v0

    .line 260
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/z;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 228
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/z;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/i;->a(II)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 476
    invoke-direct {p0}, Landroidx/appcompat/app/i;->j()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 478
    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 481
    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 468
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Z

    :cond_0
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 0

    .line 423
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->k()Z

    move-result p0

    return p0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 0

    .line 428
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->l()Z

    move-result p0

    return p0
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 2

    .line 433
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/i;->g:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/h/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public f(Z)V
    .locals 3

    .line 504
    iget-boolean v0, p0, Landroidx/appcompat/app/i;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 507
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/i;->e:Z

    .line 509
    iget-object v0, p0, Landroidx/appcompat/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 511
    iget-object v2, p0, Landroidx/appcompat/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 440
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p0}, Landroidx/appcompat/widget/z;->d()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method g()V
    .locals 1

    .line 489
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Landroid/view/Window$Callback;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    return-object p0
.end method

.method i()V
    .locals 5

    .line 448
    invoke-direct {p0}, Landroidx/appcompat/app/i;->j()Landroid/view/Menu;

    move-result-object v0

    .line 449
    instance-of v1, v0, Landroidx/appcompat/view/menu/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/h;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 454
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 455
    iget-object v3, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/i;->c:Landroid/view/Window$Callback;

    .line 456
    invoke-interface {p0, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 457
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 461
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 463
    :cond_5
    throw p0
.end method
