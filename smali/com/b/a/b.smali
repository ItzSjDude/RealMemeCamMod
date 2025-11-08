.class public Lcom/b/a/b;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    sget v0, Lcom/b/a/a;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    sget v0, Lcom/b/a/a;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    sget v0, Lcom/b/a/a;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lcom/b/a/a;->a:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
