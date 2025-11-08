.class public Lcom/oplus/camera/ui/widget/e;
.super Landroid/view/ViewGroup;
.source "VideoClipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/e$b;,
        Lcom/oplus/camera/ui/widget/e$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/ui/widget/e$b;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/RectF;

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/graphics/RectF;

.field private G:Landroid/graphics/RectF;

.field private H:Landroid/graphics/RectF;

.field private I:Landroid/graphics/NinePatch;

.field private J:Ljava/text/DecimalFormat;

.field private K:F

.field private L:F

.field private M:F

.field private N:Landroid/graphics/Bitmap;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:F

.field private S:F

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Landroid/graphics/RectF;

.field private a:Lcom/meicam/sdk/NvsLiveWindow;

.field private aa:Z

.field private ab:Z

.field private ac:Landroid/graphics/Paint;

.field private ad:Landroid/graphics/Paint;

.field private ae:I

.field private af:Z

.field private ag:Landroid/os/Handler;

.field private b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

.field private c:Lcom/oplus/camera/ui/RotateImageView;

.field private d:Lcom/oplus/camera/ui/RotateImageView;

.field private e:Lcom/coui/appcompat/dialog/app/c;

.field private f:I

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

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Lcom/oplus/camera/ui/widget/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 125
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    .line 53
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->f:I

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->g:I

    .line 56
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->h:I

    .line 57
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->i:I

    .line 58
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    const/16 v1, 0x780

    .line 59
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->k:I

    const/16 v1, 0x438

    .line 60
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->l:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->n:I

    const v1, 0x3fe38e39

    .line 63
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->o:F

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    .line 65
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->q:F

    .line 66
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    const/high16 v2, 0x41700000    # 15.0f

    .line 67
    iput v2, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    iput v2, p0, Lcom/oplus/camera/ui/widget/e;->t:F

    .line 69
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->u:F

    .line 70
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 71
    iput v2, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 72
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    .line 73
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->A:Lcom/oplus/camera/ui/widget/e$b;

    .line 76
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    .line 77
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    .line 78
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    .line 79
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    .line 80
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    .line 82
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    .line 84
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/e;->J:Ljava/text/DecimalFormat;

    .line 85
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    .line 86
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 87
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->M:F

    .line 88
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    .line 89
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->O:Z

    .line 90
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->P:Z

    .line 91
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->Q:Z

    .line 92
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    .line 93
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    .line 94
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    .line 95
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    .line 96
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->V:Z

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    .line 98
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->aa:Z

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    .line 101
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    .line 102
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->ae:I

    .line 103
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    .line 105
    new-instance p1, Lcom/oplus/camera/ui/widget/e$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/ui/widget/e$1;-><init>(Lcom/oplus/camera/ui/widget/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    .line 126
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->f()V

    return-void
.end method

.method private a(F)F
    .locals 2

    .line 769
    new-instance p0, Ljava/math/BigDecimal;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/e;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/e;)Lcom/oplus/camera/ui/widget/e$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 9

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 548
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->M:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 550
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    .line 551
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    .line 552
    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->t:F

    const/high16 v6, 0x41700000    # 15.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    if-eqz v3, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->i:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 557
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 558
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 559
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 561
    :cond_1
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 562
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 565
    :goto_1
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_3

    .line 566
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 567
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 569
    :cond_2
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 572
    :goto_2
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 575
    :cond_3
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_8

    .line 576
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iput v6, v7, Landroid/graphics/RectF;->left:F

    goto :goto_5

    :cond_4
    if-eqz v4, :cond_8

    .line 579
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getRight()I

    move-result v6

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->i:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 581
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 582
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 583
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 585
    :cond_5
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 586
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 589
    :goto_3
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_7

    .line 590
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_6

    .line 591
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    goto :goto_4

    .line 593
    :cond_6
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 596
    :goto_4
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 599
    :cond_7
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v6

    if-ltz v7, :cond_8

    .line 600
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iput v6, v7, Landroid/graphics/RectF;->right:F

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    if-eqz v4, :cond_10

    .line 605
    :cond_9
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_b

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_a

    .line 606
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_a

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 608
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 609
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_b

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 611
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 615
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_c

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 619
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    .line 620
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 623
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 626
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 628
    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 629
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 630
    invoke-virtual {v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    goto :goto_7

    :cond_e
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 632
    :goto_7
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->getSelectTimeRatio()F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/e;->setCurrentTime(F)V

    .line 634
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    if-eqz v1, :cond_f

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_f

    .line 635
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/widget/e$a;->c(F)V

    .line 638
    :cond_f
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    .line 639
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->M:F

    :cond_10
    return-void
.end method

.method private a(FF)Z
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    float-to-int v1, p1

    int-to-float v1, v1

    float-to-int v2, p2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    .line 679
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    .line 680
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/e;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->Q:Z

    return p1
.end method

.method private b(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    if-eqz p1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 646
    :goto_1
    new-instance v2, Landroidx/dynamicanimation/a/f;

    new-instance v3, Landroidx/dynamicanimation/a/e;

    invoke-direct {v3, v0}, Landroidx/dynamicanimation/a/e;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/a/f;-><init>(Landroidx/dynamicanimation/a/e;)V

    .line 647
    new-instance v0, Landroidx/dynamicanimation/a/g;

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/g;-><init>(F)V

    const v3, 0x44bb8000    # 1500.0f

    .line 648
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/a/g;->a(F)Landroidx/dynamicanimation/a/g;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 649
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/a/g;->b(F)Landroidx/dynamicanimation/a/g;

    .line 650
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/a/f;->a(Landroidx/dynamicanimation/a/g;)Landroidx/dynamicanimation/a/f;

    .line 652
    new-instance v0, Lcom/oplus/camera/ui/widget/e$3;

    invoke-direct {v0, p0, p1, v1}, Lcom/oplus/camera/ui/widget/e$3;-><init>(Lcom/oplus/camera/ui/widget/e;ZF)V

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/a/f;->a(Landroidx/dynamicanimation/a/c$c;)Landroidx/dynamicanimation/a/c;

    .line 666
    invoke-virtual {v2}, Landroidx/dynamicanimation/a/f;->a()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/e;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/e;->Q:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/e;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->aa:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/e;)Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/e;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/e;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/widget/e;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/widget/e;)Landroid/graphics/RectF;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    return-object p0
