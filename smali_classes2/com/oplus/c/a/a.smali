.class public final Lcom/oplus/c/a/a;
.super Ljava/lang/Object;
.source "BitmapCacheClearManager.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/oplus/c/a/a;

    invoke-direct {v0}, Lcom/oplus/c/a/a;-><init>()V

    sput-object v0, Lcom/oplus/c/a/a;->a:Lcom/oplus/c/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/oplus/c/a/a/a/e;->b()V

    .line 34
    sget-object v0, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    invoke-virtual {v0, p0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/c/a/a/a;->a()V

    return-void
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/oplus/c/a/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lkotlinx/coroutines/as;->a:Lkotlinx/coroutines/as;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/y;

    invoke-static {}, Lkotlinx/coroutines/aj;->c()Lkotlinx/coroutines/t;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc/c/g;

    const/4 v3, 0x0

    new-instance v0, Lcom/oplus/c/a/a$a;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/oplus/c/a/a$a;-><init>(Landroid/content/Context;Lc/c/d;)V

    move-object v4, v0

    check-cast v4, Lc/f/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/y;Lc/c/g;Lkotlinx/coroutines/z;Lc/f/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/ay;

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/oplus/c/a/a/a/e;->b()V

    .line 50
    sget-object v0, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    invoke-virtual {v0, p0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/c/a/a/a;->b()V

    :goto_0
    return-void
.end method
