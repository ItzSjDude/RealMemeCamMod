.class public interface abstract Lcom/b/a/a/j;
.super Ljava/lang/Object;
.source "IAnimator.java"


# virtual methods
.method public a(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public a(FFFF)F
    .locals 2

    float-to-double v0, p3

    float-to-double p3, p4

    .line 31
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p0, p3

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public a([FF)F
    .locals 2

    const/4 v0, 0x0

    .line 17
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-interface {p0, v0, p1, p2}, Lcom/b/a/a/j;->a(FFF)F

    move-result p0

    return p0
.end method

.method public a([FFF)F
    .locals 2

    const/4 v0, 0x0

    .line 36
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/b/a/a/j;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public abstract a(F)V
.end method

.method public abstract b()V
.end method

.method public abstract d()V
.end method
