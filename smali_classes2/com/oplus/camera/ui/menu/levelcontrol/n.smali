.class public Lcom/oplus/camera/ui/menu/levelcontrol/n;
.super Lcom/oplus/camera/ui/menu/levelcontrol/j;
.source "GLProducerRender3D.java"


# instance fields
.field private G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/levelcontrol/t;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/oplus/camera/ui/menu/levelcontrol/t;

.field private J:Z

.field private K:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->I:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->J:Z

    .line 24
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->K:Z

    return-void
.end method

.method private a(IF)Z
    .locals 2

    .line 166
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result v1

    add-float/2addr v0, v1

    add-float v1, p2, v0

    sub-float/2addr p2, v0

    .line 169
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d(I)F

    move-result p0

    cmpl-float p1, p0, p2

    if-ltz p1, :cond_0

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 12

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateElementsParam, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender3D"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p()F

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e(F)V

    .line 183
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b(F)V

    .line 184
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c(F)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/q;->a()V

    move v0, v1

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->d()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    move v6, v5

    move v9, v6

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t()F

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(F)F

    move-result v3

    neg-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move v9, v2

    move v5, v3

    move v6, v5

    .line 205
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->p()F

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/camera/ui/menu/levelcontrol/q;->a(FFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a()V

    .line 213
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 215
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v2

    add-float v9, v0, v2

    .line 217
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v5

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v6

    .line 218
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j()I

    move-result v7

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(I)F

    move-result v8

    const/4 v10, 0x0

    move-object v11, p1

    .line 217
    invoke-virtual/range {v3 .. v11}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(FFFIFFZLcom/oplus/camera/ui/menu/levelcontrol/i;)V

    .line 220
    :goto_2
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 221
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v4

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v5

    .line 222
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j()I

    move-result v6

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(I)F

    move-result v7

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v8

    const/4 v9, 0x1

    move-object v10, p1

    .line 221
    invoke-virtual/range {v2 .. v10}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(FFFIFFZLcom/oplus/camera/ui/menu/levelcontrol/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 226
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 227
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->b()F

    move-result v4

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v5

    .line 228
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->j()I

    move-result v6

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a(I)F

    move-result v7

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v8

    const/4 v9, 0x0

    move-object v10, p1

    .line 227
    invoke-virtual/range {v2 .. v10}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(FFFIFFZLcom/oplus/camera/ui/menu/levelcontrol/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 234
    :cond_3
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->k()F

    move-result v2

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->l()F

    move-result v3

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->m()F

    move-result v4

    .line 235
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->n()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42c80000    # 100.0f

    .line 234
    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFFFF)V

    .line 237
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    return-void
.end method

.method private d(I)F
    .locals 0

    neg-int p0, p1

    int-to-float p0, p0

    .line 176
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;Z)V
    .locals 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTextures, glModelParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender3D"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->r:Z

    .line 245
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->q:Z

    .line 246
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->b:I

    .line 247
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a(ILandroid/graphics/Bitmap;)V

    .line 250
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->u()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(F)V

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v1, v1, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 256
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v0, v0, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 257
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v2, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 v3, -0x1

    if-nez v0, :cond_3

    .line 261
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {p2, v1, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 263
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result p2

    if-nez p2, :cond_2

    .line 264
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    .line 268
    :cond_2
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->J:Z

    if-eqz p2, :cond_9

    .line 269
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result v0

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result v0

    if-eq v2, v0, :cond_5

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 274
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(III)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a()V

    :cond_5
    if-eqz p2, :cond_9

    .line 282
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_1

    .line 286
    :cond_6
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 291
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a(Ljava/util/List;)V

    .line 294
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->J:Z

    if-eqz p2, :cond_9

    .line 295
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_1

    .line 298
    :cond_8
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a(Ljava/util/List;)V

    if-eqz p2, :cond_9

    .line 301
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    .line 306
    :cond_9
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p2, :cond_a

    .line 307
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b(II)V

    :cond_a
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCylinderSideTexs, bitmaps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender3D"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 320
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 326
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 327
    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-direct {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>()V

    .line 329
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a(Landroid/graphics/Bitmap;)V

    .line 333
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 51
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 52
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 54
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(II)V

    int-to-float p1, p3

    .line 55
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->d(F)V

    .line 57
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string p2, "GLProducerRender3D"

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    goto :goto_0

    :cond_0
    const-string p1, "onSurfaceChanged, mGLModelParam has not init."

    .line 60
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 63
    invoke-static/range {v2 .. v10}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFFFFFFF)V

    const/4 p1, 0x0

    const/high16 p3, 0x40c00000    # 6.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 66
    invoke-static {p1, p3, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c(FFF)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->J:Z

    .line 69
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
    .locals 2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v0, 0xb71

    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xb44

    .line 35
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 36
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 38
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 39
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$a;->a()V

    .line 40
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->F:Lcom/oplus/camera/ui/preview/a/l$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(Lcom/oplus/camera/ui/preview/a/l$a;)V

    .line 42
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/q;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    .line 44
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

    const-string p1, "GLProducerRender3D"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 74
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    const/4 p1, 0x0

    const/high16 v0, -0x3ee00000    # -10.0f

    .line 75
    invoke-static {p1, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 76
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 78
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 80
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const-string v1, "GLProducerRender3D"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 81
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->k:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->i:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->j:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v0, v3

    .line 82
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->k:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->i:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->j:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    .line 83
    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    sub-float v0, v3, v0

    add-float/2addr v4, v0

    iput v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    const-string v4, "onDrawFrame, mScrollAnimListener == null !"

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/j$b;->a(F)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v1, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    .line 92
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_4

    .line 93
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->g:F

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    .line 94
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->h:F

    .line 95
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->i:I

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/j$b;->b(F)V

    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v1, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    :goto_1
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 106
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0, p1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 107
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    .line 111
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->J:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$a;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    goto :goto_3

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    move v0, v2

    .line 116
    :goto_2
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 117
    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->f:F

    invoke-direct {p0, v0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/n;->a(IF)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 118
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 119
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 120
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 121
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v4

    mul-float/2addr v5, v3

    invoke-static {p1, v5, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 122
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c(II)V

    .line 123
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    .line 124
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_7
    :goto_3
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    const/16 v0, 0xbe2

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v5, 0x303

    .line 132
    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 133
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_d

    .line 136
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->K:Z

    if-eqz v0, :cond_b

    move v0, v2

    .line 137
    :goto_4
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 138
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->d()I

    move-result v5

    if-nez v5, :cond_9

    .line 139
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->e:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_5

    .line 140
    :cond_8
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 139
    :goto_5
    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b(Landroid/graphics/Bitmap;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 144
    :cond_a
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->K:Z

    .line 147
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_c

    .line 149
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 151
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v4

    mul-float/2addr v0, v3

    invoke-static {p1, v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->G:Lcom/oplus/camera/ui/menu/levelcontrol/q;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/q;->a(II)V

    .line 154
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    goto :goto_7

    .line 156
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawFrame, mRingTexs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] not init."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 161
    :cond_d
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    .line 162
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public j()V
    .locals 3

    .line 339
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->j()V

    const-string v0, "GLProducerRender3D"

    const-string v1, "releaseResource"

    .line 340
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 344
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->H:Ljava/util/ArrayList;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 353
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    goto :goto_1

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->v:Ljava/util/ArrayList;

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->I:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_4

    .line 361
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 362
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/n;->I:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    :cond_4
    return-void
.end method
