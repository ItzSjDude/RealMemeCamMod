.class public Lcom/oplus/camera/ui/widget/b;
.super Landroid/view/View;
.source "SlowVideoModeSeekBar.java"

# interfaces
.implements Landroidx/dynamicanimation/a/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/b$a;,
        Lcom/oplus/camera/ui/widget/b$b;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/PointF;

.field private B:Lcom/oplus/camera/ui/widget/b$b;

.field private C:Landroidx/dynamicanimation/a/f;

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

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/Paint;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/widget/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->b:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->c:I

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->d:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->f:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->g:I

    .line 50
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->h:I

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->i:I

    .line 52
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->j:I

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->k:I

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->l:I

    .line 56
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->m:I

    .line 57
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->n:I

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->o:I

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->q:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/oplus/camera/ui/widget/b;->t:J

    .line 65
    iput-wide v1, p0, Lcom/oplus/camera/ui/widget/b;->u:J

    .line 66
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/b;->v:Z

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    .line 75
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    .line 76
    iput-object v1, p0, Lcom/oplus/camera/ui/widget/b;->B:Lcom/oplus/camera/ui/widget/b$b;

    .line 77
    iput-object v1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    .line 85
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/ui/widget/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 402
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    if-eq v0, v1, :cond_3

    .line 403
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 405
    iget-wide v2, p0, Lcom/oplus/camera/ui/widget/b;->u:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 406
    iget-wide v2, p0, Lcom/oplus/camera/ui/widget/b;->t:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 407
    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->q:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/widget/b;->v:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x168

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 408
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    .line 409
    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 410
    :goto_1
    iput v1, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    .line 411
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->invalidate()V

    goto :goto_2

    .line 413
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    :cond_3
    :goto_2
    return-void
.end method

