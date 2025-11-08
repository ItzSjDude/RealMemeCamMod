.class public Lcom/oplus/shield/b/d;
.super Ljava/lang/Object;
.source "PLog.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/oplus/shield/b/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPlatform.Shield"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AppPlatform.Shield"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/oplus/shield/b/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPlatform.Shield"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
