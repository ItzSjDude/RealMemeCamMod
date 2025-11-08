.class public abstract Lorg/a/b;
.super Ljava/lang/Object;
.source "BaseMatcher.java"

# interfaces
.implements Lorg/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/a/f<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _dont_implement_Matcher___instead_extend_BaseMatcher_()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public describeMismatch(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    const-string p0, "was "

    .line 23
    invoke-interface {p2, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/Object;)Lorg/a/d;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 28
    invoke-static {p0}, Lorg/a/i;->b(Lorg/a/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
