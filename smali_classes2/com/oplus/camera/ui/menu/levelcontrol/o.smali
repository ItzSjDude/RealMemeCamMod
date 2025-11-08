.class public Lcom/oplus/camera/ui/menu/levelcontrol/o;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static a:F = 0.0f

.field private static b:F = 0.0f

.field private static c:F = 0.0f

.field private static d:F = 140.33f

.field private static e:F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F

.field private static j:F

.field private static k:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f07073d

    .line 46
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f:F

    const v0, 0x7f07073e

    .line 47
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g:F

    const v0, 0x7f07073c

    .line 48
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->h:F

    const v0, 0x7f070752

    .line 49
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i:F

    const v0, 0x7f07073b

    .line 50
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j:F

    const v0, 0x7f070751

    .line 51
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->k:F

    .line 53
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f:F

    sget v1, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i:F

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a:F

    .line 54
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->h:F

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b:F

    .line 55
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->k:F

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c:F

    return-void
.end method

.method public static a()D
    .locals 2

    .line 79
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->d:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public static a(FD)D
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static a(F)F
    .locals 1

    .line 59
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(I)F
    .locals 3

    .line 152
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->h()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result v2

    int-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    return v0
.end method

.method public static b(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v2

    div-double/2addr v0, p1

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    return-wide p0
.end method

.method public static b()F
    .locals 3

    .line 87
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j:F

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result v0

    sget v1, Lcom/oplus/camera/ui/menu/levelcontrol/o;->d:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(FD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static b(F)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result p0

    sput p0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a:F

    return-void
.end method

.method public static c(FD)D
    .locals 2

    float-to-double v0, p0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public static c()F
    .locals 1

    .line 114
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a:F

    return v0
.end method

.method public static c(F)V
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result p0

    sput p0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b:F

    return-void
.end method

.method public static d()F
    .locals 3

    .line 118
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c()F

    move-result v0

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b(FD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 120
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static d(F)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result p0

    sput p0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c:F

    return-void
.end method

.method public static e()F
    .locals 3

    .line 124
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->d()F

    move-result v0

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c(FD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static e(F)V
    .locals 0

    .line 75
    sput p0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->d:F

    return-void
.end method

.method public static f()F
    .locals 3

    .line 132
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b:F

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c(FD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static f(F)F
    .locals 4

    .line 95
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result p0

    .line 97
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float v0, p0, v0

    float-to-int v0, v0

    .line 98
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v2

    mul-float/2addr v2, v1

    rem-float/2addr p0, v2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 100
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v2

    float-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b(FD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static g()F
    .locals 2

    .line 136
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v0

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static h()F
    .locals 2

    .line 148
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static i()F
    .locals 1

    .line 157
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c:F

    return v0
.end method

.method public static j()I
    .locals 1

    const/16 v0, 0xe10

    return v0
.end method

.method public static k()F
    .locals 2

    .line 173
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->o()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static l()F
    .locals 2

    .line 177
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->o()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static m()F
    .locals 2

    .line 181
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->p()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static n()F
    .locals 2

    .line 185
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->p()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static o()F
    .locals 1

    .line 189
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j:F

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result v0

    return v0
.end method

.method public static p()F
    .locals 1

    .line 193
    sget v0, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c:F

    return v0
.end method
