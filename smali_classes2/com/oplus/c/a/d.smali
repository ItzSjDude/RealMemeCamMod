.class public final Lcom/oplus/c/a/d;
.super Ljava/lang/Object;
.source "LightVideoPlayer.kt"

# interfaces
.implements Lcom/oplus/c/a/d/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/c/a/d/b/b;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/c/a/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/c/a/d;->b:Landroid/content/Context;

    .line 32
    sget-object p1, Lcom/oplus/c/a/e;->a:[I

    invoke-virtual {p2}, Lcom/oplus/c/a/d$a;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 34
    new-instance p1, Lcom/oplus/c/a/d/b/d;

    iget-object p2, p0, Lcom/oplus/c/a/d;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oplus/c/a/d/b/d;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/oplus/c/a/d/b/b;

    goto :goto_0

    :cond_0
    new-instance p0, Lc/k;

    invoke-direct {p0}, Lc/k;-><init>()V

    throw p0

    .line 33
    :cond_1
    new-instance p1, Lcom/oplus/c/a/d/b/c;

    iget-object p2, p0, Lcom/oplus/c/a/d;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oplus/c/a/d/b/c;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/oplus/c/a/d/b/b;

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->a()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/c/a/d/b/b;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/c/a/d/b/b;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->d()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->e()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/oplus/c/a/d;->a:Lcom/oplus/c/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b;->f()V

    :cond_0
    return-void
.end method
