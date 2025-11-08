.class Lcom/b/a/m;
.super Ljava/lang/Object;
.source "TouchController.java"


# direct methods
.method public static a(Landroid/view/MotionEvent;)F
    .locals 11

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 421
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 423
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p0, v3, v7

    if-lez p0, :cond_0

    cmpl-double v2, v0, v7

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    if-lez p0, :cond_1

    cmpg-double v2, v0, v7

    if-gez v2, :cond_1

    goto :goto_3

    :cond_1
    const-wide v9, 0x4066800000000000L    # 180.0

    if-nez p0, :cond_2

    cmpg-double v2, v0, v7

    if-gez v2, :cond_2

    :goto_0
    sub-double v5, v9, v5

    goto :goto_3

    :cond_2
    cmpg-double v2, v3, v7

    if-gez v2, :cond_3

    cmpg-double v3, v0, v7

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    cmpl-double v3, v0, v7

    if-nez v3, :cond_4

    :goto_1
    add-double/2addr v5, v9

    goto :goto_3

    :cond_4
    if-gez v2, :cond_5

    cmpl-double v2, v0, v7

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    const-wide v2, 0x4076800000000000L    # 360.0

    if-nez p0, :cond_6

    cmpl-double v4, v0, v7

    if-lez v4, :cond_6

    :goto_2
    sub-double v5, v2, v5

    goto :goto_3

    :cond_6
    if-lez p0, :cond_7

    cmpl-double p0, v0, v7

    if-lez p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    double-to-float p0, v5

    return p0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 11

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 453
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-lez p0, :cond_0

    cmpl-double v10, v0, v5

    if-nez v10, :cond_0

    goto :goto_3

    :cond_0
    if-lez p0, :cond_1

    cmpg-double v10, v0, v5

    if-gez v10, :cond_1

    goto :goto_3

    :cond_1
    if-nez p0, :cond_2

    cmpg-double v10, v0, v5

    if-gez v10, :cond_2

    :goto_0
    move v2, v9

    goto :goto_3

    :cond_2
    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    cmpg-double v4, v0, v5

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    if-gez v3, :cond_4

    cmpl-double v4, v0, v5

    if-nez v4, :cond_4

    :goto_1
    move v2, v8

    goto :goto_3

    :cond_4
    if-gez v3, :cond_5

    cmpl-double v3, v0, v5

    if-lez v3, :cond_5

    goto :goto_1

    :cond_5
    if-nez p0, :cond_6

    cmpl-double v3, v0, v5

    if-lez v3, :cond_6

    :goto_2
    move v2, v7

    goto :goto_3

    :cond_6
    if-lez p0, :cond_7

    cmpl-double p0, v0, v5

    if-lez p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    return v2
.end method
