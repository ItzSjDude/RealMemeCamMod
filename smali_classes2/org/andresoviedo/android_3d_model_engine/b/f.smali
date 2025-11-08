.class public Lorg/andresoviedo/android_3d_model_engine/b/f;
.super Ljava/lang/Object;
.source "Material.java"


# static fields
.field private static final a:[F


# instance fields
.field private b:Ljava/lang/String;

.field private c:[F

.field private d:[F

.field private e:[F

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:I

.field private k:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/andresoviedo/android_3d_model_engine/b/f;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->g:F

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->g:F

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->j:I

    .line 32
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->i:[B

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 102
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->j:I

    return p0
.end method

.method public c()[F
    .locals 4

    .line 113
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/f;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->a:[F

    return-object p0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->k:[F

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->d:[F

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 117
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->k:[F

    .line 118
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->k:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 119
    aget v3, v0, v2

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 120
    aget v0, v0, v2

    aput v0, v1, v2

    const/4 v0, 0x3

    .line 121
    iget v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->g:F

    aput v2, v1, v0

    .line 123
    :cond_1
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->k:[F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ambient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->c:[F

    .line 130
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", diffuse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->d:[F

    .line 131
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", specular="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->e:[F

    .line 132
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shininess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", textureFile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", textureData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->i:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->i:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/f;->j:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
