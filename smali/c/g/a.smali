.class public abstract Lc/g/a;
.super Lc/g/c;
.source "PlatformRandom.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lc/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 39
    invoke-virtual {p0}, Lc/g/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    invoke-static {p0, p1}, Lc/g/d;->a(II)I

    move-result p0

    return p0
.end method

.method public abstract a()Ljava/util/Random;
.end method

.method public b()I
    .locals 0

    .line 41
    invoke-virtual {p0}, Lc/g/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method
