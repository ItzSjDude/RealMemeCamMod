.class public Landroidx/core/h/ad;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/WindowInsets;)Landroidx/core/h/ad;
    .locals 1

    .line 616
    new-instance v0, Landroidx/core/h/ad;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/h/ad;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 91
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(IIII)Landroidx/core/h/ad;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 260
    new-instance v0, Landroidx/core/h/ad;

    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    .line 261
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/h/ad;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()I
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 109
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 127
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()I
    .locals 2

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 145
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 163
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 584
    :cond_0
    instance-of v0, p1, Landroidx/core/h/ad;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 587
    :cond_1
    check-cast p1, Landroidx/core/h/ad;

    .line 588
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/core/g/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 2

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 199
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()Landroidx/core/h/ad;
    .locals 2

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 235
    new-instance v0, Landroidx/core/h/ad;

    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/h/ad;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Landroid/view/WindowInsets;
    .locals 0

    .line 604
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 593
    iget-object p0, p0, Landroidx/core/h/ad;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
