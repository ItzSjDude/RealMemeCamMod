.class public final Lorg/andresoviedo/android_3d_model_engine/b/b;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[F

.field private final c:[F

.field private final d:[F

.field private final e:[F

.field private final f:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFF)V
    .locals 4

    const/4 v0, 0x4

    .line 22
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p4, v1, p2

    const/4 p4, 0x2

    aput p6, v1, p4

    const/high16 p6, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    aput p6, v1, v3

    new-array v0, v0, [F

    aput p3, v0, v2

    aput p5, v0, p2

    aput p7, v0, p4

    aput p6, v0, v3

    sget-object p2, Lorg/andresoviedo/a/c/a;->a:[F

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/andresoviedo/android_3d_model_engine/b/b;-><init>(Ljava/lang/String;[F[F[F)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[F[F)V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->a:Ljava/lang/String;

    const/4 p1, 0x4

    .line 31
    new-array v0, p1, [F

    const/4 v1, 0x0

    aget v2, p2, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    aput v3, v0, v2

    const/4 v3, 0x2

    aget p2, p2, v3

    aput p2, v0, v3

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput p2, v0, v4

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->b:[F

    .line 32
    new-array v0, p1, [F

    aget v5, p3, v1

    aput v5, v0, v1

    aget v1, p3, v2

    aput v1, v0, v2

    aget p3, p3, v3

    aput p3, v0, v3

    aput p2, v0, v4

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->c:[F

    .line 33
    iput-object p4, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->d:[F

    .line 34
    new-array p2, p1, [F

    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->e:[F

    .line 35
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->f:[F

    .line 36
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->g()V

    return-void
.end method

.method private g()V
    .locals 12

    .line 40
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->e:[F

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->d:[F

    iget-object v4, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->b:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 41
    iget-object v6, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->f:[F

    iget-object v8, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->d:[F

    iget-object v10, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->c:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 53
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->e:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public b()F
    .locals 1

    .line 57
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->f:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public c()F
    .locals 1

    .line 61
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->e:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public d()F
    .locals 1

    .line 65
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->f:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public e()F
    .locals 1

    .line 69
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->e:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public f()F
    .locals 1

    .line 73
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->f:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundingBox{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", xMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/b;->f()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
