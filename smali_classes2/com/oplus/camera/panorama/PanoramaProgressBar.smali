.class public Lcom/oplus/camera/panorama/PanoramaProgressBar;
.super Landroid/view/View;
.source "PanoramaProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;
    }
.end annotation


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x6

.field private static f:F = 6.0f

.field private static g:F = 6.0f

.field private static h:I = 0x78

.field private static i:I = 0x78

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:I = 0x24

.field private static n:I = 0x0

.field private static o:I = 0x24

.field private static p:I

.field private static q:I

.field private static r:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/view/animation/PathInterpolator;

.field private N:Landroid/view/animation/PathInterpolator;

.field private O:Landroid/animation/ObjectAnimator;

.field private P:Landroid/animation/ObjectAnimator;

.field private Q:Landroid/animation/ObjectAnimator;

.field private R:Landroid/animation/ObjectAnimator;

.field private S:Landroid/animation/ObjectAnimator;

.field private T:Landroid/animation/ObjectAnimator;

.field private U:Landroid/animation/ObjectAnimator;

.field private V:Landroid/animation/ObjectAnimator;

.field private W:Landroid/animation/ObjectAnimator;

.field private aa:Landroid/graphics/drawable/Drawable;

.field private ab:Landroid/graphics/Rect;

.field private ac:Landroid/graphics/Rect;

.field private ad:Landroid/graphics/Rect;

.field private ae:Landroid/graphics/Rect;

.field private af:Landroid/graphics/Rect;

.field private ag:Landroid/content/res/Resources;

.field private ah:Landroid/graphics/Paint;

.field private ai:Landroid/graphics/Paint;

.field private aj:Landroid/graphics/Paint;

.field private ak:Landroid/graphics/Path;

.field private al:Landroid/graphics/DashPathEffect;

.field private am:Landroid/graphics/Paint;

.field private an:Landroid/graphics/Paint;

.field private ao:I

.field private ap:F

.field private aq:I

.field private ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

.field private as:I

.field private at:Landroid/graphics/Rect;

.field private au:I

.field private av:I

.field private aw:I

.field private ax:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Canvas;

