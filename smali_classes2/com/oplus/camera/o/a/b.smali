.class Lcom/oplus/camera/o/a/b;
.super Ljava/lang/Object;
.source "InterruptGrayScale.java"

# interfaces
.implements Lcom/oplus/camera/o/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BILandroid/graphics/Rect;I)V
    .locals 11

    .line 38
    iget p0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    :goto_0
    add-int/lit8 v0, p0, 0x2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_8

    .line 39
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p4

    :goto_1
    add-int/lit8 v2, v1, 0x2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v3, p0

    :goto_2
    if-ge v3, v0, :cond_3

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_2

    mul-int v8, v3, p2

    add-int/2addr v8, v4

    .line 46
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x96

    if-ge v9, v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 50
    :cond_0
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v6, v9

    .line 52
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v7, :cond_1

    .line 53
    aget-byte v7, p1, v8

    and-int/lit16 v7, v7, 0xff

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    goto :goto_6

    .line 62
    :cond_4
    div-int/lit8 v5, v5, 0x4

    move v3, p0

    :goto_4
    if-ge v3, v0, :cond_6

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_5

    mul-int v5, v3, p2

    add-int/2addr v5, v4

    .line 66
    div-int/lit8 v7, v6, 0x5

    mul-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    move v1, v2

    goto :goto_1

    :cond_7
    move p0, v0

    goto :goto_0

    :cond_8
    return-void
.end method

.method private b([BILandroid/graphics/Rect;I)V
    .locals 10

    .line 74
    iget p0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    :goto_0
    add-int/lit8 v0, p0, 0x2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_8

    .line 75
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p4

    :goto_1
    add-int/lit8 v2, v1, 0x2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v3, p0

    :goto_2
    if-ge v3, v0, :cond_3

    move v6, v5

    move v5, v4

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_2

    mul-int v7, v3, p2

    add-int/2addr v7, v4

    .line 81
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x96

    if-ge v8, v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 85
    :cond_0
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    if-le v8, v6, :cond_1

    .line 86
    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-le v4, v3, :cond_4

    goto :goto_6

    :cond_4
    move v3, p0

    :goto_4
    if-ge v3, v0, :cond_6

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_5

    mul-int v6, v3, p2

    add-int/2addr v6, v4

    int-to-byte v7, v5

    .line 97
    aput-byte v7, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    move v1, v2

    goto :goto_1

    :cond_7
    move p0, v0

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public a([BII)[B
    .locals 4

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/oplus/camera/o/a/b;->a([BILandroid/graphics/Rect;I)V

    .line 18
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/oplus/camera/o/a/b;->b([BILandroid/graphics/Rect;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
