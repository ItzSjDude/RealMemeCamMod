.class public Lcom/b/a/a/g;
.super Lcom/b/a/a/f;
.source "CircleAnimator.java"


# instance fields
.field final e:F

.field final f:F

.field final g:F

.field h:F

.field i:Z

.field j:[F

.field k:[F


# direct methods
.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/b/a/a/f;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    const p1, 0x3e99999a    # 0.3f

    .line 17
    iput p1, p0, Lcom/b/a/a/g;->e:F

    const/high16 p1, 0x44340000    # 720.0f

    .line 18
    iput p1, p0, Lcom/b/a/a/g;->f:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 19
    iput p1, p0, Lcom/b/a/a/g;->g:F

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/b/a/a/g;->h:F

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/b/a/a/g;->i:Z

    const/4 p1, 0x2

    .line 23
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/b/a/a/g;->j:[F

    .line 24
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/b/a/a/g;->k:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/f;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    const p1, 0x3e99999a    # 0.3f

    .line 17
    iput p1, p0, Lcom/b/a/a/g;->e:F

    const/high16 p1, 0x44340000    # 720.0f

    .line 18
    iput p1, p0, Lcom/b/a/a/g;->f:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 19
    iput p1, p0, Lcom/b/a/a/g;->g:F

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/b/a/a/g;->h:F

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/b/a/a/g;->i:Z

    const/4 p1, 0x2

    .line 23
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/b/a/a/g;->j:[F

    .line 24
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/b/a/a/g;->k:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static b([FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    aput p1, p0, v0

    add-float/2addr p1, p2

    const/4 p2, 0x1

    .line 71
    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/b/a/a/g;->j:[F

    invoke-virtual {p0, v0, p1}, Lcom/b/a/a/g;->a([FF)F

    move-result v0

    float-to-double v0, v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    .line 40
    iget-object v2, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    .line 41
    iget-object v2, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->d:F

    .line 42
    iget-object v2, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->e:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/g;->k:[F

    invoke-virtual {p0, v1, p1}, Lcom/b/a/a/g;->a([FF)F

    move-result p1

    iput p1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/g;->k:[F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/b/a/a/g;->a([FF)F

    move-result p1

    iput p1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 28
    invoke-super {p0}, Lcom/b/a/a/f;->b()V

    .line 30
    iget-object v0, p0, Lcom/b/a/a/g;->j:[F

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    invoke-static {v0, v1, v2}, Lcom/b/a/a/g;->b([FFF)V

    .line 31
    iget-object v0, p0, Lcom/b/a/a/g;->k:[F

    iget-object p0, p0, Lcom/b/a/a/g;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, p0, v1}, Lcom/b/a/a/g;->b([FFF)V

    return-void
.end method
