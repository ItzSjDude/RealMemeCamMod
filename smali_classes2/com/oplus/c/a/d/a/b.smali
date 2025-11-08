.class public final Lcom/oplus/c/a/d/a/b;
.super Ljava/lang/Object;
.source "MediaStoreDataService.kt"

# interfaces
.implements Lcom/oplus/c/a/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaId"

    invoke-static {p2, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/b;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItem"

    invoke-static {p2, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p0, Lcom/oplus/c/a/c/b;->a:Lcom/oplus/c/a/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/b;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/oplus/c/a/b/a;",
            ">;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/oplus/c/a/c/a;->a:Lcom/oplus/c/a/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/a;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItem"

    invoke-static {p2, p0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/oplus/c/a/c/a;->a:Lcom/oplus/c/a/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/c/a/c/a;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result p0

    return p0
.end method
