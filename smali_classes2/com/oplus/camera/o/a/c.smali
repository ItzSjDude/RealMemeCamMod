.class Lcom/oplus/camera/o/a/c;
.super Ljava/lang/Object;
.source "LightGreyScale.java"

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
    .locals 4

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    int-to-short p0, p0

    const/4 v0, 0x0

    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 16
    aget-byte v1, p1, v0

    mul-int/2addr v1, p0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
