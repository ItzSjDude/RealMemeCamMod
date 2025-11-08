.class public final Lcom/oplus/c/a/f;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/f;

.field private static b:Lcom/oplus/c/a/d/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/oplus/c/a/f;

    invoke-direct {v0}, Lcom/oplus/c/a/f;-><init>()V

    sput-object v0, Lcom/oplus/c/a/f;->a:Lcom/oplus/c/a/f;

    .line 29
    new-instance v0, Lcom/oplus/c/a/d/a/b;

    invoke-direct {v0}, Lcom/oplus/c/a/d/a/b;-><init>()V

    check-cast v0, Lcom/oplus/c/a/d/a/a;

    sput-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 57
    sget-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    invoke-interface {v0, p0, p1}, Lcom/oplus/c/a/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/c/a/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
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

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 70
    sget-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    invoke-interface {v0, p0, p1}, Lcom/oplus/c/a/d/a/a;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 96
    sget-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    invoke-interface {v0, p0, p1}, Lcom/oplus/c/a/d/a/a;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
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

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 83
    sget-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    invoke-interface {v0, p0, p1}, Lcom/oplus/c/a/d/a/a;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 109
    sget-object v0, Lcom/oplus/c/a/f;->b:Lcom/oplus/c/a/d/a/a;

    invoke-interface {v0, p0, p1}, Lcom/oplus/c/a/d/a/a;->b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result p0

    return p0
.end method
