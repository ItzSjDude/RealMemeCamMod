.class public Lcom/oplus/camera/gl/b/h;
.super Ljava/lang/Object;
.source "SubSurfacePositionContainer.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->a:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->b:I

    .line 16
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->c:I

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/oplus/camera/gl/b/h;->d:I

    .line 18
    iput v1, p0, Lcom/oplus/camera/gl/b/h;->e:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->f:I

    .line 20
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->g:I

    .line 21
    iput v1, p0, Lcom/oplus/camera/gl/b/h;->h:I

    .line 23
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->i:I

    .line 24
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 25
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->k:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->m:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/gl/b/h;->n:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/gl/b/h;->o:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 40
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->b:I

    int-to-double v0, p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    div-double/2addr v0, v2

    double-to-int p0, v0

    return p0

    .line 43
    :cond_0
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->a:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->a:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->f:I

    .line 160
    iput p2, p0, Lcom/oplus/camera/gl/b/h;->g:I

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;IZ)V
    .locals 3

    .line 170
    invoke-static {p3}, Lcom/oplus/camera/capmode/q;->a(I)F

    move-result v0

    const/4 v1, 0x2

    if-eqz p3, :cond_4

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    if-eq p3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    .line 186
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p3

    mul-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 187
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->k:I

    .line 188
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    int-to-float p2, p1

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 189
    iget p2, p0, Lcom/oplus/camera/gl/b/h;->i:I

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->n:I

    .line 190
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->m:I

    goto/16 :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->k:I

    .line 193
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 194
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    .line 195
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->l:I

    int-to-float p2, p1

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 196
    iget p2, p0, Lcom/oplus/camera/gl/b/h;->k:I

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->n:I

    .line 197
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->m:I

    goto/16 :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    .line 205
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p3

    mul-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 207
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->k:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 208
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->n:I

    .line 209
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->m:I

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->k:I

    .line 212
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 215
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->k:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->n:I

    .line 216
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->l:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->m:I

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    .line 175
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p3

    mul-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    .line 176
    iget p1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    iput p1, p0, Lcom/oplus/camera/gl/b/h;->k:I

    .line 177
    iget p2, p0, Lcom/oplus/camera/gl/b/h;->j:I

    iput p2, p0, Lcom/oplus/camera/gl/b/h;->l:I

    .line 178
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->n:I

    mul-int/2addr p2, v1

    .line 179
    iput p2, p0, Lcom/oplus/camera/gl/b/h;->m:I

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/oplus/camera/gl/b/h;->o:Z

    return-void
.end method

.method public b()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->b:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->b:I

    return-void
.end method

.method public c()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->c:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->c:I

    return-void
.end method

.method public d()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->d:I

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->d:I

    return-void
.end method

.method public e()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->e:I

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->e:I

    return-void
.end method

.method public f()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->i:I

    return p0
.end method

.method public f(I)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiVideoType, multiVideoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSurfacePositionContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput p1, p0, Lcom/oplus/camera/gl/b/h;->h:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->j:I

    return p0
.end method

.method public h()I
    .locals 1

    .line 72
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/oplus/camera/gl/b/h;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/gl/b/h;->a()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->k:I

    return p0
.end method

.method public j()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->l:I

    return p0
.end method

.method public k()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->m:I

    return p0
.end method

.method public l()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->n:I

    return p0
.end method

.method public m()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/oplus/camera/gl/b/h;->h:I

    return p0
.end method

.method public n()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/oplus/camera/gl/b/h;->o:Z

    return p0
.end method

.method public o()Landroid/graphics/Rect;
    .locals 4

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->d:I

    iget v2, p0, Lcom/oplus/camera/gl/b/h;->e:I

    iget v3, p0, Lcom/oplus/camera/gl/b/h;->f:I

    add-int/2addr v3, v1

    iget p0, p0, Lcom/oplus/camera/gl/b/h;->g:I

    add-int/2addr p0, v2

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubSurfacePositionContainer{mScreenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingMenuPanelHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmallSurfaceXOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmallSurfaceYOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmallSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSmallSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiVideoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDrawMainImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDrawMainImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDrawSubImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDrawSubImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFboHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFboWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/gl/b/h;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbMainOneCameraFirstDraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/gl/b/h;->o:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
