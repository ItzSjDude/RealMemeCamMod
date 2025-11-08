.class Lcom/oplus/camera/o/a/e;
.super Ljava/lang/Object;
.source "OverDarkScale.java"

# interfaces
.implements Lcom/oplus/camera/o/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .locals 6

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    add-double/2addr v0, v2

    const/4 p0, 0x0

    :goto_0
    mul-int v2, p2, p3

    if-ge p0, v2, :cond_0

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 16
    aget-byte v4, p1, p0

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