.method private a(FF)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/a/f;->b(Landroidx/dynamicanimation/a/c$c;)V

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    invoke-virtual {v0}, Landroidx/dynamicanimation/a/f;->b()V

    .line 377
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/a/f;

    new-instance v1, Landroidx/dynamicanimation/a/e;

    invoke-direct {v1, p1}, Landroidx/dynamicanimation/a/e;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/f;-><init>(Landroidx/dynamicanimation/a/e;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    .line 378
    new-instance p1, Landroidx/dynamicanimation/a/g;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/a/g;-><init>(F)V

    const p2, 0x44bb8000    # 1500.0f

    .line 379
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/a/g;->a(F)Landroidx/dynamicanimation/a/g;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 380
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/a/g;->b(F)Landroidx/dynamicanimation/a/g;

    .line 381
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/a/f;->a(Landroidx/dynamicanimation/a/g;)Landroidx/dynamicanimation/a/f;

    .line 383
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 384
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/a/f;->e(F)Landroidx/dynamicanimation/a/c;

    .line 386
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/a/f;->f(F)Landroidx/dynamicanimation/a/c;

    .line 387
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/a/f;->a(Landroidx/dynamicanimation/a/c$c;)Landroidx/dynamicanimation/a/c;

    .line 388
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    invoke-virtual {p0}, Landroidx/dynamicanimation/a/f;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/widget/b;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/widget/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->m:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->k:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/widget/b$a;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/b$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 180
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 182
    iget v5, v4, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v5, v2

    .line 183
    iget v2, v4, Landroid/graphics/PointF;->y:F

    .line 184
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070ab1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v2, v7

    iget v7, p0, Lcom/oplus/camera/ui/widget/b;->b:I

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 186
    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v7, v2, v7

    .line 187
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 188
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v3

    div-float/2addr v8, v6

    add-float/2addr v2, v8

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 191
    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 192
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 103
    sget-object v0, Lcom/oplus/camera/R$styleable;->SlowVideoModeSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/16 v0, 0xd

    const v2, 0x7f070aad

    const/4 v3, 0x1

    .line 108
    :try_start_0
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 107
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    const/16 v0, 0xc

    const v2, 0x7f070aac

    .line 110
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->b:I

    const/16 v0, 0xb

    const v2, 0x7f06050e

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 111
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->c:I

    const/16 v0, 0xa

    const/16 v2, 0x4c

    .line 113
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->d:I

    const/4 v0, 0x7

    const v2, 0x7f070ab2

    .line 116
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 115
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    const/4 v0, 0x6

    const v2, 0x7f060512

    .line 118
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 117
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->f:I

    const/4 v0, 0x3

    const v2, 0x7f070aaf

    .line 121
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 120
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->g:I

    const/4 v0, 0x2

    .line 123
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    .line 122
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->h:I

    const v0, 0x7f070aae

    .line 125
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->i:I

    const v0, 0x7f06050f

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 126
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->j:I

    const/16 v0, 0x9

    const v1, 0x7f070ab3

    .line 130
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 129
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->k:I

    const/16 v0, 0x8

    const v1, 0x7f060513

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 131
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->l:I

    const/4 v0, 0x5

    const v1, 0x7f070ab0

    .line 134
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 133
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/widget/b;->m:I

    const/4 p3, 0x4

    .line 136
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p1

    .line 135
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/b;->n:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 138
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    .line 140
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    throw p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartX()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    int-to-float v2, v1

    .line 209
    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 210
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartY()F

    move-result v3

    .line 211
    iget v4, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 214
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 215
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 222
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 224
    iget-boolean v2, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->g:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->j:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->i:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private b(I)Z
    .locals 0

    .line 198
    iget p0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartX()I

    move-result v0

    int-to-float v2, v0

    .line 245
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartY()F

    move-result v5

    .line 247
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    int-to-float v0, v0

    add-float v4, v2, v0

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/b;->x:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getLineStartX()I
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    sub-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private getLineStartY()F
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e8888f8

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/widget/b$a;

    .line 462
    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/b$a;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 463
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/b$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/b$a;->a()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->o:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    const-string v1, "SlowVideoModeSeekBar"

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    iget v2, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/b$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/b$a;->a()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->o:I

    const-string v0, "updateSelectedFrame, default index not found, use last index"

    .line 473
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelectedFrame, frame: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mSelectedIndex: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-lez p1, :cond_0

    .line 419
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 421
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    if-ne p1, v0, :cond_1

    return-void

    .line 425
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    if-eqz p2, :cond_5

    .line 428
    iget p1, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    iput p1, p0, Lcom/oplus/camera/ui/widget/b;->q:I

    .line 429
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/widget/b;->t:J

    .line 431
    iget p1, p0, Lcom/oplus/camera/ui/widget/b;->s:I

    iget p2, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 435
    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/b;->v:Z

    .line 436
    iget-wide v0, p0, Lcom/oplus/camera/ui/widget/b;->t:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/widget/b;->u:J

    goto :goto_3

    .line 438
    :cond_5
    iget p1, p0, Lcom/oplus/camera/ui/widget/b;->q:I

    iput p1, p0, Lcom/oplus/camera/ui/widget/b;->r:I

    .line 441
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->invalidate()V

    return-void
.end method

.method public a(Landroidx/dynamicanimation/a/c;FF)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 394
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->a()V

    .line 162
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/b;->c(Landroid/graphics/Canvas;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/b;->b(Landroid/graphics/Canvas;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/b;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartX()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/b;->getLineStartY()F

    move-result p0

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_4

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    if-eqz v0, :cond_b

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 302
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 305
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 306
    iget v0, v3, Landroid/graphics/PointF;->x:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 312
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/oplus/camera/ui/widget/b;->e:I

    shr-int/2addr v3, v2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 313
    iput v1, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->postInvalidate()V

    goto/16 :goto_4

    .line 329
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    if-eqz v0, :cond_b

    .line 330
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->a:I

    int-to-float v0, v0

    move v3, v0

    move v0, v1

    .line 333
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 334
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 336
    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_5

    .line 339
    iput v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    move v3, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 343
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/widget/b;->a(FF)V

    .line 350
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->p:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/b$a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/b$a;->a()I

    move-result p1

    .line 352
    iget v0, p0, Lcom/oplus/camera/ui/widget/b;->o:I

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->B:Lcom/oplus/camera/ui/widget/b$b;

    if-eqz v0, :cond_8

    .line 353
    iput p1, p0, Lcom/oplus/camera/ui/widget/b;->o:I

    .line 354
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/widget/b$b;->onSlowVideoFrameChange(I)V

    .line 357
    :cond_8
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/b;->postInvalidate()V

    goto :goto_4

    .line 271
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    move v3, v1

    .line 275
    :goto_3
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 276
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 277
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 278
    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v6, v0, v5

    .line 280
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42a00000    # 80.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    .line 281
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->A:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, v5}, Lcom/oplus/camera/ui/widget/b;->a(FF)V

    .line 282
    iput-boolean v2, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    if-eqz p1, :cond_b

    .line 285
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/a/f;->b(Landroidx/dynamicanimation/a/c$c;)V

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    invoke-virtual {p1}, Landroidx/dynamicanimation/a/f;->b()V

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/b;->C:Landroidx/dynamicanimation/a/f;

    goto :goto_4

    .line 292
    :cond_a
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/b;->w:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    return v2
.end method

.method public setFrameList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/widget/b$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/b;->y:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFrameList: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlowVideoModeSeekBar"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModeFrameChangeListener(Lcom/oplus/camera/ui/widget/b$b;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/b;->B:Lcom/oplus/camera/ui/widget/b$b;

    return-void
.end method
