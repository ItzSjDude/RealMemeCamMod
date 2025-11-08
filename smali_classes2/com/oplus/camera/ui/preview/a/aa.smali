.class public Lcom/oplus/camera/ui/preview/a/aa;
.super Ljava/lang/Object;
.source "TexturePreviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/aa$e;,
        Lcom/oplus/camera/ui/preview/a/aa$a;,
        Lcom/oplus/camera/ui/preview/a/aa$d;,
        Lcom/oplus/camera/ui/preview/a/aa$c;,
        Lcom/oplus/camera/ui/preview/a/aa$b;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/tiltshift/TiltShiftParam;

.field private B:[I

.field private C:[I

.field private D:Ljava/lang/String;

.field private E:Lcom/oplus/camera/ui/preview/a/aa$c;

.field private F:Lcom/oplus/camera/ui/preview/a/aa$d;

.field private G:Lcom/oplus/camera/ui/preview/a/aa$e;

.field private H:Lcom/oplus/camera/ui/preview/a/aa$b;

.field private I:Lcom/oplus/camera/ui/preview/a/aa$a;

.field private J:Landroid/graphics/Point;

.field private K:Lcom/oplus/camera/c$a;

.field private L:[B

.field private M:J

.field private N:I

.field private O:Z

.field private P:I

.field private a:Lcom/oplus/camera/sticker/data/StickerItem;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:F

.field private v:F

.field private w:Z

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->b:I

    const-string v2, "rosy_nude"

    .line 36
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->c:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->d:I

    .line 38
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->e:Z

    const-string v2, "default"

    .line 40
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->f:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->g:I

    const/4 v2, -0x1

    .line 42
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->h:I

    .line 43
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->i:I

    .line 44
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->j:Z

    .line 45
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->k:Z

    const/4 v2, 0x1

    .line 46
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->l:Z

    .line 47
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->m:Z

    .line 48
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->n:Z

    .line 49
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->o:Z

    .line 50
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->p:Z

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->q:Z

    .line 52
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->r:Z

    .line 53
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->s:Z

    .line 54
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->t:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->u:F

    .line 56
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->v:F

    .line 57
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->w:Z

    .line 58
    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v3, Lcom/oplus/camera/d;->c:Ljava/math/BigDecimal;

    .line 59
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->x:F

    const/4 v2, 0x0

    .line 61
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->y:F

    .line 62
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->z:F

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->A:Lcom/oplus/camera/tiltshift/TiltShiftParam;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->B:[I

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->C:[I

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->D:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->F:Lcom/oplus/camera/ui/preview/a/aa$d;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->H:Lcom/oplus/camera/ui/preview/a/aa$b;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->I:Lcom/oplus/camera/ui/preview/a/aa$a;

    .line 72
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->J:Landroid/graphics/Point;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->L:[B

    const-wide/16 v2, 0x0

    .line 75
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->M:J

    .line 76
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->N:I

    .line 77
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->O:Z

    const/4 v0, 0x5

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->P:I

    return-void
.end method

.method private M()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->F:Lcom/oplus/camera/ui/preview/a/aa$d;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/aa;->N:I

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 409
    :goto_0
    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/preview/a/aa$d;->b(Z)V

    .line 410
    iput v2, p0, Lcom/oplus/camera/ui/preview/a/aa;->N:I

    :cond_1
    return-void
.end method

.method private N()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    if-eqz v0, :cond_0

    .line 440
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->p:Z

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/aa$e;->b(Z)V

    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->I:Lcom/oplus/camera/ui/preview/a/aa$a;

    if-eqz p0, :cond_0

    .line 475
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$a;->c(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 353
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->s:Z

    return p0
.end method

.method public B()I
    .locals 0

    .line 365
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->g:I

    return p0
.end method

.method public C()I
    .locals 0

    .line 377
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->h:I

    return p0
.end method

.method public D()Z
    .locals 0

    .line 419
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->t:Z

    return p0
.end method

.method public E()F
    .locals 0

    .line 431
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->u:F

    return p0
.end method

.method public F()F
    .locals 0

    .line 435
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->v:F

    return p0
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    return-void
.end method

.method public H()Lcom/oplus/camera/ui/preview/a/aa$b;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->H:Lcom/oplus/camera/ui/preview/a/aa$b;

    return-object p0
.end method

.method public I()Landroid/graphics/Point;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->J:Landroid/graphics/Point;

    return-object p0
.end method

.method public J()I
    .locals 0

    .line 461
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->P:I

    return p0
.end method

.method public K()I
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->k:Z

    return p0
.end method

.method public L()I
    .locals 0

    .line 488
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->i:I

    return p0
.end method

.method public a()F
    .locals 0

    .line 85
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->x:F

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->x:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->M:J

    .line 297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->J:Landroid/graphics/Point;

    return-void
.end method

.method public a(Lcom/oplus/camera/c$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->q:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->q:Z

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    return-void
.end method

.method public a(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->A:Lcom/oplus/camera/tiltshift/TiltShiftParam;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$a;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->I:Lcom/oplus/camera/ui/preview/a/aa$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$b;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->H:Lcom/oplus/camera/ui/preview/a/aa$b;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$c;)V
    .locals 1

    .line 389
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    .line 391
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    if-eqz p1, :cond_0

    .line 392
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->l:Z

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/a/aa$c;->b(Z)V

    .line 393
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->f:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/preview/a/aa$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$d;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->F:Lcom/oplus/camera/ui/preview/a/aa$d;

    .line 399
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/aa;->M()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$e;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    .line 404
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/aa;->N()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->m:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->L:[B

    .line 285
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([I)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    if-eqz p0, :cond_0

    .line 159
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$e;->a([I)V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->y:F

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$e;->a(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->f:Ljava/lang/String;

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->E:Lcom/oplus/camera/ui/preview/a/aa$c;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->w:Z

    return-void
.end method

.method public b([I)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->G:Lcom/oplus/camera/ui/preview/a/aa$e;

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$e;->b([I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->m:Z

    return p0
.end method

.method public c(F)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->z:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->g:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->n:Z

    return-void
.end method

.method public c([I)V
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->B:[I

    return-void
.end method

.method public c()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->w:Z

    return p0
.end method

.method public d(F)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->u:F

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->h:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->o:Z

    return-void
.end method

.method public d()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->n:Z

    return p0
.end method

.method public e()Lcom/oplus/camera/tiltshift/TiltShiftParam;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->A:Lcom/oplus/camera/tiltshift/TiltShiftParam;

    return-object p0
.end method

.method public e(F)V
    .locals 0

    .line 427
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->v:F

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->P:I

    .line 470
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->g(I)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->p:Z

    .line 154
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/aa;->N()V

    return-void
.end method

.method public f()F
    .locals 0

    .line 133
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->z:F

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 492
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->i:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->e:Z

    return-void
.end method

.method public g()F
    .locals 0

    .line 137
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->y:F

    return p0
.end method

.method public g(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 214
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->N:I

    .line 215
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/aa;->M()V

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->j:Z

    return-void
.end method

.method public h()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->o:Z

    return p0
.end method

.method public i(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->O:Z

    return-void
.end method

.method public i()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->p:Z

    return p0
.end method

.method public j()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->b:I

    return p0
.end method

.method public j(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->r:Z

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->c:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->s:Z

    return-void
.end method

.method public l()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->d:I

    return p0
.end method

.method public l(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->t:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/aa;->k:Z

    return-void
.end method

.method public m()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->e:Z

    return p0
.end method

.method public n()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->j:Z

    return p0
.end method

.method public o()Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    return-object p0
.end method

.method public p()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->O:Z

    return p0
.end method

.method public q()[I
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->B:[I

    return-object p0
.end method

.method public r()Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->l:Z

    return p0
.end method

.method public s()Z
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()[B
    .locals 1

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->L:[B

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()J
    .locals 2

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-wide v0, p0, Lcom/oplus/camera/ui/preview/a/aa;->M:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()Landroid/graphics/Bitmap;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public w()I
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/c$a;->d()I

    move-result p0

    return p0
.end method

.method public x()I
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->K:Lcom/oplus/camera/c$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/c$a;->e()I

    move-result p0

    return p0
.end method

.method public y()Z
    .locals 0

    .line 341
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->q:Z

    return p0
.end method

.method public z()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/aa;->r:Z

    return p0
.end method
