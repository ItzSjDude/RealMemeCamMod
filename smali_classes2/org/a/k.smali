.class public abstract Lorg/a/k;
.super Lorg/a/b;
.source "TypeSafeMatcher.java"


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


# static fields
.field private static final TYPE_FINDER:Lorg/a/b/b;


# instance fields
.field private final expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lorg/a/b/b;

    const-string v1, "matchesSafely"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/a/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/a/k;->TYPE_FINDER:Lorg/a/b/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 22
    sget-object v0, Lorg/a/k;->TYPE_FINDER:Lorg/a/b/b;

    invoke-direct {p0, v0}, Lorg/a/k;-><init>(Lorg/a/b/b;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/a/k;->expectedType:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/a/b/b;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/b/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/a/k;->expectedType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final describeMismatch(Ljava/lang/Object;Lorg/a/d;)V
    .locals 1

    if-nez p1, :cond_0

    .line 74
    invoke-super {p0, p1, p2}, Lorg/a/b;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/a/k;->expectedType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "was a "

    .line 76
    invoke-interface {p2, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    const-string p2, " ("

    invoke-interface {p0, p2}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/Object;)Lorg/a/d;

    move-result-object p0

    const-string p1, ")"

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/a/k;->describeMismatchSafely(Ljava/lang/Object;Lorg/a/d;)V

    :goto_0
    return-void
.end method

.method protected describeMismatchSafely(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/a/d;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2}, Lorg/a/b;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    return-void
.end method

.method public final matches(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/a/k;->expectedType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/a/k;->matchesSafely(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract matchesSafely(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
