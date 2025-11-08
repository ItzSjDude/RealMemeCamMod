.class public abstract Lcom/oplus/camera/ui/menu/levelcontrol/j;
.super Ljava/lang/Object;
.source "GLProducerRender.java"

# interfaces
.implements Lcom/oplus/camera/gl/m$m;
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/j$a;,
        Lcom/oplus/camera/ui/menu/levelcontrol/j$b;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:Z

.field protected F:Lcom/oplus/camera/ui/preview/a/l$a;

.field private G:[I

.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

.field protected d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

.field protected e:Z

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:I

.field protected j:I

.field protected k:Landroid/view/animation/Interpolator;

.field protected l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

.field protected m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

.field protected n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

.field protected o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

.field protected p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:[F

.field protected u:I

.field protected v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/levelcontrol/t;",
            ">;"
        }
    .end annotation
.end field

.field protected w:F

.field protected x:F

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b:I

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    .line 40
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->e:Z

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    .line 42
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->g:F

    .line 43
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h:F

    .line 44
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->i:I

    const/16 v3, 0x1a

    .line 45
    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->j:I

    .line 46
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->k:Landroid/view/animation/Interpolator;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 52
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->q:Z

    .line 53
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->r:Z

    .line 54
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->s:Z

    const/4 v1, 0x4

    .line 55
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->t:[F

    const/16 v1, 0xa

    .line 56
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->E:Z

    .line 70
    sget-object v0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->F:Lcom/oplus/camera/ui/preview/a/l$a;

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(IIII)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v1, "portrait_retention"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq p2, v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "oplus_video_filter_portrait_retention"

    .line 351
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    goto/16 :goto_6

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "portrait_streamer"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 363
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    if-ne v1, p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f0804b2

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 364
    :goto_0
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    .line 372
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    goto/16 :goto_8

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "neon-2020.cube.rgb.bin"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "oplus_video_filter_neon"

    .line 374
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_4

    goto/16 :goto_4

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "sky-blue.cube.rgb.bin"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 385
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    if-ne v1, p1, :cond_6

    .line 387
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f0804a2

    if-eqz p1, :cond_5

    .line 388
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 390
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 386
    :goto_1
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    .line 394
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    goto/16 :goto_8

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "red-red.cube.rgb.bin"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 396
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    if-ne v1, p1, :cond_9

    .line 398
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f0804a4

    if-eqz p1, :cond_8

    .line 399
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 401
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 397
    :goto_2
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    .line 405
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    goto/16 :goto_8

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v2, "tree-green.cube.rgb.bin"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 407
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    if-ne v1, p1, :cond_c

    .line 409
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f0804a3

    if-eqz p1, :cond_b

    .line 410
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    .line 412
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 408
    :goto_3
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    .line 416
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    goto/16 :goto_8

    .line 418
    :cond_d
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f(II)V

    goto/16 :goto_8

    .line 375
    :cond_e
    :goto_4
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    if-ne v1, p1, :cond_10

    .line 377
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f08040c

    if-eqz p1, :cond_f

    .line 378
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5

    .line 380
    :cond_f
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 376
    :goto_5
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    .line 383
    :cond_10
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    goto :goto_8

    .line 352
    :cond_11
    :goto_6
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    if-ne v1, p1, :cond_13

    .line 354
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p1

    const v0, 0x7f08040e

    if-eqz p1, :cond_12

    .line 355
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_7

    .line 357
    :cond_12
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 353
    :goto_7
    invoke-static {p1, p3, p4}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    .line 361
    :cond_13
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d(II)V

    :goto_8
    return-void
.end method

.method private k()V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 227
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    aget v0, v0, v2

    const v3, 0x8d40

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v4, 0xde1

    .line 232
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 233
    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v5

    .line 232
    invoke-static {v3, v0, v4, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 234
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->t:[F

    aget v0, p0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    aget p0, p0, v2

    invoke-static {v0, v1, v4, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4000

    .line 235
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 236
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 238
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h:F

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->i:I

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->w:F

    .line 522
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->x:F

    return-void
.end method

.method public a(FFILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    add-float/2addr p1, p2

    .line 122
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->g:F

    .line 123
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h:F

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startScrollAnim, mCurrPosition: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mToPosition: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->g:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mAnimDistance: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLProducerRender"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p3, :cond_0

    const-string p1, "startScrollAnim, durationFrame must > 0!"

    .line 129
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->i:I

    if-lez p1, :cond_1

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->j:I

    if-le p2, p1, :cond_1

    sub-int p3, p2, p1

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->i:I

    .line 137
    :cond_1
    :goto_0
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->j:I

    if-eqz p4, :cond_2

    .line 140
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->k:Landroid/view/animation/Interpolator;

    :cond_2
    if-eqz p5, :cond_3

    .line 144
    iput-object p5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->l:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b:I

    return-void
.end method

.method public a(II)V
    .locals 6

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLProducerRender"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 275
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    sub-double/2addr v2, v0

    .line 279
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(I)V

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(I)V

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->r:Z

    :cond_2
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 452
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 453
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 459
    :cond_2
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->a(Landroid/graphics/Bitmap;)V

    .line 465
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->n:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createRingTexture, length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLProducerRender"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 327
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 328
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/polarr/renderer/entities/DrawingItem;

    iput-object p2, p0, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/m;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/oplus/camera/ui/menu/levelcontrol/i;Z)V
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/j$a;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->F:Lcom/oplus/camera/ui/preview/a/l$a;

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(Lcom/oplus/camera/ui/preview/a/l$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v1, "GLProducerRender"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrawFrame, mDisableFrameNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    return-void

    .line 439
    :cond_1
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->t:[F

    aget v1, v0, v2

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 441
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "onDrawFrame, vertex not ready"

    .line 425
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->E:Z

    return-void
.end method

.method public a([F)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->t:[F

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)Z
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()F
    .locals 0

    .line 154
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    return p0
.end method

.method public b(I)V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const-string v1, "GLProducerRender"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_5

    .line 249
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->q:Z

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->k()V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(IILjava/util/List;F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->q:Z

    goto :goto_0

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->s:Z

    if-nez v0, :cond_4

    .line 253
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->q:Z

    if-nez v0, :cond_3

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->k()V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f:F

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(IILjava/util/List;F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->q:Z

    .line 260
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result p0

    invoke-virtual {p1, p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e(II)V

    goto :goto_2

    .line 262
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-string p0, "onDrawFrame, drawOesTexture."

    .line 266
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p0, "onDrawFrame, vertex not ready"

    .line 243
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/gl/m;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public c()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 335
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 336
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/k;

    .line 338
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 339
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v2

    .line 338
    invoke-static {p1, v1, v2}, Lcom/oplus/camera/ui/preview/a/j;->a(Lco/polarr/renderer/entities/DrawingItem;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, v0, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a(Landroid/content/Context;)V

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b(II)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 296
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 299
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 300
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->k()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d(I)V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e(I)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;II)V

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->u:I

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;Z)V

    :cond_1
    return-void
.end method

.method public g()I
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    return-void
.end method

.method public j()V
    .locals 4

    const-string v0, "GLProducerRender"

    const-string v1, "releaseResource"

    .line 471
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result v3

    invoke-static {v0, v2, v3}, Lco/polarr/renderer/PolarrRender;->clearTextureHelper(III)V

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 476
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 481
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 484
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    const/4 v2, -0x1

    if-eq v2, v0, :cond_2

    .line 485
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 486
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->y:I

    .line 489
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    if-eq v2, v0, :cond_3

    .line 490
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 491
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->z:I

    .line 494
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    if-eq v2, v0, :cond_4

    .line 495
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 496
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->A:I

    .line 499
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    if-eq v2, v0, :cond_5

    .line 500
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 501
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->C:I

    .line 504
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    if-eq v2, v0, :cond_6

    .line 505
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 506
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->B:I

    .line 509
    :cond_6
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    if-eq v2, v0, :cond_7

    .line 510
    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 511
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->D:I

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 515
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 516
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->G:[I

    :cond_8
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->e:Z

    .line 114
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    if-eqz p0, :cond_0

    .line 115
    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j$a;->b()V

    :cond_0
    return-void
.end method
