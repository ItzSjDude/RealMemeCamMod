.class public Lcom/oplus/camera/perf/FluencyPerformance$c;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/FluencyPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a([DI)D
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 579
    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static a([II)D
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 565
    aget v3, p0, v2

    int-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static b([DI)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    return-wide v0

    .line 607
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$c;->a([DI)D

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 610
    aget-wide v5, p0, v4

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static b([II)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    return-wide v0

    .line 592
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$c;->a([II)D

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 595
    aget v5, p0, v4

    int-to-double v5, v5

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0
.end method
