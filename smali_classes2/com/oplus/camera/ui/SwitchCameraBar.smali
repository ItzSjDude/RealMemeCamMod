.class public Lcom/oplus/camera/ui/SwitchCameraBar;
.super Landroid/view/View;
.source "SwitchCameraBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/SwitchCameraBar$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/view/animation/PathInterpolator;

.field private static final c:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:I

.field private H:I

.field private I:F

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/ValueAnimator;

.field private L:Landroid/animation/ValueAnimator;

.field private M:Landroid/animation/ValueAnimator;

.field private N:Landroid/animation/ValueAnimator;

.field private O:Landroid/animation/ValueAnimator;

.field private P:Landroid/animation/ValueAnimator;

.field private Q:Landroid/animation/ValueAnimator;

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/animation/ValueAnimator;

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field protected a:Landroid/view/GestureDetector;

.field private aa:F

.field private ab:F

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:F

.field private ah:Landroid/animation/AnimatorSet;

.field private ai:Lcom/oplus/camera/ah;

.field private d:Ljava/lang/String;

.field private e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

.field private f:I

.field private g:I

.field private h:Landroid/view/ViewGroup$MarginLayoutParams;

.field private i:Z

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/RectF;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/SwitchCameraBar;->c:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->d:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->f:I

    .line 62
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->g:I

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    iput-boolean p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->i:Z

    .line 67
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    .line 70
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->m:Landroid/graphics/Paint;

    .line 71
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->o:Landroid/graphics/RectF;

    .line 73
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    .line 74
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    .line 76
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    const/4 p3, 0x0

    .line 77
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->t:F

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->u:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->w:Ljava/util/List;

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->x:I

    .line 82
    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    .line 83
    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    .line 84
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    .line 85
    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->B:I

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->a:Landroid/view/GestureDetector;

    const-string v0, "0.6"

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    const-string v0, "2"

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    .line 91
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    .line 92
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->G:I

    .line 93
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->H:I

    .line 94
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->I:F

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    .line 100
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    .line 104
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    .line 106
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    .line 107
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    .line 109
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->T:F

    .line 111
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->U:F

    .line 112
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->V:F

    .line 113
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->W:F

    .line 114
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->aa:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 115
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ab:F

    const p2, 0x3f59999a    # 0.85f

    .line 116
    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ac:F

    .line 117
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ad:F

    .line 118
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ae:F

    .line 119
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->af:F

    .line 120
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ag:F

    .line 122
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    .line 123
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ai:Lcom/oplus/camera/ah;

    .line 142
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b91

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->f:I

    .line 143
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b92

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->g:I

    .line 144
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->a()V

    .line 146
    new-instance p1, Lcom/oplus/camera/ah;

    invoke-direct {p1}, Lcom/oplus/camera/ah;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ai:Lcom/oplus/camera/ah;

    return-void
.end method

.method private a(II)F
    .locals 2

    .line 563
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    div-int v1, v0, p0

    mul-int/2addr v1, p1

    div-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    sub-int/2addr v1, p2

    int-to-float p0, v1

    return p0
.end method

.method private a(F)I
    .locals 1

    .line 427
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    int-to-float v0, p0

    div-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    return p1
.end method

