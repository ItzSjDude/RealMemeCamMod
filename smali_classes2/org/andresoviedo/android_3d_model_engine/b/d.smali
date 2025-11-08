.class public Lorg/andresoviedo/android_3d_model_engine/b/d;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field private static final k:Ljava/text/DecimalFormat;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/andresoviedo/android_3d_model_engine/b/d;->k:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    const v1, -0x800001

    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    .line 12
    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    .line 13
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    const/4 v0, 0x3

    .line 16
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    .line 17
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    .line 18
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    const v1, -0x800001

    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    .line 12
    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    .line 13
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    iput v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    const/4 v0, 0x3

    .line 16
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    .line 17
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    .line 18
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    .line 31
    iput p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    .line 32
    iput p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    .line 33
    iput p3, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    .line 34
    iput p4, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    .line 35
    iput p5, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    .line 36
    iput p6, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    .line 37
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->d()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private d()V
    .locals 6

    .line 68
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->f()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 69
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->h()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 70
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->j()F

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 72
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->e()F

    move-result v1

    aput v1, v0, v2

    .line 73
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->g()F

    move-result v1

    aput v1, v0, v3

    .line 74
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->i()F

    move-result v1

    aput v1, v0, v4

    .line 76
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->e()F

    move-result v1

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->f()F

    move-result v5

    add-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    aput v1, v0, v2

    .line 77
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->g()F

    move-result v1

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->h()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    aput v1, v0, v3

    .line 78
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->i()F

    move-result v1

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->j()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    aput v1, v0, v4

    .line 80
    iput-boolean v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    return-void
.end method

.method private e()F
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    return p0
.end method

.method private f()F
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    return p0
.end method

.method private g()F
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 122
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    return p0
.end method

.method private h()F
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    return p0
.end method

.method private i()F
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    return p0
.end method

.method private j()F
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    return p0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 86
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->e()F

    move-result v0

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->f()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public a(FFF)V
    .locals 1

    .line 49
    iget v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 50
    iput p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->b:F

    .line 51
    :cond_0
    iget v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 52
    iput p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->a:F

    .line 54
    :cond_1
    iget p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 55
    iput p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->c:F

    .line 56
    :cond_2
    iget p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 57
    iput p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->d:F

    .line 59
    :cond_3
    iget p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    .line 60
    iput p3, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->f:F

    .line 61
    :cond_4
    iget p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    .line 62
    iput p3, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->e:F

    .line 64
    :cond_5
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->d()V

    return-void
.end method

.method public b()F
    .locals 1

    .line 90
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->g()F

    move-result v0

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->h()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public c()F
    .locals 1

    .line 94
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->i()F

    move-result v0

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->j()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dimensions{min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->h:[F

    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->i:[F

    .line 171
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/d;->g:[F

    .line 172
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/d;->c()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
