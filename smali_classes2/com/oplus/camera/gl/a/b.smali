.class public Lcom/oplus/camera/gl/a/b;
.super Ljava/lang/Object;
.source "GLImageModeChangeProcessorAgent.java"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/oplus/camera/gl/a/d;

.field private g:Landroid/view/animation/PathInterpolator;

.field private h:Ljava/nio/FloatBuffer;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Landroid/renderscript/Matrix4f;

.field private k:Landroid/renderscript/Matrix4f;

.field private l:Z

.field private m:I

.field private n:I

.field private o:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 39
    iput v0, p0, Lcom/oplus/camera/gl/a/b;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/oplus/camera/gl/a/b;->b:F

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->c:I

    .line 42
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->d:I

    .line 43
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->e:I

    const/4 v2, 0x0

    .line 45
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    .line 46
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->g:Landroid/view/animation/PathInterpolator;

    .line 47
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->h:Ljava/nio/FloatBuffer;

    .line 48
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->i:Ljava/nio/FloatBuffer;

    .line 49
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    .line 50
    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/gl/a/b;->l:Z

    .line 52
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->m:I

    .line 53
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->n:I

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/oplus/camera/gl/a/b;->o:F

    .line 57
    new-instance v2, Lcom/oplus/camera/gl/a/d;

    invoke-direct {v2}, Lcom/oplus/camera/gl/a/d;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    .line 58
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->g:Landroid/view/animation/PathInterpolator;

    .line 61
    sget-object v2, Lcom/oplus/camera/gl/a/c;->a:[F

    invoke-static {v2}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->h:Ljava/nio/FloatBuffer;

    .line 62
    sget-object v2, Lcom/oplus/camera/gl/a/c;->b:[F

    invoke-static {v2}, Lcom/oplus/camera/util/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->i:Ljava/nio/FloatBuffer;

    .line 64
    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    .line 65
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v3, v0}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v1}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 68
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/a/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/a/d;->a(I)V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    iget-object v1, p0, Lcom/oplus/camera/gl/a/b;->h:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/camera/gl/a/d;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public a(III)I
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawCoverBlur, textId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurShotWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurShotHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSizeRatioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageModeChangeProcessorAgent"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/oplus/camera/gl/a/b;->c:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oplus/camera/gl/a/b;->d:I

    if-eq v0, p3, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/gl/a/b;->a(II)V

    .line 165
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/a/b;->a(I)I

    move-result p0

    return p0
.end method

.method public a(II)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageModeChangeProcessorAgent"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/oplus/camera/gl/a/b;->c:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/gl/a/b;->d:I

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/gl/a/d;->b(II)V

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/gl/a/d;->a(II)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChangeSize, size change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageModeChangeProcessorAgent"

    .line 81
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/gl/a/d;->a(Landroid/util/Size;Landroid/util/Size;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/oplus/camera/gl/a/b;->l:Z

    return-void
.end method

.method public a()[F
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/oplus/camera/gl/a/b;->l:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 2

    const-string v0, "GLImageModeChangeProcessorAgent"

    const-string v1, "uninit"

    .line 139
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/oplus/camera/gl/a/b;->c:I

    .line 142
    iput v0, p0, Lcom/oplus/camera/gl/a/b;->d:I

    .line 143
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/a/d;->a()V

    return-void
.end method

.method public b(II)V
    .locals 6

    .line 110
    iget v0, p0, Lcom/oplus/camera/gl/a/b;->o:F

    int-to-float v1, p1

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, p2, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float v0, p2

    div-float v0, v1, v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, v1

    div-float/2addr p1, v3

    move p2, p1

    move v1, v4

    move p1, v5

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    int-to-float v0, v2

    div-float v0, p1, v0

    sub-int/2addr v2, p2

    int-to-float p2, v2

    div-float/2addr p2, p1

    div-float p1, p2, v3

    move v1, p1

    move p1, v0

    move p2, v4

    move v0, v5

    .line 121
    :goto_0
    iget-boolean v2, p0, Lcom/oplus/camera/gl/a/b;->l:Z

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 123
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2, v0, p1, v5}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->k:Landroid/renderscript/Matrix4f;

    invoke-virtual {p0, p2, v1, v4}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 127
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v5, v3, v5}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 128
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2, v4, v3, v4}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 129
    iget-object v2, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2, v0, p1, v5}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/gl/a/b;->j:Landroid/renderscript/Matrix4f;

    invoke-virtual {p0, p2, v1, v4}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/a/d;->b()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/oplus/camera/gl/a/b;->f:Lcom/oplus/camera/gl/a/d;

    .line 149
    iput-object v0, p0, Lcom/oplus/camera/gl/a/b;->h:Ljava/nio/FloatBuffer;

    .line 150
    iput-object v0, p0, Lcom/oplus/camera/gl/a/b;->i:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/oplus/camera/gl/a/b;->m:I

    .line 155
    iput p2, p0, Lcom/oplus/camera/gl/a/b;->n:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 156
    iput p2, p0, Lcom/oplus/camera/gl/a/b;->o:F

    return-void
.end method

.method public d()V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 172
    iput v0, p0, Lcom/oplus/camera/gl/a/b;->a:F

    return-void
.end method

.method public e()I
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/gl/a/b;->g:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/oplus/camera/gl/a/b;->a:F

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 177
    iget v1, p0, Lcom/oplus/camera/gl/a/b;->a:F

    iget v3, p0, Lcom/oplus/camera/gl/a/b;->b:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/gl/a/b;->a:F

    .line 179
    iget v1, p0, Lcom/oplus/camera/gl/a/b;->a:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 180
    iput v2, p0, Lcom/oplus/camera/gl/a/b;->a:F

    :cond_0
    mul-float/2addr v0, v2

    float-to-int p0, v0

    return p0
.end method