.field private v:Landroid/graphics/Paint;

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 171
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u:Landroid/graphics/Canvas;

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    const/4 v2, -0x1

    .line 92
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 93
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    .line 94
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 95
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    .line 96
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    .line 97
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    .line 98
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    .line 99
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    .line 100
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    .line 101
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 102
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 103
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->I:I

    .line 104
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->J:I

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    .line 107
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    .line 108
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    .line 109
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    .line 110
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    .line 111
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    .line 112
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    .line 113
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    .line 114
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    .line 115
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    .line 116
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    .line 117
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    .line 118
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aa:Landroid/graphics/drawable/Drawable;

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 120
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    .line 121
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    .line 122
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    .line 123
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    .line 124
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    .line 126
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    .line 127
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    .line 128
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    .line 129
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->al:Landroid/graphics/DashPathEffect;

    .line 130
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->am:Landroid/graphics/Paint;

    .line 131
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    .line 132
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ao:I

    .line 133
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    .line 134
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    .line 135
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    .line 136
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    .line 1085
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    .line 1086
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    .line 1087
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    .line 1088
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    .line 1089
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f0805ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aa:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i()V

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f070936

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f070934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f07093c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e:I

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f070939

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->f:F

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f07093b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->g:F

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f07093d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f070935

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->p:I

    .line 186
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q:I

    .line 187
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f07093a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->r:I

    .line 188
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f070586

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f070938

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    .line 191
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f070944

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ao:I

    .line 192
    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ao:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    .line 193
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f070588

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v0, 0x7f070943

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    .line 195
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ao:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/PanoramaProgressBar;)Landroid/graphics/Paint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    const/4 v0, 0x0

    .line 1005
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 1006
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 1007
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->I:I

    .line 1008
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->invalidate()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 794
    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x5

    if-ne v0, v2, :cond_3

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 796
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;->onReportDirectionChange(I)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;->onReportDirectionChange(I)V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    if-ne v0, p0, :cond_3

    move v1, v2

    :cond_3
    invoke-interface {p1, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;->onReportDirectionChange(I)V

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .line 806
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 825
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    .line 810
    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-ne v0, v1, :cond_3

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 813
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->r:I

    if-ge v0, v1, :cond_4

    .line 814
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 816
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    .line 840
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 856
    :cond_2
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x5

    if-ne v4, v0, :cond_4

    .line 860
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x7

    if-ne v5, v0, :cond_8

    .line 863
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    if-eq v2, v0, :cond_7

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    if-eq v3, v0, :cond_6

    if-ne v4, v2, :cond_9

    .line 869
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 865
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aq:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 874
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ap:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->an:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_1
    return-void
.end method

.method static synthetic h()I
    .locals 1

    .line 38
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q:I

    return v0
.end method

.method private i()V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    const-wide/16 v1, 0xfa

    const/4 v3, 0x2

    const-string v4, "alpha"

    if-eqz v0, :cond_0

    .line 203
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 215
    new-array v5, v3, [I

    fill-array-data v5, :array_2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private j()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    const-wide/16 v1, 0xfa

    const/4 v3, 0x2

    const-string v4, "alpha"

    if-eqz v0, :cond_0

    .line 276
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/oplus/camera/panorama/PanoramaProgressBar$1;

    invoke-direct {v5, p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar$1;-><init>(Lcom/oplus/camera/panorama/PanoramaProgressBar;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/oplus/camera/panorama/PanoramaProgressBar$2;

    invoke-direct {v5, p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar$2;-><init>(Lcom/oplus/camera/panorama/PanoramaProgressBar;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 304
    new-array v5, v3, [I

    fill-array-data v5, :array_2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    new-array v5, v3, [I

    fill-array-data v5, :array_3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 316
    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private k()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowLeftToRightAnimator"

    .line 1142
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->r()V

    .line 1144
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s()V

    return-void
.end method

.method private l()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowLeftToRightAnimator"

    .line 1148
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q()V

    .line 1150
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t()V

    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowNoneToLeftAnimator"

    .line 1154
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q()V

    .line 1157
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u()V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowLeftToNoneAnimator"

    .line 1161
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->r()V

    .line 1164
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v()V

    return-void
.end method

.method private o()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowNoneToRightAnimator"

    .line 1168
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s()V

    .line 1171
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u()V

    return-void
.end method

.method private p()V
    .locals 2

    const-string v0, "PanoramaProgressBar"

    const-string v1, "startArrowRightToNoneAnimator"

    .line 1175
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t()V

    .line 1178
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v()V

    return-void
.end method

.method private q()V
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1187
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1191
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private r()V
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1201
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1205
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private s()V
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1215
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1219
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private t()V
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1233
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private u()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1243
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 1255
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1256
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1259
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void
.end method

.method private v()V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->T:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1269
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->S:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1277
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->U:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1280
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 1281
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1282
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1285
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->V:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    .line 999
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method

.method public a()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startArrowAnimation, mDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaProgressBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->p()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 153
    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-ne v0, v1, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne v0, v1, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IIIIII)V
    .locals 0

    .line 232
    sput p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    .line 233
    sput p2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    .line 234
    sput p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    .line 235
    sput p4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    .line 236
    sput p5, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n:I

    .line 237
    sput p6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    .line 239
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    :cond_0
    sget p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    sget p2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    sget p2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    sget p4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    add-int/2addr p4, p2

    sget p5, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->q:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    .line 253
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->p:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 p4, 0x0

    sget p5, Lcom/oplus/camera/panorama/PanoramaProgressBar;->f:F

    aput p5, p3, p4

    sget p4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->g:F

    aput p4, p3, p2

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->al:Landroid/graphics/DashPathEffect;

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->al:Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 261
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    .line 262
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    sget p2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    int-to-float p2, p2

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    int-to-float p3, p3

    iget-object p4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ak:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    int-to-float p3, p3

    iget-object p4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->am:Landroid/graphics/Paint;

    .line 266
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v:Landroid/graphics/Paint;

    .line 267
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 269
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    .line 271
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "PanoramaProgressBar"

    const-string v1, "finishAndReset"

    .line 1092
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-nez v0, :cond_0

    .line 1095
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 1096
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    return-void

    .line 1101
    :cond_0
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    .line 1102
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 1103
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 1104
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1105
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    .line 1106
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    .line 1107
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setForceResetBitmap(Landroid/graphics/Bitmap;)V

    .line 1109
    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setDirection(I)V

    const/4 p1, 0x7

    .line 1110
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    .line 1112
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1114
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1117
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aj:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1118
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    const/4 p1, 0x3

    .line 1121
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    if-eq p1, v0, :cond_5

    const/4 p1, 0x4

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-eq p1, v0, :cond_4

    const/4 p1, 0x5

    if-ne p1, v1, :cond_6

    .line 1126
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->p()V

    goto :goto_1

    .line 1123
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 932
    iput p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    if-nez p2, :cond_0

    .line 934
    iget p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    if-le p3, v0, :cond_0

    const/4 p3, -0x1

    .line 935
    iput p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    :cond_0
    if-gez p2, :cond_1

    .line 939
    iget p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    iput p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    goto :goto_0

    .line 941
    :cond_1
    iget p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    :goto_0
    if-lez p2, :cond_3

    .line 944
    iget-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    .line 945
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sget p3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    if-eq p2, p3, :cond_2

    .line 946
    sget p2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v0}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 947
    new-instance p2, Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u:Landroid/graphics/Canvas;

    .line 950
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 951
    iget-object p2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->v:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 952
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->u:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 954
    :cond_3
    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 957
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->invalidate()V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1058
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    if-ne p1, v1, :cond_5

    const/4 p1, -0x1

    .line 1059
    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v1, :cond_1

    .line 1060
    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    if-ge v0, p1, :cond_0

    .line 1061
    invoke-direct {p0, v2}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(I)V

    .line 1062
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m()V

    goto :goto_1

    .line 1063
    :cond_0
    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    if-le v0, p1, :cond_4

    .line 1064
    invoke-direct {p0, v3}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(I)V

    .line 1065
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o()V

    goto :goto_1

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1069
    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    if-ne v3, p1, :cond_2

    .line 1070
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k()V

    goto :goto_0

    :cond_2
    if-ne v2, p1, :cond_3

    .line 1072
    invoke-direct {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->l()V

    .line 1075
    :cond_3
    :goto_0
    invoke-direct {p0, v4}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(I)V

    :cond_4
    :goto_1
    return v4

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 14

    .line 324
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v1, :cond_10

    const/4 v8, 0x6

    if-eq v0, v7, :cond_8

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 326
    :cond_0
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 327
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    .line 328
    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    .line 329
    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    .line 331
    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    if-lt v0, v2, :cond_1

    .line 332
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n:I

    add-int/2addr v9, v10

    iget v11, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    iget v12, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    sub-int/2addr v12, v10

    invoke-virtual {v0, v2, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-nez v0, :cond_3

    .line 339
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int v2, v0, v1

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v2, v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v5, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    add-int v6, v4, v5

    sub-int/2addr v6, v1

    if-lt v2, v6, :cond_2

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 341
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v1, v2

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    add-int/2addr v2, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 343
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget v6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    sub-int/2addr v3, v5

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, p0

    .line 340
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 346
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v4

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 348
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget v6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v4, p0

    .line 345
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_3
    if-ne v7, v0, :cond_5

    .line 351
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 352
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 355
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_4

    .line 356
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 360
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sget v6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 363
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v4, v6

    .line 359
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    if-lt v0, v1, :cond_1d

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 367
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 368
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    goto/16 :goto_2

    :cond_5
    if-ne v6, v0, :cond_7

    .line 371
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 372
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 375
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_6

    .line 376
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 380
    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 383
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 385
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v8, v9

    .line 382
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 388
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 390
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 387
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 392
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 393
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 394
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 395
    iput v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 396
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_7
    if-ne v8, v0, :cond_1d

    .line 399
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 400
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->l:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int v8, v2, v3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 403
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    add-int/2addr v8, v3

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v2, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v2, v8

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 406
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 408
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    .line 405
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 411
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 413
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 410
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 416
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 417
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 418
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 419
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    .line 426
    :cond_8
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    add-int/2addr v9, v0

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    .line 427
    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 428
    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    iput v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    .line 429
    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    .line 431
    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    if-gt v9, v0, :cond_9

    .line 432
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 435
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n:I

    add-int/2addr v10, v11

    iget v12, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    iget v13, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    sub-int/2addr v13, v11

    invoke-virtual {v0, v9, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-nez v0, :cond_b

    .line 439
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    add-int/2addr v2, v1

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v2, v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v2, v4

    if-gt v0, v2, :cond_a

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    add-int/2addr v1, v3

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 441
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v4

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 443
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget v6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v4, p0

    .line 440
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 445
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    sub-int/2addr v0, v4

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 446
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 448
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget v6, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v4, p0

    .line 445
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_b
    if-ne v2, v0, :cond_d

    .line 451
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 452
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 455
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_c

    .line 456
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 459
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v4, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 463
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v4, v6

    .line 459
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    if-lt v0, v1, :cond_1d

    .line 466
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 467
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 468
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    goto/16 :goto_2

    :cond_d
    if-ne v6, v0, :cond_f

    .line 471
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 472
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v1, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 475
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_e

    .line 476
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 479
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int v8, v1, v3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 480
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sub-int/2addr v8, v3

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 483
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 485
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    .line 482
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 487
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 488
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 490
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 487
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 492
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 493
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 494
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 495
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 496
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_f
    if-ne v8, v0, :cond_1d

    .line 499
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 500
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->l:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 503
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int v8, v2, v3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 504
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sub-int/2addr v8, v3

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v2, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 507
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 509
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    .line 506
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 512
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 514
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 511
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 516
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 517
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 518
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 519
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 520
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    .line 527
    :cond_10
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    div-int/2addr v0, v7

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 528
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    .line 529
    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d:I

    iput v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    .line 530
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    .line 531
    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->n:I

    add-int/2addr v8, v10

    iget v11, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    iget v12, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    sub-int/2addr v12, v10

    invoke-virtual {v9, v0, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 534
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v12, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 536
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget v13, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v12, v13

    div-int/2addr v12, v7

    sub-int/2addr v11, v12

    .line 533
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 537
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 538
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v10, v11

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v12, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 540
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget v13, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v12, v13

    div-int/2addr v12, v7

    sub-int/2addr v11, v12

    .line 537
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 542
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-nez v0, :cond_11

    goto/16 :goto_2

    :cond_11
    if-ne v7, v0, :cond_13

    .line 545
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 546
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v1, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 549
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_12

    .line 550
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 553
    :cond_12
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int v8, v1, v3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 554
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sub-int/2addr v8, v3

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 556
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 557
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 559
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    .line 556
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 561
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 562
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 564
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 561
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 566
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 568
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 569
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 570
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 572
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_13
    if-ne v2, v0, :cond_15

    .line 575
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 576
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 579
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_14

    .line 580
    sget v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 583
    :cond_14
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 584
    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 587
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 589
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v8, v9

    .line 586
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 592
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 594
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v8, v9

    .line 591
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 598
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 599
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 600
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 601
    iput v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 602
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_15
    const/4 v8, 0x4

    if-ne v8, v0, :cond_17

    .line 605
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 606
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v1, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 609
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_16

    .line 610
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 613
    :cond_16
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int v8, v1, v3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 614
    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sub-int/2addr v8, v3

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 617
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 619
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    .line 616
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 622
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 624
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v7

    .line 621
    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 626
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 628
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 629
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 630
    iput v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 631
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_17
    const/4 v9, 0x5

    if-ne v9, v0, :cond_18

    .line 634
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 635
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 639
    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 641
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v1, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 642
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 644
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v8, v9

    .line 641
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 646
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v2, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 647
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v3, v8

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v3, v8

    sget v8, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 649
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget v10, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v8, v9

    .line 646
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 651
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 653
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 654
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 655
    iput v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 656
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    goto/16 :goto_2

    :cond_18
    const/4 v10, 0x7

    if-ne v10, v0, :cond_1d

    .line 659
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 660
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    int-to-float v0, v0

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v11, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v11, v11

    div-float/2addr v11, v3

    invoke-virtual {v10, v11}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    .line 663
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->au:I

    if-eq v7, v0, :cond_1b

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->av:I

    if-ne v9, v10, :cond_19

    goto/16 :goto_0

    :cond_19
    if-eq v2, v0, :cond_1a

    if-ne v8, v10, :cond_1c

    .line 682
    :cond_1a
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v2, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 688
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 690
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 687
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 693
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    sub-int/2addr v3, v8

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 695
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v7

    iget v7, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    sub-int/2addr v9, v7

    .line 692
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 665
    :cond_1b
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->M:Landroid/view/animation/PathInterpolator;

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 667
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->at:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 668
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v2, v3

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 671
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v3, v8

    iget v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    sub-int/2addr v3, v8

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 673
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aw:I

    sub-int/2addr v9, v10

    .line 670
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 676
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->o:I

    add-int/2addr v8, v9

    sget v9, Lcom/oplus/camera/panorama/PanoramaProgressBar;->h:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    iget-object v10, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    .line 678
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oplus/camera/panorama/PanoramaProgressBar;->i:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 675
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 698
    :cond_1c
    :goto_1
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    if-ne v4, v0, :cond_1d

    .line 699
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 700
    iput v5, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 701
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 702
    iput-boolean v6, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    :cond_1d
    :goto_2
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "TAG"

    const-string v1, "resetProgressBar"

    .line 896
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    iput-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 905
    iput-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->z:I

    .line 909
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->A:I

    .line 910
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->B:I

    .line 911
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->C:I

    .line 912
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v2, 0x7f070588

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ag:Landroid/content/res/Resources;

    const v2, 0x7f070943

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->D:I

    .line 914
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->E:I

    .line 915
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    .line 916
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 917
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->f()V

    .line 918
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    const/4 v0, -0x1

    .line 919
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setDirection(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 974
    iput-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 979
    iput-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 983
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 984
    iput-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 0

    .line 995
    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1047
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->f()V

    const/4 v0, 0x0

    .line 1048
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    .line 1049
    iput v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->H:I

    .line 1050
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    const/4 v0, -0x1

    .line 1051
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setDirection(I)V

    return-void
.end method

.method public getDirection()I
    .locals 0

    .line 1039
    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 887
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b()V

    .line 888
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setDisplay(Landroid/graphics/Canvas;)V

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAnimationState(I)V
    .locals 2

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimationStateState, animationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaProgressBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 1034
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    .line 1035
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->postInvalidate()V

    return-void
.end method

.method public setDisplay(Landroid/graphics/Canvas;)V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aa:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ab:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->aa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->b(Landroid/graphics/Canvas;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Landroid/graphics/Canvas;)V

    .line 720
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 721
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->am:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 723
    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ac:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->am:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 726
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c(Landroid/graphics/Canvas;)V

    .line 728
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    .line 730
    :cond_2
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-eq v3, v0, :cond_4

    if-ne v2, v0, :cond_3

    goto :goto_1

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 732
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 733
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 745
    :cond_5
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-eq v3, v0, :cond_7

    if-ne v2, v0, :cond_6

    goto :goto_2

    .line 753
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ad:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 754
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 747
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 748
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 760
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 761
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->af:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 772
    :goto_3
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->G:I

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 773
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    .line 774
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->w:Z

    const-string p1, "PanoramaProgressBar"

    const-string v0, "setDisplay, animate end"

    .line 776
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->am:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 781
    iget p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->y:I

    if-nez p1, :cond_b

    .line 782
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    const/16 v0, 0xff

    if-nez p1, :cond_a

    .line 783
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 784
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 787
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ah:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 788
    iget-object p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ai:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_b
    return-void
.end method

.method public setForceResetBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1133
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p1, :cond_1

    .line 1137
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ax:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setFrameSize(I)V
    .locals 2

    .line 961
    iget v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    if-ne v0, p1, :cond_0

    return-void

    .line 965
    :cond_0
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    .line 966
    sget p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a:I

    iget p0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->F:I

    sub-int v0, p1, p0

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->j:I

    sub-int v0, p1, p0

    .line 967
    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->m:I

    sub-int/2addr v0, v1

    sput v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->k:I

    sub-int/2addr p1, p0

    .line 968
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v1

    sput p1, Lcom/oplus/camera/panorama/PanoramaProgressBar;->l:I

    return-void
.end method

.method public setRearPanoramaInterface(Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->ar:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    return-void
.end method

.method public setRectMarginLeft(I)V
    .locals 0

    .line 1290
    iput p1, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->as:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Lcom/oplus/camera/panorama/PanoramaProgressBar;->s:Landroid/graphics/Bitmap;

    .line 928
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
