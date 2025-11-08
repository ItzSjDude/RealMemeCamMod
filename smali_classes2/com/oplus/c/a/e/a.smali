.class public final Lcom/oplus/c/a/e/a;
.super Ljava/lang/Object;
.source "Debugger.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/e/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/oplus/c/a/e/a;

    invoke-direct {v0}, Lcom/oplus/c/a/e/a;-><init>()V

    sput-object v0, Lcom/oplus/c/a/e/a;->a:Lcom/oplus/c/a/e/a;

    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 27
    invoke-static {}, Lc/f/b/h;->a()V

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Lc/f/b/h;->a()V

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 76
    invoke-static {}, Lc/f/b/h;->a()V

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-boolean v0, Lcom/oplus/c/a/e/a;->b:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
