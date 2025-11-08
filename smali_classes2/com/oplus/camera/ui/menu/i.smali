.class public Lcom/oplus/camera/ui/menu/i;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "RotationOptionItemView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Paint;

.field private E:Ljava/lang/String;

.field private F:Landroid/graphics/Paint;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/Paint;

.field private M:Landroid/graphics/Paint;

.field private N:Landroid/graphics/Paint;

.field private O:Landroid/graphics/Matrix;

.field private P:Lcom/oplus/camera/ComboPreferences;

.field private Q:Landroid/animation/ValueAnimator;

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/animation/ValueAnimator;

.field private T:Ljava/lang/String;

.field private U:I

.field private V:I

.field private W:I

.field private final a:Landroid/view/animation/PathInterpolator;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:J

.field private al:J

.field private am:F

.field private an:[I

.field private ao:Lcom/oplus/camera/ui/CameraUIListener;

.field private final b:Landroid/animation/ArgbEvaluator;

.field private c:Landroid/animation/ValueAnimator;

.field private d:Landroid/view/animation/PathInterpolator;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/content/Context;

.field private t:Landroid/graphics/Canvas;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;ZLandroid/graphics/Bitmap;ZZLcom/oplus/camera/ComboPreferences;)V
    .locals 6

    .line 149
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->a:Landroid/view/animation/PathInterpolator;

    .line 75
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->b:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    .line 78
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e8f5c29    # 0.28f

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v3, v4, v2, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/i;->d:Landroid/view/animation/PathInterpolator;

    .line 79
    iput v2, p0, Lcom/oplus/camera/ui/menu/i;->e:F

    .line 80
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->f:F

    .line 81
    iput v2, p0, Lcom/oplus/camera/ui/menu/i;->g:F

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->h:Z

    .line 84
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    .line 85
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->j:Z

    .line 86
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    .line 87
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->l:Z

    .line 88
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->m:Z

    .line 89
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    .line 90
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->o:Z

    .line 91
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->p:Z

    .line 92
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->q:Z

    .line 93
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->r:Z

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->u:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->v:Landroid/graphics/drawable/Drawable;

    .line 101
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->w:Landroid/graphics/Bitmap;

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->A:Landroid/graphics/Bitmap;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->B:Landroid/graphics/Bitmap;

    .line 107
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->C:Landroid/graphics/Bitmap;

    .line 108
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    .line 109
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    .line 111
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->G:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->H:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    .line 114
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    .line 115
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    .line 116
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    .line 117
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->M:Landroid/graphics/Paint;

    .line 118
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    .line 119
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    .line 120
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->P:Lcom/oplus/camera/ComboPreferences;

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    .line 122
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    .line 123
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->T:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->U:I

    .line 127
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->V:I

    .line 128
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    .line 129
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->aa:I

    .line 130
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    .line 131
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    .line 132
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    .line 133
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    .line 134
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->af:I

    .line 135
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ag:I

    .line 136
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ah:I

    .line 137
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->ai:I

    .line 138
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->aj:I

    const-wide/16 v1, 0x0

    .line 140
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/i;->ak:J

    .line 141
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/i;->al:J

    const/high16 v1, 0x3f000000    # 0.5f

    .line 142
    iput v1, p0, Lcom/oplus/camera/ui/menu/i;->am:F

    .line 143
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->an:[I

    .line 145
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    .line 150
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    .line 152
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    .line 153
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    .line 154
    iput-boolean p5, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    .line 155
    iput-object p7, p0, Lcom/oplus/camera/ui/menu/i;->P:Lcom/oplus/camera/ComboPreferences;

    .line 156
    iput-boolean p6, p0, Lcom/oplus/camera/ui/menu/i;->p:Z

    .line 158
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b2c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b2b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070753

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070754

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10041c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->H:Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b2d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->af:I

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b2e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ag:I

    .line 170
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->k()V

    .line 171
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->l()V

    .line 172
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->m()V

    const/4 p1, 0x2

    .line 173
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->an:[I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/i;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->f:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/i;)Landroid/graphics/Paint;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/i;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->g:F

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/i;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->e:F

    return p1
.end method

.method private k()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/i;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private m()V
    .locals 6

    .line 192
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-nez v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070425

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    .line 204
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 208
    :cond_2
    :goto_1
    iget v1, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    .line 210
    iget v4, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    if-lez v4, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    int-to-float v1, v2

    add-float/2addr v4, v1

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    iput v4, p0, Lcom/oplus/camera/ui/menu/i;->am:F

    :cond_3
    return-void
.end method

.method private n()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 254
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/i$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/i$1;-><init>(Lcom/oplus/camera/ui/menu/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x247

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private o()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 273
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    .line 274
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/i$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/i$2;-><init>(Lcom/oplus/camera/ui/menu/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x247

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->q:Z

    return-void

    :array_0
    .array-data 4
        0x3a83126f    # 0.001f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private p()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 293
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/i$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/i$3;-><init>(Lcom/oplus/camera/ui/menu/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x247

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 307
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private q()V
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/airbnb/lottie/f;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 369
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 370
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 375
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private r()Z
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 755
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v2, v0, :cond_2

    .line 759
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eq v3, p0, :cond_1

    if-ne v4, p0, :cond_6

    :cond_1
    return v4

    :cond_2
    const/4 v2, 0x3

    if-ne v2, v0, :cond_4

    .line 764
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eqz p0, :cond_3

    if-ne v4, p0, :cond_6

    :cond_3
    return v4

    :cond_4
    const/4 v2, 0x4

    if-ne v2, v0, :cond_5

    .line 769
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p0

    if-eqz p0, :cond_6

    return v4

    .line 772
    :cond_5
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-ne v3, p0, :cond_6

    return v4

    :cond_6
    return v1
.end method

.method private s()V
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    .line 782
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 781
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->A:Landroid/graphics/Bitmap;

    .line 783
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->A:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 784
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 785
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060467

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 787
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    const v2, 0x7f06048e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 793
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getDrawableState()[I

    move-result-object p0

    const v2, 0x7f0604d7

    invoke-virtual {v1, p0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 792
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private u()V
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 937
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 954
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 956
    iget v1, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->Q()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070a38

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private w()Z
    .locals 8

    .line 1099
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "common"

    :goto_0
    const/4 v1, -0x1

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "rack270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "low90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v7

    goto :goto_1

    :sswitch_5
    const-string v2, "out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_6
    const-string v2, "full270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "rack90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "low270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v2, "full90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1145
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eq v4, p0, :cond_2

    goto :goto_2

    .line 1123
    :pswitch_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eq v5, p0, :cond_3

    if-ne v3, p0, :cond_2

    goto :goto_2

    .line 1114
    :pswitch_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eq v7, p0, :cond_3

    if-nez p0, :cond_2

    goto :goto_2

    .line 1106
    :pswitch_2
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eq v5, p0, :cond_3

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    :pswitch_3
    move v7, v6

    :cond_3
    :goto_2
    :pswitch_4
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x4b4e3e1a -> :sswitch_9
        -0x41619149 -> :sswitch_8
        -0x37f207d2 -> :sswitch_7
        -0x1e799e64 -> :sswitch_6
        0x1af4e -> :sswitch_5
        0x30228f -> :sswitch_4
        0x32a007 -> :sswitch_3
        0x626256b -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x39b0f454 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 423
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 424
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 426
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    if-ne p1, v0, :cond_1

    return-void

    .line 430
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    .line 432
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->v()V

    .line 434
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->isShown()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 435
    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->U:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->V:I

    .line 436
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/menu/i;->ak:J

    .line 438
    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    iget p2, p0, Lcom/oplus/camera/ui/menu/i;->U:I

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

    .line 444
    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/i;->h:Z

    .line 445
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/i;->ak:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/i;->al:J

    goto :goto_3

    .line 447
    :cond_5
    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->W:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->U:I

    .line 450
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->j()V

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .line 311
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->q:Z

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->v:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->u:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->w:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p1, :cond_6

    .line 317
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    .line 321
    :cond_1
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    .line 322
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->refreshDrawableState()V

    .line 323
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 325
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    .line 326
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->q()V

    .line 327
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->v:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->j:Z

    if-eqz p1, :cond_3

    .line 330
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->j:Z

    .line 332
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-eqz p1, :cond_2

    .line 333
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 334
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->p()V

    goto :goto_1

    .line 337
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->n()V

    .line 339
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->l:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->v:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 340
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->o()V

    goto :goto_1

    .line 344
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 345
    iput p2, p0, Lcom/oplus/camera/ui/menu/i;->e:F

    .line 346
    iput v0, p0, Lcom/oplus/camera/ui/menu/i;->f:F

    goto :goto_0

    .line 348
    :cond_4
    iput v0, p0, Lcom/oplus/camera/ui/menu/i;->e:F

    .line 349
    iput p2, p0, Lcom/oplus/camera/ui/menu/i;->f:F

    .line 352
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->l:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->v:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->o()V

    .line 357
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(ZII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 381
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    .line 382
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 384
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060049

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 388
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    .line 391
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->m:Z

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 392
    :goto_1
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->m:Z

    .line 393
    iput p2, p0, Lcom/oplus/camera/ui/menu/i;->ah:I

    .line 394
    iput p3, p0, Lcom/oplus/camera/ui/menu/i;->ai:I

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    :cond_3
    return-void
.end method

.method public a(ZZI)V
    .locals 5

    .line 1000
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1005
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    const v2, 0x7f060065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1006
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz p1, :cond_1

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v2, v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_5

    .line 1016
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->r()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1017
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->b:Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v1

    .line 1018
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1017
    invoke-static {p2, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    .line 1019
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1020
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1022
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/oplus/camera/ui/menu/i$4;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/menu/i$4;-><init>(Lcom/oplus/camera/ui/menu/i;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1029
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/oplus/camera/ui/menu/i$5;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/i$5;-><init>(Lcom/oplus/camera/ui/menu/i;ZII)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1049
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 803
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 804
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 805
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0

    .line 810
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 811
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->setAlpha(F)V

    .line 814
    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getPivotYScaleValue()F
    .locals 0

    .line 249
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->am:F

    return p0
.end method

.method public getShadowOn()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/i;->p:Z

    return p0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 5

    const v0, 0x7f0903d8

    if-ne v0, p1, :cond_1

    .line 875
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 876
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 879
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTag, left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotationOptionItemView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 884
    invoke-static {}, Lcom/oplus/camera/util/Util;->Q()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 887
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->Q()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/oplus/camera/ui/menu/i;->aj:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    add-int/2addr p1, p0

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 891
    :cond_1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-float v0, v1

    .line 924
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 927
    :cond_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    if-le v1, p0, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method public getViewWidth()I
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 904
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 907
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz v0, :cond_3

    .line 908
    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->af:I

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    goto :goto_0

    .line 910
    :cond_3
    iget p0, p0, Lcom/oplus/camera/ui/menu/i;->ac:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/i;->r:Z

    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1054
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    .line 1055
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 1056
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->t:Landroid/graphics/Canvas;

    .line 1057
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    .line 1058
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    return-void
.end method

.method public j()V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->an:[I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->getLocationOnScreen([I)V

    .line 1095
    iget v0, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->setSizeRatioType(I)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 p1, p1, 0x2

    .line 1063
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1065
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-nez v0, :cond_1

    .line 1067
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    new-array v0, v2, [I

    const v3, 0x7f040583

    aput v3, v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/i;->mergeDrawableStates([I[I)[I

    .line 1071
    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/i;->o:Z

    if-eqz p0, :cond_2

    .line 1072
    new-array p0, v2, [I

    const v0, 0x7f040588

    aput v0, p0, v1

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/i;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->q()V

    .line 470
    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b2c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v2

    iput v2, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    .line 476
    :goto_0
    iget v2, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    iget v3, v0, Lcom/oplus/camera/ui/menu/i;->W:I

    if-eq v2, v3, :cond_4

    .line 477
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 479
    iget-wide v4, v0, Lcom/oplus/camera/ui/menu/i;->al:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 480
    iget-wide v4, v0, Lcom/oplus/camera/ui/menu/i;->ak:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 481
    iget v3, v0, Lcom/oplus/camera/ui/menu/i;->V:I

    int-to-long v3, v3

    iget-boolean v5, v0, Lcom/oplus/camera/ui/menu/i;->h:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    neg-int v2, v2

    :goto_1
    mul-int/lit16 v2, v2, 0x168

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v2, v3

    if-ltz v2, :cond_2

    .line 483
    rem-int/lit16 v2, v2, 0x168

    goto :goto_2

    .line 484
    :cond_2
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    .line 485
    :goto_2
    iput v2, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    goto :goto_3

    .line 488
    :cond_3
    iget v2, v0, Lcom/oplus/camera/ui/menu/i;->W:I

    iput v2, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    .line 494
    :cond_4
    :goto_3
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a50

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 496
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-nez v3, :cond_5

    .line 497
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070425

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    goto :goto_4

    .line 499
    :cond_5
    iget-boolean v3, v0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :cond_6
    const/4 v3, 0x0

    .line 503
    :goto_4
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_7

    .line 504
    iget v5, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    add-int/lit8 v5, v5, 0x5a

    iput v5, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    .line 507
    :cond_7
    iget v5, v0, Lcom/oplus/camera/ui/menu/i;->U:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v9, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    int-to-float v10, v3

    add-float/2addr v9, v10

    int-to-float v11, v2

    add-float/2addr v9, v11

    invoke-virtual {v1, v5, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 509
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 512
    iget-boolean v7, v0, Lcom/oplus/camera/ui/menu/i;->i:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c

    if-nez v5, :cond_c

    .line 513
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070a37

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 514
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-int v4, v4

    .line 515
    iget v5, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    .line 516
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    int-to-float v7, v4

    add-int v10, v5, v3

    int-to-float v11, v10

    invoke-virtual {v1, v6, v7, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 518
    iget-boolean v6, v0, Lcom/oplus/camera/ui/menu/i;->m:Z

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    if-eqz v6, :cond_8

    const/high16 v6, 0x40400000    # 3.0f

    .line 519
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->a(F)I

    move-result v6

    int-to-float v6, v6

    .line 520
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget v7, v0, Lcom/oplus/camera/ui/menu/i;->ah:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 521
    iget v7, v0, Lcom/oplus/camera/ui/menu/i;->ai:I

    add-int/2addr v10, v7

    int-to-float v7, v10

    .line 523
    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 526
    :cond_8
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 527
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 528
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->W:I

    if-eqz v4, :cond_a

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_9

    goto :goto_5

    .line 529
    :cond_9
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->ag:I

    goto :goto_6

    :cond_a
    :goto_5
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->af:I

    .line 530
    :goto_6
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    int-to-float v4, v4

    cmpg-float v2, v4, v2

    if-gez v2, :cond_b

    .line 533
    new-instance v2, Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v2, v4, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 534
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 537
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->t()V

    .line 538
    iget v2, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    add-int/2addr v5, v3

    int-to-float v3, v5

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 540
    :cond_c
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_29

    add-int v12, v3, v2

    .line 541
    iput v12, v0, Lcom/oplus/camera/ui/menu/i;->aj:I

    .line 542
    iget v13, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v13, v7

    int-to-float v7, v13

    div-float/2addr v7, v8

    float-to-int v7, v7

    if-eqz v5, :cond_d

    .line 545
    iget v13, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    iget-object v14, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v13, v8

    float-to-int v13, v13

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 548
    :goto_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070616

    .line 549
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    .line 551
    iget-object v15, v0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v15}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v15

    if-ne v6, v15, :cond_e

    .line 552
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070551

    .line 553
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    .line 554
    iget v15, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v14, v14

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v4, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 556
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->r()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 557
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v6, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    int-to-float v6, v6

    int-to-float v14, v14

    iget-object v15, v0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 561
    :cond_f
    :goto_8
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    const/high16 v6, 0x43e10000    # 450.0f

    const/high16 v14, 0x437f0000    # 255.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v4, :cond_13

    .line 562
    iget-boolean v4, v0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-eqz v4, :cond_10

    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->e:F

    goto :goto_9

    .line 563
    :cond_10
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->f:F

    sub-float v4, v16, v4

    :goto_9
    mul-float/2addr v4, v14

    float-to-int v4, v4

    int-to-float v9, v4

    cmpl-float v9, v9, v15

    if-lez v9, :cond_13

    .line 566
    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 569
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v4, v9

    int-to-float v4, v4

    div-float/2addr v4, v8

    if-eqz v5, :cond_11

    .line 573
    iget v9, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    iget-object v15, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int/2addr v9, v15

    int-to-float v9, v9

    div-float v15, v9, v8

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    .line 576
    :goto_a
    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v9, v4

    add-float/2addr v15, v10

    add-float/2addr v15, v11

    .line 577
    iget-object v14, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    .line 578
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v8

    add-float/2addr v14, v15

    .line 580
    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-eqz v8, :cond_12

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->e:F

    goto :goto_b

    :cond_12
    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->f:F

    :goto_b
    mul-float/2addr v8, v6

    invoke-virtual {v1, v8, v9, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 583
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 591
    :cond_13
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_19

    .line 592
    iget-boolean v4, v0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-nez v4, :cond_14

    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->f:F

    goto :goto_c

    .line 593
    :cond_14
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->e:F

    sub-float v4, v16, v4

    :goto_c
    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_19

    .line 597
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 600
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    if-eqz v5, :cond_15

    .line 604
    iget v9, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    iget-object v14, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v9, v14

    int-to-float v9, v9

    div-float v15, v9, v8

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    .line 607
    :goto_d
    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->n:Z

    if-eqz v8, :cond_16

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->s()V

    .line 609
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->A:Landroid/graphics/Bitmap;

    add-float/2addr v15, v10

    add-float/2addr v15, v11

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 612
    :cond_16
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    add-float/2addr v15, v10

    add-float/2addr v15, v11

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 617
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v12

    const/4 v8, 0x0

    .line 621
    invoke-virtual {v1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 627
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    const/4 v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    .line 633
    :goto_f
    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->r:Z

    if-eqz v8, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 635
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v6, v4

    div-float/2addr v2, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 636
    iget v6, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    int-to-float v6, v6

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->am:F

    mul-float/2addr v6, v8

    invoke-virtual {v1, v2, v2, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float v2, v12

    const/4 v4, 0x0

    .line 637
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 643
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 645
    :cond_1b
    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->l:Z

    if-eqz v8, :cond_21

    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->q:Z

    if-eqz v8, :cond_21

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_21

    cmpg-float v8, v8, v16

    if-gez v8, :cond_21

    .line 649
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    if-nez v8, :cond_1c

    .line 650
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    .line 653
    :cond_1c
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    if-nez v8, :cond_1d

    .line 654
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    .line 657
    :cond_1d
    iget-boolean v8, v0, Lcom/oplus/camera/ui/menu/i;->k:Z

    if-nez v8, :cond_1e

    if-nez v4, :cond_1f

    :cond_1e
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 659
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    mul-float/2addr v4, v6

    int-to-float v6, v7

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    .line 660
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v6

    add-int v11, v13, v3

    add-int/2addr v11, v2

    int-to-float v11, v11

    iget-object v12, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    .line 661
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    add-float/2addr v12, v11

    .line 659
    invoke-virtual {v1, v4, v8, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 662
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 663
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    :cond_1f
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    int-to-float v6, v7

    add-int v8, v13, v3

    add-int/2addr v8, v2

    int-to-float v2, v8

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 667
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    sub-float v9, v16, v8

    sub-float v8, v16, v8

    iget v11, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v14, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 669
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    add-float/2addr v14, v2

    .line 667
    invoke-virtual {v4, v9, v8, v11, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 670
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    sub-float v16, v16, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v9, v16, v8

    float-to-int v8, v9

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 672
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->w:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_20

    .line 673
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 676
    :cond_20
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 677
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    iget v6, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    iget v8, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v11, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 678
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v2, v11

    .line 677
    invoke-virtual {v4, v6, v6, v8, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 679
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->g:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 680
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->O:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 682
    :cond_21
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->P:Lcom/oplus/camera/ComboPreferences;

    const-string v8, "off"

    const-string v9, "pref_subsetting_key"

    invoke-virtual {v6, v9, v8}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 684
    iget-boolean v9, v0, Lcom/oplus/camera/ui/menu/i;->p:Z

    if-eqz v9, :cond_27

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-boolean v6, v0, Lcom/oplus/camera/ui/menu/i;->n:Z

    if-nez v6, :cond_27

    .line 685
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    .line 686
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 685
    invoke-static {v6, v8, v9, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/oplus/camera/ui/menu/i;->C:Landroid/graphics/Bitmap;

    .line 687
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->C:Landroid/graphics/Bitmap;

    int-to-float v8, v7

    add-int v9, v13, v3

    add-int/2addr v9, v2

    int-to-float v2, v9

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 688
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v8, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 690
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_28

    if-eqz v4, :cond_28

    if-eqz v6, :cond_28

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->B:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_28

    .line 694
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->M:Landroid/graphics/Paint;

    if-nez v4, :cond_22

    .line 695
    new-instance v4, Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->J:Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, v0, Lcom/oplus/camera/ui/menu/i;->M:Landroid/graphics/Paint;

    .line 700
    :cond_22
    iget-boolean v4, v0, Lcom/oplus/camera/ui/menu/i;->k:Z

    const v6, 0x4411c000    # 583.0f

    const/16 v9, 0xff

    if-eqz v4, :cond_24

    .line 701
    iget v4, v0, Lcom/oplus/camera/ui/menu/i;->e:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    sub-float v16, v16, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    float-to-int v4, v4

    if-le v4, v9, :cond_23

    :goto_10
    move v4, v9

    goto :goto_12

    :cond_23
    if-gez v4, :cond_26

    const/4 v4, 0x0

    goto :goto_12

    :cond_24
    const/16 v4, 0x193

    .line 712
    iget v11, v0, Lcom/oplus/camera/ui/menu/i;->f:F

    mul-float v12, v11, v6

    int-to-float v4, v4

    cmpg-float v12, v12, v4

    if-gez v12, :cond_25

    const/4 v4, 0x0

    goto :goto_11

    :cond_25
    mul-float/2addr v11, v6

    sub-float/2addr v11, v4

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v11, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v11, v4

    float-to-int v4, v11

    :goto_11
    if-le v4, v9, :cond_26

    goto :goto_10

    .line 724
    :cond_26
    :goto_12
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->M:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 725
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->B:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->M:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 727
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->D:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_13

    .line 731
    :cond_27
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    int-to-float v6, v7

    add-int v8, v13, v3

    add-int/2addr v8, v2

    int-to-float v2, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 735
    :cond_28
    :goto_13
    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/i;->m:Z

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    if-eqz v2, :cond_29

    .line 736
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070a27

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 737
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070a26

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 738
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/i;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v7, v6

    iget v6, v0, Lcom/oplus/camera/ui/menu/i;->ah:I

    add-int/2addr v7, v6

    int-to-float v6, v7

    add-float/2addr v6, v4

    add-int/2addr v13, v3

    .line 739
    iget v3, v0, Lcom/oplus/camera/ui/menu/i;->ai:I

    add-int/2addr v13, v3

    int-to-float v3, v13

    sub-float/2addr v3, v4

    .line 741
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_29
    if-nez v5, :cond_2a

    .line 746
    iget v2, v0, Lcom/oplus/camera/ui/menu/i;->ab:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/i;->t()V

    .line 748
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    iget v5, v0, Lcom/oplus/camera/ui/menu/i;->aa:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v2, v10

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2a
    :goto_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 456
    invoke-super/range {p0 .. p5}, Lcom/airbnb/lottie/LottieAnimationView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 458
    iput p4, p0, Lcom/oplus/camera/ui/menu/i;->aa:I

    sub-int/2addr p5, p3

    .line 459
    iput p5, p0, Lcom/oplus/camera/ui/menu/i;->ab:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->y:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 820
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 821
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->getHitRect(Landroid/graphics/Rect;)V

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    .line 825
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 826
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/i;->j:Z

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->i:Z

    if-nez v0, :cond_2

    const v0, 0x7f0903d8

    .line 832
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, The click area is not included in the hot rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mItemYOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/menu/i;->aj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLayoutHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/menu/i;->ad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sSettingMenuItemHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {}, Lcom/oplus/camera/util/Util;->Q()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RotationOptionItemView"

    .line 835
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 843
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onTouchEvent, The click area is not included in the drawing rect, the drawing zone: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 843
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 851
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 861
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->setAlpha(F)V

    goto :goto_0

    :cond_4
    const v0, 0x3e99999a    # 0.3f

    .line 853
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/i;->setAlpha(F)V

    .line 869
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 411
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i;->r:Z

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->e()V

    .line 417
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setClickable(Z)V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 418
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setAlpha(F)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 1086
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    .line 1087
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->refreshDrawableState()V

    .line 1088
    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setSizeRatioType(I)V

    .line 1090
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->E:Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->u()V

    .line 405
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->v()V

    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->T:Ljava/lang/String;

    return-void
.end method

.method public setLottieIconNeedAnim(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->r:Z

    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->G:Ljava/lang/String;

    return-void
.end method

.method public setOffAnimIcon(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->z:Landroid/graphics/Bitmap;

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    .line 235
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i;->B:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->F:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->u()V

    .line 947
    :cond_0
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSelected(Z)V

    .line 948
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    return-void
.end method

.method public setShadowOn(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->p:Z

    return-void
.end method

.method public setSizeRatioType(I)V
    .locals 5

    .line 963
    iput p1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    .line 965
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result p1

    const v0, 0x7f06006a

    const/4 v1, 0x1

    if-ne v1, p1, :cond_4

    .line 966
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    const v2, 0x7f060098

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_1

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x10e

    .line 971
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->an:[I

    aget p1, p1, v4

    const/16 v3, 0x15e

    if-ge p1, v3, :cond_2

    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-ne v1, p1, :cond_2

    .line 975
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    .line 976
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/i;->ao:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v3

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->n:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->an:[I

    aget p1, p1, v4

    const/16 v3, 0x5a0

    if-le p1, v3, :cond_3

    iget p1, p0, Lcom/oplus/camera/ui/menu/i;->ae:I

    if-ne v1, p1, :cond_3

    .line 980
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 982
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 986
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/i;->r()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 987
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->P:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "off"

    const-string v2, "pref_subsetting_key"

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 989
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 990
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 992
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i;->L:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i;->s:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 996
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->postInvalidate()V

    return-void
.end method

.method public setStateSecond(Z)V
    .locals 0

    .line 1079
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->o:Z

    .line 1080
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->refreshDrawableState()V

    .line 1081
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    return-void
.end method

.method public setSwitchIconNeedAnim(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/i;->l:Z

    return-void
.end method
