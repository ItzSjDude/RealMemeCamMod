.class public Lcom/oplus/camera/gl/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field protected final a:Landroid/graphics/Rect;

.field protected final b:Landroid/graphics/Rect;

.field protected c:Lcom/oplus/camera/gl/GLView;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private j:Lcom/oplus/camera/gl/n;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/gl/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/oplus/camera/gl/GLView;

.field private m:Lcom/oplus/camera/gl/f;

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/GLView;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->d:I

    .line 51
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->e:I

    .line 52
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->f:I

    .line 53
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->g:I

    .line 54
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->h:I

    .line 55
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->i:I

    .line 67
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->n:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->o:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/gl/GLView;->p:I

    return-void
.end method

.method private b(IIII)Z
    .locals 3

    sub-int v0, p3, p1

    .line 372
    iget-object v1, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 374
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 90
    iget p0, p0, Lcom/oplus/camera/gl/GLView;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public a(I)Lcom/oplus/camera/gl/GLView;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/oplus/camera/gl/GLView;->k:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/GLView;

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method protected a(II)V
    .locals 0

    return-void
.end method

.method public a(IIII)V
    .locals 6

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/gl/GLView;->b(IIII)Z

    move-result v1

    .line 363
    iget v0, p0, Lcom/oplus/camera/gl/GLView;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oplus/camera/gl/GLView;->n:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 368
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/gl/GLView;->a(ZIIII)V

    return-void
.end method

.method protected a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 249
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLView;->b(Lcom/oplus/camera/gl/h;)V

    .line 250
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 251
    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/GLView;->a(I)Lcom/oplus/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/gl/GLView;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/oplus/camera/gl/h;I)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/GLView;)V
    .locals 5

    .line 263
    invoke-virtual {p2}, Lcom/oplus/camera/gl/GLView;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/oplus/camera/gl/GLView;->m:Lcom/oplus/camera/gl/f;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p2, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/oplus/camera/gl/GLView;->g:I

    sub-int/2addr v0, v1

    .line 268
    iget-object v1, p2, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oplus/camera/gl/GLView;->f:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    .line 270
    invoke-interface {p1, v2, v3}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 272
    iget-object v2, p2, Lcom/oplus/camera/gl/GLView;->m:Lcom/oplus/camera/gl/f;

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {v2}, Lcom/oplus/camera/gl/f;->a()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 275
    invoke-static {}, Lcom/oplus/camera/gl/b;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/gl/f;->b(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->e()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 278
    iput-object p0, p2, Lcom/oplus/camera/gl/GLView;->m:Lcom/oplus/camera/gl/f;

    .line 280
    :goto_0
    invoke-virtual {v2, p1}, Lcom/oplus/camera/gl/f;->a(Lcom/oplus/camera/gl/h;)V

    .line 283
    :cond_2
    invoke-virtual {p2, p1}, Lcom/oplus/camera/gl/GLView;->a(Lcom/oplus/camera/gl/h;)V

    if-eqz v2, :cond_3

    .line 286
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    :cond_3
    neg-int p0, v0

    int-to-float p0, p0

    neg-int p2, v1

    int-to-float p2, p2

    .line 289
    invoke-interface {p1, p0, p2}, Lcom/oplus/camera/gl/h;->a(FF)V

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/n;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/gl/GLView;->c:Lcom/oplus/camera/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/GLView;->j:Lcom/oplus/camera/gl/n;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/gl/y;->a(Z)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLView;->b(Lcom/oplus/camera/gl/n;)V

    return-void
.end method

.method protected a(ZIIII)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected a(Landroid/view/MotionEvent;IILcom/oplus/camera/gl/GLView;Z)Z
    .locals 2

    .line 298
    iget-object p0, p4, Lcom/oplus/camera/gl/GLView;->a:Landroid/graphics/Rect;

    .line 299
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 300
    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    .line 302
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    neg-int p0, v0

    int-to-float p0, p0

    neg-int p2, v1

    int-to-float p2, p2

    .line 303
    invoke-virtual {p1, p0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 305
    invoke-virtual {p4, p1}, Lcom/oplus/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    int-to-float p0, v0

    int-to-float p2, v1

    .line 306
    invoke-virtual {p1, p0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p0, 0x1

    return p0

    :cond_1
    int-to-float p0, v0

    int-to-float p2, v1

    .line 310
    invoke-virtual {p1, p0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/gl/GLView;->c:Lcom/oplus/camera/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/GLView;->j:Lcom/oplus/camera/gl/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/gl/y;->a(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->g()V

    return-void
.end method

.method protected b(Lcom/oplus/camera/gl/h;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/oplus/camera/gl/n;)V
    .locals 3

    .line 449
    iput-object p1, p0, Lcom/oplus/camera/gl/GLView;->j:Lcom/oplus/camera/gl/n;

    .line 450
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 451
    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/GLView;->a(I)Lcom/oplus/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oplus/camera/gl/GLView;->b(Lcom/oplus/camera/gl/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 321
    iget-object v5, p0, Lcom/oplus/camera/gl/GLView;->l:Lcom/oplus/camera/gl/GLView;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v8, :cond_0

    .line 323
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v5, p0, Lcom/oplus/camera/gl/GLView;->l:Lcom/oplus/camera/gl/GLView;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oplus/camera/gl/GLView;Z)Z

    .line 326
    iput-object v10, p0, Lcom/oplus/camera/gl/GLView;->l:Lcom/oplus/camera/gl/GLView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    .line 328
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oplus/camera/gl/GLView;Z)Z

    if-eq v8, v11, :cond_1

    if-ne v8, v9, :cond_2

    .line 331
    :cond_1
    iput-object v10, p0, Lcom/oplus/camera/gl/GLView;->l:Lcom/oplus/camera/gl/GLView;

    :cond_2
    return v9

    :cond_3
    :goto_0
    if-nez v8, :cond_6

    .line 340
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->c()I

    move-result v1

    sub-int/2addr v1, v9

    move v8, v1

    :goto_1
    if-ltz v8, :cond_6

    .line 341
    invoke-virtual {p0, v8}, Lcom/oplus/camera/gl/GLView;->a(I)Lcom/oplus/camera/gl/GLView;

    move-result-object v10

    .line 343
    invoke-virtual {v10}, Lcom/oplus/camera/gl/GLView;->a()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, v10

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/gl/GLView;->a(Landroid/view/MotionEvent;IILcom/oplus/camera/gl/GLView;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 348
    iput-object v10, p0, Lcom/oplus/camera/gl/GLView;->l:Lcom/oplus/camera/gl/GLView;

    return v9

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 354
    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLView;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/gl/GLView;->k:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public d()Lcom/oplus/camera/gl/n;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oplus/camera/gl/GLView;->j:Lcom/oplus/camera/gl/n;

    return-object p0
.end method

.method public e()V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->d()Lcom/oplus/camera/gl/n;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 219
    invoke-interface {p0}, Lcom/oplus/camera/gl/n;->a()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 3

    .line 456
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLView;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/GLView;->a(I)Lcom/oplus/camera/gl/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/gl/GLView;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/oplus/camera/gl/GLView;->j:Lcom/oplus/camera/gl/n;

    return-void
.end method
