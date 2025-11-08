.class public Lcom/b/a/n;
.super Ljava/lang/Object;
.source "U.java"


# static fields
.field private static final a:Ljava/lang/String; = "n"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ASSERT failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
