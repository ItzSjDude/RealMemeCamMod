.class public Lorg/a/a/j;
.super Lorg/a/a/k;
.source "StringContains.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/a/a/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/a/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/a/a/j;

    invoke-direct {v0, p0}, Lorg/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 0

    const-string p0, "containing"

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/a/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
