.class public Lcom/coui/appcompat/a/m;
.super Ljava/lang/Object;
.source "COUIPanelMultiWindowUtils.java"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/content/res/Configuration;)I
    .locals 2

    .line 72
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 79
    invoke-static {p0, p1}, Lcom/coui/appcompat/a/m;->b(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 56
    invoke-static {v0, p1}, Lcom/coui/appcompat/a/m;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0, p1}, Lcom/coui/appcompat/a/m;->b(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    .line 60
    :goto_0
    invoke-static {p0, p1}, Lcom/coui/appcompat/a/m;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 201
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 202
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 205
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 282
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 217
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->b(Landroid/content/Context;)I

    move-result v1

    .line 97
    invoke-static {p0}, Lcom/coui/appcompat/a/m;->d(Landroid/content/Context;)I

    move-result v2

    .line 98
    invoke-static {p0}, Lcom/coui/appcompat/a/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v3, v3

    const/high16 v4, 0x43f00000    # 480.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-nez v3, :cond_2

    .line 105
    invoke-static {p1}, Lcom/coui/appcompat/a/m;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/a/k;->c(Landroid/content/Context;)I

    move-result v0

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_4
    return v0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 290
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 291
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 293
    :goto_0
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    int-to-float v1, v1

    const/high16 v4, 0x43f00000    # 480.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_3

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 295
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$dimen;->coui_bottom_sheet_margin_bottom_if_need:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_4
    :goto_2
    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 237
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "window"

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 241
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 4

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/a/m;->a(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
