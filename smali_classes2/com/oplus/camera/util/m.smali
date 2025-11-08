.class public Lcom/oplus/camera/util/m;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/m;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/camera/util/m;->a(Landroid/view/Window;Z)V

    return-void
.end method

.method private static a(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x4000000

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private static a(Landroid/view/Window;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/util/m;->a(Landroid/view/Window;)V

    .line 52
    invoke-static {p0, p1}, Lcom/oplus/camera/util/m;->c(Landroid/view/Window;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/m;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/camera/util/m;->b(Landroid/view/Window;Z)V

    return-void
.end method

.method private static b(Landroid/view/Window;)V
    .locals 2

    const/high16 v0, 0x4000000

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private static b(Landroid/view/Window;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/util/m;->b(Landroid/view/Window;)V

    .line 69
    invoke-static {p0, p1}, Lcom/oplus/camera/util/m;->c(Landroid/view/Window;Z)V

    return-void
.end method

.method private static c(Landroid/view/Window;Z)V
    .locals 3

    const/high16 v0, -0x80000000

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 129
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v2

    if-nez p1, :cond_0

    or-int/lit8 p1, v2, 0x8

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v2, -0x9

    .line 141
    :goto_0
    invoke-interface {v1, p1, p1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1

    .line 142
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    if-nez p1, :cond_2

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v0, -0x2001

    goto :goto_1

    .line 148
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    if-nez p1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_4
    and-int/lit8 v0, v0, -0x11

    .line 156
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
