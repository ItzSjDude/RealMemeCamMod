.class public abstract Lcom/oplus/camera/ui/menu/levelcontrol/k;
.super Lcom/oplus/camera/ui/menu/levelcontrol/j;
.source "GLProducerRender2D.java"


# instance fields
.field protected G:I

.field protected H:I

.field private I:Z

.field private J:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    .line 24
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->I:Z

    .line 25
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->J:Z

    .line 30
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->G:I

    return-void
.end method

.method private e(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateElementsParam, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender2D"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a()V

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;Z)V
    .locals 6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTextures, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender2D"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->r:Z

    .line 115
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->q:Z

    .line 116
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->s:Z

    .line 117
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->b:I

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(F)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b(F)V

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->w:F

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->x:F

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(FF)V

    .line 125
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060072

    goto :goto_0

    :cond_0
    const v0, 0x7f06004d

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a([F)V

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I

    move-result v0

    .line 137
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I

    move-result v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTextures, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 v3, -0x1

    if-nez v1, :cond_4

    .line 142
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {p2, v2, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 144
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result p2

    if-nez p2, :cond_2

    .line 145
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    .line 148
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p2, :cond_3

    .line 149
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->G:I

    invoke-virtual {p2, v2, v0, v1, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(IIII)V

    .line 152
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_1

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result v1

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 157
    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {v1, v2, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 159
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v1

    if-nez v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v1, :cond_7

    .line 164
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->G:I

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(IIII)V

    :cond_7
    if-eqz p2, :cond_8

    .line 169
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    .line 174
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-nez p2, :cond_9

    .line 175
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {p2, v2, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 177
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result p2

    if-nez p2, :cond_b

    .line 178
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    goto :goto_2

    .line 181
    :cond_9
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result p2

    if-ne v2, p2, :cond_a

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result p2

    if-eq v0, p2, :cond_b

    .line 182
    :cond_a
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 183
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {p2, v2, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 185
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result p2

    if-nez p2, :cond_b

    .line 186
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    :cond_b
    :goto_2
    if-ge v2, v0, :cond_d

    .line 194
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    if-nez p2, :cond_c

    .line 195
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    invoke-static {p1, v2, v0, p2}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    .line 197
    :cond_c
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    invoke-static {p1, v2, v0, p2, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    .line 200
    :cond_d
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    if-nez p2, :cond_e

    .line 201
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    invoke-static {p1, v2, v0, p2}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    .line 203
    :cond_e
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    invoke-static {p1, v2, v0, p2, v1}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 207
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b(Landroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_f
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p2, :cond_10

    .line 212
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b(II)V

    .line 213
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(I)V

    :cond_10
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 53
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 54
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 56
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(II)V

    .line 58
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string p2, "GLProducerRender2D"

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_0

    :cond_0
    const-string p1, "onSurfaceChanged, mGLModelParam has not init."

    .line 61
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->I:Z

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceChanged, cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v0, 0xb71

    .line 37
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    .line 38
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 39
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 41
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$a;->a()V

    .line 43
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->a:Landroid/content/Context;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->G:I

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/h;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->F:Lcom/oplus/camera/ui/preview/a/l$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(Lcom/oplus/camera/ui/preview/a/l$a;)V

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceCreated, cost: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLProducerRender2D"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_1

    .line 222
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060072

    goto :goto_0

    :cond_0
    const v0, 0x7f06004d

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a([F)V

    :cond_1
    if-eqz p1, :cond_8

    .line 232
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_8

    .line 233
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I

    move-result v0

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 v3, -0x1

    if-nez v2, :cond_2

    .line 237
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {v2, v1, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 239
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v2

    if-nez v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 245
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {v2, v1, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 247
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v2

    if-nez v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    :cond_4
    :goto_1
    if-ge v1, v0, :cond_6

    .line 256
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    if-nez v2, :cond_5

    .line 257
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    invoke-static {p1, v1, v0, v2}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 259
    :cond_5
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    invoke-static {p1, v1, v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 262
    :cond_6
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    if-nez v2, :cond_7

    .line 263
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    invoke-static {p1, v1, v0, v2}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 265
    :cond_7
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->e:Z

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->H:I

    invoke-static {p1, v1, v0, v2, v3}, Lcom/oplus/camera/ui/preview/a/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;IIZI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 269
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(I)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-void
.end method

.method public b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 71
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->k:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->j:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr p1, v1

    .line 73
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->k:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->j:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 74
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->f:F

    sub-float p1, v1, p1

    add-float/2addr v2, p1

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->f:F

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    const-string v2, "onDrawFrame, mScrollAnimListener == null !"

    const-string v3, "GLProducerRender2D"

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->f:F

    invoke-interface {p1, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/j$b;->a(F)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    .line 83
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_4

    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_4

    .line 84
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->g:F

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->f:F

    .line 85
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->h:F

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->i:I

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->f:F

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$b;->b(F)V

    goto :goto_1

    .line 91
    :cond_3
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/k;->k()V

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 100
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->I:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz p1, :cond_5

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/k;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$a;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    :cond_5
    const/16 p0, 0xbe2

    .line 105
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 p1, 0x303

    .line 106
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 107
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method protected abstract c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
.end method

.method protected abstract d(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
.end method

.method protected abstract k()V
.end method
