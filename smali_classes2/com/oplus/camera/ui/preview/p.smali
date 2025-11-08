.class public Lcom/oplus/camera/ui/preview/p;
.super Landroid/view/View;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/p$a;,
        Lcom/oplus/camera/ui/preview/p$b;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Point;

.field private B:Landroid/graphics/Paint;

.field private C:Lcom/oplus/camera/ui/preview/p$a;

.field private D:Lcom/oplus/camera/ui/preview/p$a;

.field private E:Lcom/oplus/camera/ui/preview/p$a;

.field private F:Landroid/animation/ValueAnimator;

.field private G:Landroid/animation/ValueAnimator;

.field private H:Landroid/animation/ValueAnimator;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/AnimatorSet;

.field private L:Landroid/animation/AnimatorSet;

.field private M:[F

.field private N:[F

.field private O:[F

.field private P:[I

.field private Q:[I

.field private R:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oplus/camera/ui/preview/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/oplus/camera/ui/preview/p$b;

.field private T:Landroid/hardware/SensorEventCallback;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:J

.field private r:J

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 565
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    .line 66
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->b:Z

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->c:Z

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->d:Z

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    .line 70
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->f:Z

    .line 71
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->g:I

    .line 72
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    .line 73
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    .line 74
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->j:I

    .line 75
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->k:I

    .line 76
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->l:I

    .line 77
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->m:I

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->n:I

    const/high16 v1, 0x437f0000    # 255.0f

    .line 79
    iput v1, p0, Lcom/oplus/camera/ui/preview/p;->o:F

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/oplus/camera/ui/preview/p;->p:F

    const-wide/16 v1, 0x0

    .line 81
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/p;->q:J

    .line 82
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/p;->r:J

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->s:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->t:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    .line 95
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    .line 96
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    .line 97
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    .line 99
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    .line 100
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/p$a;-><init>(Lcom/oplus/camera/ui/preview/p$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    .line 103
    new-instance v0, Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/p$a;-><init>(Lcom/oplus/camera/ui/preview/p$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    .line 104
    new-instance v0, Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/p$a;-><init>(Lcom/oplus/camera/ui/preview/p$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    .line 105
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    .line 106
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    .line 107
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    .line 108
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    .line 109
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    .line 110
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    .line 111
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    const/4 v0, 0x3

    .line 113
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/p;->M:[F

    const/4 v2, 0x4

    .line 114
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/p;->N:[F

    .line 115
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    .line 116
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->P:[I

    const/4 v0, 0x1

    .line 117
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->Q:[I

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    .line 120
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->S:Lcom/oplus/camera/ui/preview/p$b;

    .line 122
    new-instance v0, Lcom/oplus/camera/ui/preview/p$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/p$1;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->T:Landroid/hardware/SensorEventCallback;

    .line 566
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(FF)F
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/p;->c(FF)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    return p1
.end method

.method private a(J)V
    .locals 9

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 221
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 222
    :goto_1
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/p;->Q:[I

    aget v7, v6, v3

    const/4 v8, 0x0

    if-eq v2, v7, :cond_2

    const/4 v7, 0x4

    aget v6, v6, v3

    if-ne v7, v6, :cond_4

    :cond_2
    const/high16 v6, 0x41a00000    # 20.0f

    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0, v6}, Lcom/oplus/camera/ui/preview/p;->a(F)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    .line 226
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;J)J

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/p;->a(F)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Z)Z

    .line 230
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p2, p2, v3

    invoke-direct {p0, p2, v6}, Lcom/oplus/camera/ui/preview/p;->b(FF)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 232
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p2, p2, v2

    invoke-direct {p0, p2, v6}, Lcom/oplus/camera/ui/preview/p;->b(FF)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->c(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v8}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;F)F

    goto/16 :goto_5

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->Q:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v5, v0, :cond_6

    if-eqz v4, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    .line 237
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->b(F)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_5
    const/high16 v0, 0x42340000    # 45.0f

    .line 238
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->b(F)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget v0, v0, v3

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v0, v6

    if-eqz v4, :cond_7

    const/high16 v4, -0x3f600000    # -5.0f

    goto :goto_3

    :cond_7
    move v4, v8

    :goto_3
    cmpl-float v0, v0, v4

    if-lez v0, :cond_a

    .line 241
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getLevelLineRectF()V

    .line 242
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getBaseLineRectF()V

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, v5}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;J)J

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->d()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Z)Z

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/preview/p$a;->c(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 249
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v2

    .line 250
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    int-to-float p2, v1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget v0, v0, v2

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;F)F

    .line 251
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;F)F

    goto :goto_5

    .line 253
    :cond_a
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getLevelLineRectF()V

    .line 254
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getBaseLineRectF()V

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;J)J

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->e()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Z)Z

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/preview/p$a;->c(Lcom/oplus/camera/ui/preview/p$a;I)I

    .line 261
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    move v1, v2

    .line 262
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    int-to-float p2, v1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget v0, v0, v3

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;F)F

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v8}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;F)F

    .line 266
    :goto_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/p;->q:J

    goto :goto_6

    :cond_c
    const-wide/16 p1, 0x0

    .line 269
    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/p;->q:J

    .line 272
    :goto_6
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    if-eqz p1, :cond_d

    .line 273
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p$a;)V

    :cond_d
    return-void
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 903
    instance-of p0, p1, Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 904
    move-object p0, p1

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 907
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 909
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 910
    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 447
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    .line 455
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 579
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    .line 580
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 582
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 584
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->g:I

    .line 586
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->p:F

    .line 587
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->j:I

    const v0, 0x7f060452

    .line 588
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->k:I

    .line 589
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->m:I

    .line 590
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->l:I

    .line 591
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0705cb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLandroid/graphics/Bitmap;)V
    .locals 2

    .line 695
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 696
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    neg-float p2, p3

    .line 697
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 688
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 689
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 690
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 691
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 3

    .line 286
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->c(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GradienterAssistView"

    const-string p1, "checkAndAddAttitude, empty attitude is dismissed."

    .line 287
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->c(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    .line 302
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->a(Z)V

    goto :goto_1

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    if-nez p1, :cond_4

    .line 305
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->d(Lcom/oplus/camera/ui/preview/p$a;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->h()V

    .line 307
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->j()V

    goto :goto_1

    .line 308
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/p;->c(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 314
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->d(Lcom/oplus/camera/ui/preview/p$a;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/p;->a(Z)V

    goto :goto_1

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 319
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 322
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->d(Lcom/oplus/camera/ui/preview/p$a;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->j()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/p;->a(J)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 413
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/preview/p$4;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/preview/p$4;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/preview/-$$Lambda$p$huPWvN5IGm0aedMQXvphT9Z-2ZM;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$p$huPWvN5IGm0aedMQXvphT9Z-2ZM;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 431
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/p$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/p$5;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/-$$Lambda$p$L53pcdHO_AJ5Es-r3YCe22h7wl4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$p$L53pcdHO_AJ5Es-r3YCe22h7wl4;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 460
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    if-eqz p1, :cond_3

    .line 465
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 466
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 469
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 470
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private a(F)Z
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    float-to-double v0, p1

    cmpg-double v0, v2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget v0, v0, v2

    .line 191
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p0, p0, v1

    .line 192
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private a(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z
    .locals 0

    .line 476
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/p;->b:Z

    return p1
.end method

.method private a([F)Z
    .locals 5

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 180
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x0

    .line 181
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->M:[F

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p;[F)[F
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p;->M:[F

    return-object p1
.end method

.method private b(FF)I
    .locals 1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    move p1, p2

    :cond_0
    div-float/2addr p1, p2

    .line 751
    iget p0, p0, Lcom/oplus/camera/ui/preview/p;->g:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    return p1
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 425
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    .line 426
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->invalidate()V

    return-void
.end method

.method private b(F)Z
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v2

    float-to-double v2, p1

    cmpg-double v0, v4, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p0, p0, v2

    .line 198
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private b(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z
    .locals 2

    .line 480
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 481
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    if-eq p0, v0, :cond_1

    .line 482
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    if-ne p0, v0, :cond_2

    .line 483
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p;[F)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->a([F)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    return-object p0
.end method

.method private static c(FF)F
    .locals 1

    sub-float/2addr p1, p0

    const/high16 p0, -0x3d4c0000    # -90.0f

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43340000    # 180.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    sub-float/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private c(F)I
    .locals 2

    .line 720
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->o:F

    return-void
.end method

.method private c(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z
    .locals 1

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/p;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/p;->b(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/p;[F)[F
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p;->N:[F

    return-object p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/p;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->P:[I

    return-object p0
.end method

.method private d(F)I
    .locals 2

    .line 726
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->o:F

    return-void
.end method

.method private d()Z
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p0, p0, v2

    .line 210
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/p;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->Q:[I

    return-object p0
.end method

.method private e()Z
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v2

    const/4 v2, 0x0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    aget p0, p0, v2

    .line 216
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/p;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->N:[F

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/p;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    return v0
.end method

.method private f()Z
    .locals 2

    .line 278
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/p;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    return p0
.end method

.method private g()Z
    .locals 2

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->O:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    const/4 v1, 0x0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBaseLineRectF()V
    .locals 6

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->t:Landroid/graphics/Rect;

    .line 740
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/p;->m:I

    sub-int/2addr v1, v2

    .line 741
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v2

    iget v4, p0, Lcom/oplus/camera/ui/preview/p;->l:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v2, v4

    .line 742
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 743
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v5

    iget p0, p0, Lcom/oplus/camera/ui/preview/p;->l:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    add-int/2addr v5, p0

    .line 739
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getCenterX()I
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getCenterY()I
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getLevelLineRectF()V
    .locals 6

    .line 732
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->s:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 733
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v2

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v2, v4

    .line 734
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 735
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v5

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    add-int/2addr v5, p0

    .line 732
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private h()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 329
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/preview/p$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/preview/p$2;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/preview/-$$Lambda$p$kyMNmhchBKZ-NtoV1RyG-_XlIiM;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$p$kyMNmhchBKZ-NtoV1RyG-_XlIiM;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 355
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 358
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/-$$Lambda$p$abpvEjp3V7jRpu-XuvjMwNhB2_k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$p$abpvEjp3V7jRpu-XuvjMwNhB2_k;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/preview/p$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/p$3;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/p$a;

    :cond_3
    if-eqz v0, :cond_5

    .line 393
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    .line 394
    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p$a;->e(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v1

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->e(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->d:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->d:Z

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x437f0000    # 255.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->i()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/p$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/p;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/p;->d:Z

    return p0
.end method

.method private j()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    .line 494
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->k()V

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->h()V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 501
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/p$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/p$6;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/p$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/p$7;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 560
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method

.method static synthetic l(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    return-object p0
.end method

.method private l()V
    .locals 7

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 711
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->S:Lcom/oplus/camera/ui/preview/p$b;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x3e8

    iget-wide v5, p0, Lcom/oplus/camera/ui/preview/p;->r:J

    sub-long v5, v0, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 712
    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/p;->r:J

    .line 713
    invoke-interface {v2}, Lcom/oplus/camera/ui/preview/p$b;->a()V

    :cond_0
    const/4 v0, 0x1

    .line 716
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->c:Z

    return-void
.end method

.method public static synthetic lambda$L53pcdHO_AJ5Es-r3YCe22h7wl4(Lcom/oplus/camera/ui/preview/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$abpvEjp3V7jRpu-XuvjMwNhB2_k(Lcom/oplus/camera/ui/preview/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$huPWvN5IGm0aedMQXvphT9Z-2ZM(Lcom/oplus/camera/ui/preview/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$kyMNmhchBKZ-NtoV1RyG-_XlIiM(Lcom/oplus/camera/ui/preview/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->j()V

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/ui/preview/p;)Ljava/util/LinkedList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/ui/preview/p;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/camera/ui/preview/p;->p:F

    return p0
.end method

.method static synthetic q(Lcom/oplus/camera/ui/preview/p;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/p;->c:Z

    return p0
.end method

.method static synthetic r(Lcom/oplus/camera/ui/preview/p;)Landroid/hardware/SensorEventCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->T:Landroid/hardware/SensorEventCallback;

    return-object p0
.end method

.method static synthetic s(Lcom/oplus/camera/ui/preview/p;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/p;->b:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "GradienterAssistView"

    const-string v1, "startDrawGradienter."

    .line 755
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/p;->setVisibility(I)V

    .line 765
    new-instance v0, Lcom/oplus/camera/ui/preview/p$8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/p$8;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 781
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->j:I

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08046b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oplus/camera/ui/preview/p;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 789
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/oplus/camera/ui/preview/p;->j:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 794
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 799
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08046a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    .line 802
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 803
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 804
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    .line 807
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 808
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 809
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "GradienterAssistView"

    const-string v1, "stopDrawGradienter."

    .line 814
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v0, Lcom/oplus/camera/ui/preview/p$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/p$9;-><init>(Lcom/oplus/camera/ui/preview/p;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 833
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->invalidate()V

    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    .line 835
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    .line 836
    iput v0, p0, Lcom/oplus/camera/ui/preview/p;->i:I

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->C:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->i(Lcom/oplus/camera/ui/preview/p$a;)V

    .line 838
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->i(Lcom/oplus/camera/ui/preview/p$a;)V

    const/4 v0, 0x4

    .line 839
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/p;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->R:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 846
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 847
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->F:Landroid/animation/ValueAnimator;

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 851
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 852
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->G:Landroid/animation/ValueAnimator;

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 856
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 857
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->H:Landroid/animation/ValueAnimator;

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 861
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 862
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->K:Landroid/animation/AnimatorSet;

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 866
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 867
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->I:Landroid/animation/ValueAnimator;

    .line 870
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    .line 871
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 872
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->J:Landroid/animation/ValueAnimator;

    .line 875
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 876
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/animation/Animator;)V

    .line 877
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->L:Landroid/animation/AnimatorSet;

    .line 880
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 881
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 882
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    .line 885
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 886
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 887
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    .line 890
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 891
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 892
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    .line 895
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 896
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 897
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    :cond_b
    return-void
.end method

.method public c()Z
    .locals 6

    .line 928
    iget-wide v0, p0, Lcom/oplus/camera/ui/preview/p;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/ui/preview/p;->q:J

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->E:Lcom/oplus/camera/ui/preview/p$a;

    .line 933
    invoke-static {p0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "horizontal"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "vertical"

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 608
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->a:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xff

    .line 609
    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    if-le v0, v1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Gradienter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradienterAssistView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 620
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->f:Z

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    const/4 v0, 0x5

    .line 624
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->l()V

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->z:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/preview/p;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/preview/p;->d(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 630
    :cond_2
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/p;->c:Z

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 632
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/preview/p;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/preview/p;->d(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 633
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->y:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p$a;->f(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/p;->c(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    .line 635
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p$a;->g(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/p;->d(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    .line 634
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    .line 638
    invoke-static {v4}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v4

    if-ne v0, v4, :cond_d

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->e(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 642
    :goto_0
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    const/high16 v5, 0x42b40000    # 90.0f

    if-eqz v4, :cond_6

    .line 643
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 645
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/p$a;->e(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v4

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 648
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oplus/camera/ui/preview/p;->k:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/oplus/camera/ui/preview/p;->o:F

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 651
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/p;->t:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v4, v6}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 653
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    const/high16 v6, -0x3d4c0000    # -90.0f

    if-eqz v4, :cond_8

    .line 654
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v6, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 656
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->e(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v0, v4, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 659
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    if-ne v1, v0, :cond_a

    .line 660
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 663
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->B:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/ui/preview/p;->h:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 666
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    if-ne v1, v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    .line 667
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 668
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->l()V

    .line 669
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->s:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 671
    :cond_c
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/p;->c:Z

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->s:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p$a;->h(Lcom/oplus/camera/ui/preview/p$a;)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/p;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/oplus/camera/ui/preview/p;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLandroid/graphics/Bitmap;)V

    .line 675
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->D:Lcom/oplus/camera/ui/preview/p$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;)I

    move-result v0

    if-ne v1, v0, :cond_d

    .line 676
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p;->getCenterY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 680
    :cond_d
    :goto_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/p;->f:Z

    if-eqz v0, :cond_e

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p;->A:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_e
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 596
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 598
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p;->t:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 599
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSizeChanged, need invalidate, mBaseLineRect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/p;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GradienterAssistView"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/p;->a(J)V

    .line 602
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnAdjustedListener(Lcom/oplus/camera/ui/preview/p$b;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p;->S:Lcom/oplus/camera/ui/preview/p$b;

    return-void
.end method

.method public setViewLayoutType(I)V
    .locals 1

    .line 162
    iput p1, p0, Lcom/oplus/camera/ui/preview/p;->n:I

    .line 163
    iget p1, p0, Lcom/oplus/camera/ui/preview/p;->n:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/p;->a(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/p;->e:Z

    .line 164
    iget p1, p0, Lcom/oplus/camera/ui/preview/p;->n:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/p;->a(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/p;->f:Z

    return-void
.end method
