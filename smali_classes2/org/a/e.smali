.class public abstract Lorg/a/e;
.super Lorg/a/b;
.source "DiagnosingMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lorg/a/d;)Z
.end method

.method public final describeMismatch(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/a/e;->a(Ljava/lang/Object;Lorg/a/d;)Z

    return-void
.end method

.method public final matches(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    sget-object v0, Lorg/a/d;->a:Lorg/a/d;

    invoke-virtual {p0, p1, v0}, Lorg/a/e;->a(Ljava/lang/Object;Lorg/a/d;)Z

    move-result p0

    return p0
.end method
