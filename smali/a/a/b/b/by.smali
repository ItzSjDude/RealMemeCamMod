.class public La/a/b/b/by;
.super La/a/b/b/a/b;


# static fields
.field public static final q:[F

.field public static final r:[F

.field public static final s:[F

.field public static final t:[F

.field public static final u:[F

.field public static final v:[F


# instance fields
.field public w:La/a/b/c/d;

.field public x:[F

.field public y:[F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, La/a/b/b/by;->q:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, La/a/b/b/by;->r:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, La/a/b/b/by;->s:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, La/a/b/b/by;->t:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, La/a/b/b/by;->u:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, La/a/b/b/by;->v:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, La/a/b/b/by;->x:[F

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, La/a/b/b/by;->y:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, La/a/b/b/by;->z:F

    invoke-virtual {p0}, La/a/b/b/by;->m()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, La/a/b/b/by;->z:F

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    iget-object p0, p0, La/a/b/b/by;->x:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    const/4 p1, 0x3

    aput p4, p0, p1

    return-void
.end method

.method public final a([F[F[F)V
    .locals 11

    const/4 p0, 0x0

    aget v0, p2, p0

    aget v1, p3, p0

    mul-float/2addr v0, v1

    const/4 v1, 0x3

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    const/4 v2, 0x6

    aget v4, p2, v2

    const/4 v5, 0x2

    aget v6, p3, v5

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    aput v0, p1, p0

    aget v0, p2, v3

    aget v4, p3, p0

    mul-float/2addr v0, v4

    const/4 v4, 0x4

    aget v6, p2, v4

    aget v7, p3, v3

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v7, p2, v6

    aget v8, p3, v5

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    aput v0, p1, v3

    aget v0, p2, v5

    aget v7, p3, p0

    mul-float/2addr v0, v7

    const/4 v7, 0x5

    aget v8, p2, v7

    aget v9, p3, v3

    mul-float/2addr v8, v9

    add-float/2addr v0, v8

    const/16 v8, 0x8

    aget v9, p2, v8

    aget v10, p3, v5

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aput v0, p1, v5

    aget v0, p2, p0

    aget v9, p3, v1

    mul-float/2addr v0, v9

    aget v9, p2, v1

    aget v10, p3, v4

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aget v9, p2, v2

    aget v10, p3, v7

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aput v0, p1, v1

    aget v0, p2, v3

    aget v9, p3, v1

    mul-float/2addr v0, v9

    aget v9, p2, v4

    aget v10, p3, v4

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aget v9, p2, v6

    aget v10, p3, v7

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aput v0, p1, v4

    aget v0, p2, v5

    aget v9, p3, v1

    mul-float/2addr v0, v9

    aget v9, p2, v7

    aget v10, p3, v4

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aget v9, p2, v8

    aget v10, p3, v7

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    aput v0, p1, v7

    aget p0, p2, p0

    aget v0, p3, v2

    mul-float/2addr p0, v0

    aget v0, p2, v1

    aget v1, p3, v6

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    aget v0, p2, v2

    aget v1, p3, v8

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    aput p0, p1, v2

    aget p0, p2, v3

    aget v0, p3, v2

    mul-float/2addr p0, v0

    aget v0, p2, v4

    aget v1, p3, v6

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    aget v0, p2, v6

    aget v1, p3, v8

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    aput p0, p1, v6

    aget p0, p2, v5

    aget v0, p3, v2

    mul-float/2addr p0, v0

    aget v0, p2, v7

    aget v1, p3, v6

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    aget p2, p2, v8

    aget p3, p3, v8

    mul-float/2addr p2, p3

    add-float/2addr p0, p2

    aput p0, p1, v8

    return-void
.end method

.method public b(I)V
    .locals 6

    rem-int/lit16 p1, p1, 0x168

    if-nez p1, :cond_0

    invoke-virtual {p0}, La/a/b/b/by;->m()V

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    const/16 v0, -0x10e

    if-ne v0, p1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0xb4

    if-eq v0, p1, :cond_5

    const/16 v0, -0xb4

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x10e

    if-eq v0, p1, :cond_4

    const/16 v0, -0x5a

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    neg-float v2, p1

    const/16 v3, 0x9

    new-array v4, v3, [F

    sget-object v5, La/a/b/b/by;->r:[F

    new-array v3, v3, [F

    aput v0, v3, v1

    const/4 v1, 0x1

    aput p1, v3, v1

    const/4 p1, 0x2

    const/4 v1, 0x0

    aput v1, v3, p1

    const/4 p1, 0x3

    aput v2, v3, p1

    const/4 p1, 0x4

    aput v0, v3, p1

    const/4 p1, 0x5

    aput v1, v3, p1

    const/4 p1, 0x6

    aput v1, v3, p1

    const/4 p1, 0x7

    aput v1, v3, p1

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v3, p1

    invoke-virtual {p0, v4, v3, v5}, La/a/b/b/by;->a([F[F[F)V

    iget-object p1, p0, La/a/b/b/by;->y:[F

    sget-object v0, La/a/b/b/by;->s:[F

    invoke-virtual {p0, p1, v0, v4}, La/a/b/b/by;->a([F[F[F)V

    goto :goto_3

    :cond_4
    :goto_0
    sget-object p1, La/a/b/b/by;->v:[F

    iget-object p0, p0, La/a/b/b/by;->y:[F

    array-length v0, p0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p1, La/a/b/b/by;->u:[F

    iget-object p0, p0, La/a/b/b/by;->y:[F

    array-length v0, p0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p1, La/a/b/b/by;->t:[F

    iget-object p0, p0, La/a/b/b/by;->y:[F

    array-length v0, p0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-void
.end method

.method public b(La/a/b/c/d;)V
    .locals 0

    iput-object p1, p0, La/a/b/b/by;->w:La/a/b/c/d;

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 9

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    invoke-virtual {p0}, La/a/b/b/a/a;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La/a/b/b/a/a;->a(II)V

    iget-object v0, p0, La/a/b/b/by;->w:La/a/b/c/d;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, La/a/b/b/a/a;->a(La/a/b/c/d;I)V

    const-string v0, "texture"

    invoke-virtual {p0, v0, v1}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    const-string v0, "sprite"

    invoke-virtual {p0, v0, v2}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, La/a/b/b/by;->y:[F

    const-string v3, "spriteMatrix"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;[F)V

    iget-object v0, p0, La/a/b/b/by;->x:[F

    aget v5, v0, v1

    aget v6, v0, v2

    const/4 v1, 0x2

    aget v7, v0, v1

    const/4 v1, 0x3

    aget v8, v0, v1

    const-string v4, "bkgndCrop"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, La/a/b/b/a/a;->a(Ljava/lang/String;FFFF)V

    iget v0, p0, La/a/b/b/by;->z:F

    const-string v1, "opacity"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public final m()V
    .locals 3

    sget-object v0, La/a/b/b/by;->q:[F

    iget-object p0, p0, La/a/b/b/by;->y:[F

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