.end method

.method private f()V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ce3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ce0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 144
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ce1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f0604d4

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    const/4 v7, 0x0

    .line 143
    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070ce2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->ae:I

    .line 151
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->P:Z

    .line 152
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08067e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    .line 153
    new-instance v0, Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    .line 154
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 155
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/ui/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070cda

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->f:I

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070cdb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->g:I

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070cdc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->h:I

    .line 160
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070cdd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->i:I

    .line 161
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070cdf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    .line 162
    new-instance v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 163
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->f:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 164
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/ui/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setOnScrollChangeListenser(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    new-instance v2, Lcom/oplus/camera/ui/widget/e$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/e$2;-><init>(Lcom/oplus/camera/ui/widget/e;)V

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 181
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cd9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 183
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    const v3, 0x7f080240

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 184
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/ui/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    .line 188
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cde

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f080489

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806a2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v1, v0, v2, v6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/e;->I:Landroid/graphics/NinePatch;

    .line 196
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->n:I

    .line 197
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->o:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/e;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/widget/e;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    return p0
.end method

.method private g()V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 751
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 752
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 753
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v3, v0

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 760
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 761
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private getSelectTimeRatio()F
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Lcom/coui/appcompat/dialog/app/c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    .line 804
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/c;->setCancelable(Z)V

    .line 805
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/c;->setCanceledOnTouchOutside(Z)V

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/c;->show()V

    return-void
.end method

.method public a(FZ)V
    .locals 3

    .line 704
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x2

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 710
    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    move p1, v1

    goto :goto_0

    .line 712
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    .line 713
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 716
    :cond_3
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    .line 717
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    sub-float/2addr v0, v1

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 718
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    if-eqz p2, :cond_4

    .line 721
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->invalidate()V

    :cond_4
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 726
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->l:I

    .line 727
    iput p2, p0, Lcom/oplus/camera/ui/widget/e;->k:I

    const/4 p1, 0x1

    .line 728
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->P:Z

    .line 730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setVideoSize mVideoWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->k:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoClipView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->scrollTo(II)V

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0, v1, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->smoothScrollTo(II)V

    .line 824
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    const/4 v0, 0x1

    .line 825
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    const/4 v0, 0x2

    .line 826
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 827
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 829
    new-instance v1, Lcom/oplus/camera/ui/widget/e$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/widget/e$4;-><init>(Lcom/oplus/camera/ui/widget/e;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 847
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public b()V
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    if-eqz p0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/c;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->e:Lcom/coui/appcompat/dialog/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/c;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getAnimationAlpha()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->e()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 315
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->J:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->u:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 320
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->ae:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->ac:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 324
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getLeft()I

    move-result v0

    int-to-float v0, v0

    :cond_0
    move v4, v0

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getRight()I

    move-result v0

    int-to-float v0, v0

    :cond_1
    move v6, v0

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->aa:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->I:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->I:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 341
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 342
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 343
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    .line 349
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->ad:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    .line 359
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->O:Z

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 362
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    .line 363
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->O:Z

    .line 367
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    .line 869
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    return p0
.end method

.method public getAnimationAlpha()I
    .locals 0

    .line 865
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    return p0
.end method

.method public getLeftVideoProcess()F
    .locals 0

    .line 777
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    return p0
.end method

.method public getLiveWindow()Lcom/meicam/sdk/NvsLiveWindow;
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    return-object p0
.end method

.method public getRightVideoProcess()F
    .locals 0

    .line 785
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    return p0
.end method

.method public getThumbProcess()F
    .locals 0

    .line 700
    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    return p0
.end method

.method public getThumbnail()Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
    .locals 0

    .line 692
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->A:Lcom/oplus/camera/ui/widget/e$b;

    if-nez v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-ne p1, v1, :cond_1

    .line 879
    invoke-interface {v0}, Lcom/oplus/camera/ui/widget/e$b;->eB()V

    goto :goto_0

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    if-ne p1, v1, :cond_2

    .line 881
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    invoke-interface {v0, p1, p0}, Lcom/oplus/camera/ui/widget/e$b;->a(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    .line 373
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    .line 374
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 381
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 383
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 385
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 387
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 390
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 391
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 392
    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 393
    iget-object v9, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    .line 396
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v9, v6

    .line 399
    :cond_1
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v6

    iget-object v10, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 400
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 401
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 405
    invoke-virtual {v4, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 406
    invoke-virtual {v3, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    invoke-virtual {v0, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    invoke-virtual {v5, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    .line 409
    invoke-virtual {v0, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    goto :goto_0

    .line 410
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    if-eqz v0, :cond_6

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq v2, p1, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    return v2

    .line 416
    :cond_6
    :goto_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    return p0

    .line 375
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq v2, p1, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->ab:Z

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int p1, p4, p2

    sub-int p3, p5, p3

    .line 210
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    sub-int v0, p3, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int v0, p3, v0

    .line 211
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 213
    :goto_0
    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->k:I

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->l:I

    if-le v2, v5, :cond_1

    .line 214
    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    sub-int v7, p3, v6

    .line 215
    div-int/2addr v7, v1

    mul-int/2addr v5, v6

    .line 216
    div-int/2addr v5, v2

    sub-int v2, p1, v5

    .line 217
    div-int/2addr v2, v1

    move v9, v6

    move v6, v2

    move v2, v9

    goto :goto_1

    .line 219
    :cond_1
    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->n:I

    mul-int/2addr v2, v6

    .line 220
    div-int/2addr v2, v5

    sub-int v5, p3, v2

    .line 221
    div-int/lit8 v7, v5, 0x2

    move v5, v6

    move v6, p2

    .line 224
    :goto_1
    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    if-le v2, v8, :cond_2

    move v2, v8

    .line 228
    :cond_2
    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->n:I

    if-le v5, v8, :cond_3

    move v5, v8

    .line 232
    :cond_3
    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    add-int/2addr v5, v6

    add-int/2addr v2, v7

    invoke-virtual {v8, v6, v7, v5, v2}, Lcom/meicam/sdk/NvsLiveWindow;->layout(IIII)V

    .line 233
    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    const/high16 v5, 0x41700000    # 15.0f

    cmpg-float v2, v5, v2

    if-gez v2, :cond_4

    move v2, p2

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->h:I

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    add-int/2addr v2, v6

    .line 234
    :goto_2
    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_5

    move v6, p4

    goto :goto_3

    :cond_5
    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->h:I

    sub-int v6, p4, v6

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    sub-int/2addr v6, v7

    .line 235
    :goto_3
    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->g:I

    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->m:I

    sub-int/2addr p3, v8

    div-int/2addr p3, v1

    add-int/2addr v7, p3

    .line 237
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->f:I

    sub-int v8, p5, v8

    sub-int/2addr v8, v7

    sub-int/2addr p5, v7

    invoke-virtual {p3, v2, v8, v6, p5}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->layout(IIII)V

    .line 238
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 239
    iget-object p5, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p5}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v6, p1, p5

    .line 241
    div-int/2addr v6, v1

    sub-int/2addr v0, v2

    .line 242
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, p3

    .line 243
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    add-int/2addr p5, v6

    add-int v7, v0, v2

    invoke-virtual {p3, v6, v0, p5, v7}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    .line 245
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    iget-object p5, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p5}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    .line 247
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v2, v6

    .line 248
    div-int/2addr v2, v1

    add-int/2addr v0, v2

    if-eqz v3, :cond_6

    .line 249
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, p3

    sub-int/2addr p1, p5

    goto :goto_4

    :cond_6
    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 250
    :goto_4
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    add-int/2addr p5, p1

    add-int/2addr v6, v0

    invoke-virtual {p3, p1, v0, p5, v6}, Lcom/oplus/camera/ui/RotateImageView;->layout(IIII)V

    .line 252
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 253
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getHitRect(Landroid/graphics/Rect;)V

    .line 255
    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    float-to-int p3, p3

    iget p5, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    float-to-int p5, p5

    invoke-virtual {p1, p3, p5}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->O:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->P:Z

    if-eqz p1, :cond_8

    .line 256
    iput-boolean v4, p0, Lcom/oplus/camera/ui/widget/e;->P:Z

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    int-to-float p3, p2

    iget-object p5, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p5}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getTop()I

    move-result p5

    int-to-float p5, p5

    int-to-float v0, p4

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p3, p5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->h:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    sub-int/2addr p4, p3

    int-to-float p2, p4

    .line 260
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 261
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 262
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 265
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 267
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 271
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    cmpg-float p2, v5, p1

    if-gez p2, :cond_7

    .line 272
    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    div-float/2addr p1, p2

    .line 273
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    .line 274
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->q:F

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setPixelPerMicrosecond(D)V

    .line 275
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getLeft()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setStartPadding(I)V

    .line 276
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->getRight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setEndPadding(I)V

    .line 277
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    .line 278
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    .line 279
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 280
    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float p2, p1, p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 281
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 282
    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    goto :goto_5

    .line 284
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    .line 285
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    iget p4, p0, Lcom/oplus/camera/ui/widget/e;->q:F

    div-float/2addr p2, p4

    float-to-double p4, p2

    invoke-virtual {p1, p4, p5}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setPixelPerMicrosecond(D)V

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setStartPadding(I)V

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setEndPadding(I)V

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 289
    iput p3, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 292
    :goto_5
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    .line 294
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->getSelectTimeRatio()F

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/e;->setCurrentTime(F)V

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnails()V

    .line 296
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->stopNestedScroll()V

    .line 297
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->scrollTo(II)V

    .line 298
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->scrollBy(II)V

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->smoothScrollBy(II)V

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->smoothScrollTo(II)V

    .line 303
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->g()V

    .line 304
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p1, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_9

    .line 306
    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->V:Z

    if-eqz p1, :cond_9

    .line 307
    iput-boolean v4, p0, Lcom/oplus/camera/ui/widget/e;->V:Z

    .line 308
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public onScrollChanged(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;II)V
    .locals 2

    .line 887
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    const/high16 p3, 0x41700000    # 15.0f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    .line 891
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 892
    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float p2, p1, p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 893
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/ui/widget/e;->r:F

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 894
    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getStartPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/e;->b:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getEndPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 895
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/widget/e;->a(FZ)V

    .line 898
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    if-eqz p1, :cond_1

    .line 899
    iget p3, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    invoke-interface {p1, p3}, Lcom/oplus/camera/ui/widget/e$a;->c(F)V

    .line 902
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->ag:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 421
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->M:F

    .line 430
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/widget/e$a;->c(F)V

    goto/16 :goto_1

    .line 434
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 436
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 438
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/2addr v9, v2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 443
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v7, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v8, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 444
    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 445
    invoke-virtual {v5, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 447
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 449
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v6, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v5, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 450
    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 451
    invoke-virtual {v3, v0, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 453
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 457
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 461
    :cond_6
    :goto_1
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-direct {p0, v0, v3}, Lcom/oplus/camera/ui/widget/e;->a(FF)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    return v1

    .line 462
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_e

    if-eq v0, v2, :cond_9

    goto/16 :goto_5

    .line 464
    :cond_9
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 465
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 466
    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/e;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 467
    :cond_b
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->C:Landroid/graphics/RectF;

    .line 468
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_18

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    .line 470
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 471
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    .line 472
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    .line 474
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->g()V

    .line 476
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/widget/e$a;->c(F)V

    goto/16 :goto_5

    .line 481
    :cond_e
    iget p1, p0, Lcom/oplus/camera/ui/widget/e;->t:F

    const/high16 v0, 0x41700000    # 15.0f

    div-float/2addr p1, v0

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->D:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr p1, v3

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    mul-int/2addr v3, v2

    int-to-float v2, v3

    add-float/2addr p1, v2

    .line 483
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 485
    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/ui/widget/e;->a(FF)Z

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    if-eqz v2, :cond_11

    .line 487
    :cond_f
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->y:F

    goto :goto_4

    :cond_10
    const/high16 v3, -0x40800000    # -1.0f

    :goto_4
    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/widget/e$a;->d(F)V

    .line 490
    :cond_11
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_12

    .line 491
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 492
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 495
    :cond_12
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_13

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_13

    .line 496
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 499
    :cond_13
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_14

    .line 500
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 501
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 504
    :cond_14
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_15

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_15

    .line 505
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 508
    :cond_15
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 509
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 510
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 511
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->E:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 512
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 513
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->F:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->j:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    const/4 p1, 0x0

    .line 515
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->K:F

    .line 516
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->L:F

    .line 517
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->R:F

    .line 518
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->S:F

    const/4 p1, 0x0

    .line 519
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/e;->af:Z

    .line 520
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/e;->getSelectTimeRatio()F

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/widget/e;->setCurrentTime(F)V

    .line 522
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    .line 523
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/e;->b(Z)V

    .line 526
    :cond_16
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->W:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/e;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_17

    .line 527
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/widget/e;->b(Z)V

    .line 530
    :cond_17
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    if-eqz p1, :cond_18

    iget v2, p0, Lcom/oplus/camera/ui/widget/e;->u:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_18

    .line 531
    invoke-interface {p1}, Lcom/oplus/camera/ui/widget/e$a;->k()V

    .line 539
    :cond_18
    :goto_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->invalidate()V

    :cond_19
    :goto_6
    return v1
.end method

.method public setCurrentTime(F)V
    .locals 3

    .line 765
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->u:F

    return-void
.end method

.method public setLeftVideoProcess(F)V
    .locals 0

    .line 781
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    return-void
.end method

.method public setLiveWindow(Lcom/meicam/sdk/NvsLiveWindow;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->a:Lcom/meicam/sdk/NvsLiveWindow;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 798
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e;->d:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    return-void
.end method

.method public setRightVideoProcess(F)V
    .locals 0

    .line 789
    iput p1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    return-void
.end method

.method public setSeekToCallback(Lcom/oplus/camera/ui/widget/e$a;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->z:Lcom/oplus/camera/ui/widget/e$a;

    return-void
.end method

.method public setThumbProcess(F)V
    .locals 1

    const/4 v0, 0x1

    .line 696
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/widget/e;->a(FZ)V

    return-void
.end method

.method public setTotalTime(J)V
    .locals 4

    long-to-float v0, p1

    .line 734
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->q:F

    const/4 v1, 0x0

    .line 735
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/e;->U:Z

    const/4 v2, 0x1

    .line 736
    iput-boolean v2, p0, Lcom/oplus/camera/ui/widget/e;->V:Z

    .line 737
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->T:I

    .line 738
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/widget/e;->a(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->v:F

    .line 740
    iget v1, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float v1, v2, v1

    :goto_0
    iput v1, p0, Lcom/oplus/camera/ui/widget/e;->w:F

    .line 741
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->x:F

    .line 742
    iget v0, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/widget/e;->s:F

    .line 743
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->requestLayout()V

    .line 744
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->invalidate()V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " mTotalTimeSecond: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/widget/e;->p:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoClipView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoClipClick(Lcom/oplus/camera/ui/widget/e$b;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e;->A:Lcom/oplus/camera/ui/widget/e$b;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 815
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/e;->setAlpha(F)V

    .line 818
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
