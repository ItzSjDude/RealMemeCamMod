.class public Lcom/b/a/a/k;
.super Lcom/b/a/a/f;
.source "SwingAnimator.java"


# instance fields
.field final e:F

.field final f:F

.field final g:F

.field final h:F

.field i:F

.field j:Z

.field k:[F

.field l:[F

.field m:[F


# direct methods
.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/b/a/a/f;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/b/a/a/k;->e:F

    const/high16 p2, 0x44340000    # 720.0f

    .line 18
    iput p2, p0, Lcom/b/a/a/k;->f:F

    const p2, 0x3ea3d70a    # 0.32f

    .line 19
    iput p2, p0, Lcom/b/a/a/k;->g:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 20
    iput p2, p0, Lcom/b/a/a/k;->h:F

    .line 21
    iput p1, p0, Lcom/b/a/a/k;->i:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/b/a/a/k;->j:Z

    const/4 p1, 0x2

    .line 24
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/b/a/a/k;->k:[F

    .line 25
    new-array p2, p1, [F

    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/b/a/a/k;->l:[F

    .line 26
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/b/a/a/k;->m:[F

    return-void

    nop

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

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/f;-><init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/b/a/a/k;->e:F

    const/high16 p2, 0x44340000    # 720.0f

    .line 18
    iput p2, p0, Lcom/b/a/a/k;->f:F

    const p2, 0x3ea3d70a    # 0.32f

    .line 19
    iput p2, p0, Lcom/b/a/a/k;->g:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 20
    iput p2, p0, Lcom/b/a/a/k;->h:F

    .line 21
    iput p1, p0, Lcom/b/a/a/k;->i:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/b/a/a/k;->j:Z

    const/4 p1, 0x2

    .line 24
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/b/a/a/k;->k:[F

    .line 25
    new-array p2, p1, [F

    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/b/a/a/k;->l:[F

    .line 26
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/b/a/a/k;->m:[F

    return-void

    nop

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

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static b([FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    aput p1, p0, v0

    add-float/2addr p1, p2

    const/4 p2, 0x1

    .line 61
    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/b/a/a/k;->m:[F

    invoke-virtual {p0, v0, p1}, Lcom/b/a/a/k;->a([FF)F

    move-result v0

    float-to-double v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 42
    iget-boolean v2, p0, Lcom/b/a/a/k;->c:Z

    const v3, 0x3ea3d70a    # 0.32f

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    iput v0, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    .line 44
    iget-object v0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget v1, v1, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    iput v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->d:F

    goto :goto_0

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    iput v0, v2, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    .line 48
    iget-object v0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget v1, v1, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    iput v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->e:F

    :goto_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/k;->l:[F

    invoke-virtual {p0, v1, p1}, Lcom/b/a/a/k;->a([FF)F

    move-result p1

    iput p1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget-object v1, p0, Lcom/b/a/a/k;->l:[F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/b/a/a/k;->a([FF)F

    move-result p1

    iput p1, v0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    .line 56
    :goto_1
    iget-object p0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/b/a/a/f;->b()V

    .line 32
    iget-object v0, p0, Lcom/b/a/a/k;->m:[F

    const/high16 v1, 0x44340000    # 720.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/b/a/a/k;->b([FFF)V

    .line 33
    iget-object v0, p0, Lcom/b/a/a/k;->k:[F

    invoke-static {v0, v2, v1}, Lcom/b/a/a/k;->b([FFF)V

    .line 34
    iget-object v0, p0, Lcom/b/a/a/k;->l:[F

    iget-object p0, p0, Lcom/b/a/a/k;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, p0, v1}, Lcom/b/a/a/k;->b([FFF)V

    return-void
.end method