.method private a(I)I
    .locals 1

    .line 567
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    div-int/2addr v0, p0

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/SwitchCameraBar;F)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/SwitchCameraBar;I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(I)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 351
    invoke-static {p1, p2, v0}, Landroidx/core/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 354
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 356
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    iget p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->H:I

    if-eqz p1, :cond_0

    .line 361
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->H:I

    int-to-float p0, p0

    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 363
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/SwitchCameraBar;)Lcom/oplus/camera/ui/SwitchCameraBar$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    .line 167
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    .line 168
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    mul-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    mul-int/lit8 v0, v0, 0x2

    .line 169
    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060587

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->G:I

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->G:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dc0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->I:F

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->I:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->m:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060098

    goto :goto_0

    :cond_0
    const v2, 0x7f06006a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->d()V

    .line 193
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/SwitchCameraBar$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$1;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 13

    .line 442
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 446
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->o:Landroid/graphics/RectF;

    .line 447
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->b(Landroid/graphics/Canvas;)V

    .line 453
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->t:F

    cmpl-float v0, v0, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 454
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v0

    iget v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->T:F

    iget v4, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->t:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    goto :goto_0

    .line 456
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v0

    .line 459
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Landroid/graphics/Canvas;F)V

    .line 460
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->b()V

    .line 461
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v2, 0x1

    move v4, v2

    .line 463
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_e

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 465
    iget-object v6, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->u:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    goto/16 :goto_5

    .line 471
    :cond_2
    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v1, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz v0, :cond_3

    .line 472
    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->w:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 474
    :goto_2
    iget-boolean v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->i:Z

    const/16 v9, 0xff

    if-eqz v8, :cond_5

    .line 475
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    .line 476
    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 479
    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 481
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    if-ne v8, v4, :cond_4

    .line 482
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ab:F

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v10, v7

    invoke-virtual {p1, v8, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    .line 484
    :cond_4
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ac:F

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v10, v7

    invoke-virtual {p1, v8, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 487
    :goto_3
    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 490
    :cond_5
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    if-eq v8, v4, :cond_6

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    if-eq v8, v4, :cond_6

    .line 491
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 493
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    .line 494
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 492
    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 497
    :cond_6
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x437f0000    # 255.0f

    if-eq v8, v4, :cond_8

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    if-ne v8, v4, :cond_8

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    .line 499
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->U:F

    sub-float v8, v10, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 501
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->W:F

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 503
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 502
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->aa:F

    sub-float/2addr v10, v8

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    .line 504
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 502
    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 507
    :cond_7
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->U:F

    sub-float v8, v10, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 508
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v4, v7}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    .line 509
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v9, v9

    iget v12, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->V:F

    mul-float/2addr v9, v12

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    .line 508
    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 510
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->W:F

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 511
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    .line 512
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v8, v8

    iget v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->aa:F

    sub-float/2addr v10, v9

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 511
    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 515
    :cond_8
    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    if-ne v8, v4, :cond_d

    .line 516
    iget v12, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    if-ne v8, v12, :cond_a

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    .line 518
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 519
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 521
    :cond_9
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 522
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v4, v7}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    .line 523
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    .line 522
    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v7, :cond_b

    .line 527
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ad:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 529
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 528
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v8, v8

    iget v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ae:F

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 532
    :cond_b
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ad:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 533
    iget-object v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v4, v7}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->n:Landroid/graphics/Rect;

    .line 534
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v9, v9

    iget v12, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ae:F

    sub-float v12, v10, v12

    mul-float/2addr v9, v12

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    .line 533
    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    :goto_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 539
    iget-object v5, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->af:F

    sub-float/2addr v10, v7

    mul-float/2addr v10, v11

    float-to-int v7, v10

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v0, :cond_c

    .line 543
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 542
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ag:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    .line 544
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 542
    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 546
    :cond_c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(II)F

    move-result v5

    iget v7, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/lit8 v7, v7, 0x2

    .line 547
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->q:I

    int-to-float v8, v8

    iget v9, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ag:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->j:Landroid/graphics/Paint;

    .line 546
    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_6
    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 577
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    iget v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->r:I

    div-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->U:F

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 335
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 338
    iget-object v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 339
    iget v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->H:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 340
    iget v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 341
    iget v4, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v3

    int-to-float v3, v4

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 325
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->w:Ljava/util/List;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->w:Ljava/util/List;

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->w:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->o:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 572
    iget v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/SwitchCameraBar;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->moveAnimation(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/SwitchCameraBar;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->V:F

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/SwitchCameraBar;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/SwitchCameraBar;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    return p1
.end method

.method private c()Z
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->W:F

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/SwitchCameraBar;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/SwitchCameraBar;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    return p1
.end method

.method private d()V
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->g()V

    .line 584
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->h()V

    .line 585
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->f()V

    .line 586
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->e()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->aa:F

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/ui/SwitchCameraBar;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->f:I

    return p0
.end method

.method private e()V
    .locals 7

    .line 590
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/camera/ui/SwitchCameraBar;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/SwitchCameraBar$7;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$7;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 601
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 603
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/SwitchCameraBar$8;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$8;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/oplus/camera/ui/SwitchCameraBar;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/SwitchCameraBar$9;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$9;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 624
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 628
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/SwitchCameraBar$10;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$10;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 636
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    .line 637
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 639
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/SwitchCameraBar$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$11;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic f(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ab:F

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/SwitchCameraBar;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->g:I

    return p0
.end method

.method private f()V
    .locals 7

    .line 650
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 653
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 654
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/oplus/camera/ui/SwitchCameraBar;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/SwitchCameraBar$12;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$12;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 662
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    .line 663
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 664
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 665
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 666
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 667
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/SwitchCameraBar$13;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$13;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 674
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 676
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 677
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/camera/ui/SwitchCameraBar;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/SwitchCameraBar$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$2;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 685
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    .line 686
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 688
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 689
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/SwitchCameraBar$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$3;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic g(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ac:F

    return p1
.end method

.method static synthetic g(Lcom/oplus/camera/ui/SwitchCameraBar;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 699
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    .line 700
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/SwitchCameraBar$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$4;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ad:F

    return p1
.end method

.method static synthetic h(Lcom/oplus/camera/ui/SwitchCameraBar;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->B:I

    return p0
.end method

.method private h()V
    .locals 3

    .line 726
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    .line 727
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 728
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 729
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/SwitchCameraBar;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/SwitchCameraBar$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$5;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic i(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ae:F

    return p1
.end method

.method static synthetic i(Lcom/oplus/camera/ui/SwitchCameraBar;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->af:F

    return p1
.end method

.method static synthetic k(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ag:F

    return p1
.end method

.method static synthetic l(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->t:F

    return p1
.end method

.method static synthetic m(Lcom/oplus/camera/ui/SwitchCameraBar;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->T:F

    return p1
.end method

.method private moveAnimation(I)V
    .locals 4

    .line 409
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->B:I

    .line 410
    iget p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->B:I

    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->p:I

    mul-int/2addr p1, v0

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->t:F

    .line 412
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->d()V

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->J:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->R:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->K:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->N:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->L:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->M:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->P:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->Q:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->O:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->S:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 419
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ah:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SwitchCameraBar"

    const-string v1, "changeIndex"

    .line 741
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oplus/camera/ui/SwitchCameraBar$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "camera_ultra_wide"

    .line 748
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 749
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "1"

    .line 750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "camera_main"

    .line 751
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 752
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "camera_tele"

    .line 754
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 755
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar$a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ZZ[I)V
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, selectValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportUltraWide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchCameraBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    const-string v0, "com.oplus.ultar.wide.zoom.point.value"

    .line 240
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 243
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    :cond_0
    const-string v0, "com.oplus.second.zoom.point.specific.value"

    .line 247
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ai:Lcom/oplus/camera/ah;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ah;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    :cond_1
    const-string v0, "com.oplus.movie.second.zoom.point.specific.value"

    .line 254
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->ai:Lcom/oplus/camera/ah;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ah;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    :cond_2
    if-eqz p3, :cond_3

    .line 261
    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x2

    .line 262
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->x:I

    .line 265
    :cond_3
    iget p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->x:I

    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    .line 266
    iput p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    .line 268
    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    const-string v0, "1"

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    const-string p2, "com.oplus.feature.sat.tele.support"

    .line 270
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 271
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    .line 279
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    .line 280
    iget p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->F:I

    iget p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    mul-int/2addr p2, p3

    iput p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->s:I

    .line 282
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectBg(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 285
    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_6

    .line 286
    iget-object p2, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->u:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    aget p3, p4, p1

    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 290
    iget-object p3, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->u:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 294
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->b()V

    .line 296
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/ui/SwitchCameraBar$6;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/SwitchCameraBar$6;-><init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->i:Z

    return-void
.end method

.method public getSelectValue()Ljava/lang/String;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->d:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    iget v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->A:I

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->a:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setClickListener(Lcom/oplus/camera/ui/SwitchCameraBar$a;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->e:Lcom/oplus/camera/ui/SwitchCameraBar$a;

    return-void
.end method

.method public setItemRotation(I)V
    .locals 0

    .line 760
    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->H:I

    return-void
.end method

.method public setSelectBg(Ljava/lang/String;)V
    .locals 4

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x179fab20

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7ab92a93

    if-eq v0, v1, :cond_1

    const v1, 0x7abc6884

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "camera_tele"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "camera_main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "camera_ultra_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 394
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->D:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    .line 395
    iget p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    goto :goto_2

    .line 389
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    const-string v0, "1"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    .line 390
    iget p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    goto :goto_2

    .line 384
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->C:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    .line 385
    iget p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->y:I

    iput p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->z:I

    :goto_2
    return-void
.end method

.method public setSelectValue(Ljava/lang/String;)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectValue, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchCameraBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar;->d:Ljava/lang/String;

    return-void
.end method
