.class public final Lcom/oplus/c/a/a/a$a;
.super Ljava/lang/Object;
.source "BitmapCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/f/b/f;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/c/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/oplus/c/a/a/a;->c()Lcom/oplus/c/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/oplus/c/a/a/a;->c()Lcom/oplus/c/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oplus/c/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/c/a/a/a;-><init>(Landroid/content/Context;Lc/f/b/f;)V

    .line 38
    invoke-static {v0}, Lcom/oplus/c/a/a/a;->a(Lcom/oplus/c/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit p0

    .line 41
    :goto_1
    invoke-static {}, Lcom/oplus/c/a/a/a;->c()Lcom/oplus/c/a/a/a;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lc/f/b/h;->a()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    throw p1
.end method
