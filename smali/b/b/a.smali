.class public Lb/b/a;
.super Ljava/lang/Object;
.source "Assert.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 55
    new-instance p0, Lb/b/b;

    invoke-direct {p0}, Lb/b/b;-><init>()V

    throw p0

    .line 57
    :cond_0
    new-instance v0, Lb/b/b;

    invoke-direct {v0, p0}, Lb/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 256
    :goto_0
    invoke-static {p0, p1}, Lb/b/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 22
    invoke-static {p0}, Lb/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
