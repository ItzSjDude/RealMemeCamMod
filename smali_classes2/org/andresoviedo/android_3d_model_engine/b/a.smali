.class public Lorg/andresoviedo/android_3d_model_engine/b/a;
.super Lorg/andresoviedo/android_3d_model_engine/b/g;
.source "AnimatedModel.java"


# instance fields
.field private h:[F

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:[[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/a;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->i:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public a()[F
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->h:[F

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lorg/andresoviedo/a/c/a;->a:[F

    :cond_0
    return-object p0
.end method

.method public b()Ljava/nio/FloatBuffer;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->i:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public b(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/a;
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->j:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public c()Ljava/nio/FloatBuffer;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->j:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/a;->e()Lorg/andresoviedo/android_3d_model_engine/b/a;

    move-result-object p0

    return-object p0
.end method

.method public d()Lorg/andresoviedo/android_3d_model_engine/b/d;
    .locals 0

    .line 92
    invoke-super {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->d()Lorg/andresoviedo/android_3d_model_engine/b/d;

    move-result-object p0

    return-object p0
.end method

.method public e()Lorg/andresoviedo/android_3d_model_engine/b/a;
    .locals 2

    .line 138
    new-instance v0, Lorg/andresoviedo/android_3d_model_engine/b/a;

    invoke-direct {v0}, Lorg/andresoviedo/android_3d_model_engine/b/a;-><init>()V

    .line 139
    invoke-super {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V

    .line 140
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/a;->b()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/a;->a(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/a;

    .line 141
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/a;->c()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/a;->b(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/a;

    .line 142
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->k:[[F

    iput-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/a;->k:[[F

    .line 143
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/a;->h:[F

    iput-object p0, v0, Lorg/andresoviedo/android_3d_model_engine/b/a;->h:[F

    return-object v0
.end method

.method public synthetic f()Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/a;->e()Lorg/andresoviedo/android_3d_model_engine/b/a;

    move-result-object p0

    return-object p0
.end method
