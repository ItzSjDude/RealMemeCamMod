.class public Lcom/oplus/camera/panorama/f;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oplus/camera/panorama/d$a;
.implements Lcom/oplus/camera/panorama/g$a;


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/content/res/Resources;

.field private C:Ljava/lang/Object;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field private F:Landroid/util/Size;

.field private G:Landroid/util/Size;

.field private H:Landroid/util/Size;

.field private I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

.field private volatile J:Z

.field private volatile K:Z

.field private volatile L:Z

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Z

.field private volatile R:I

.field private S:[B

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:F

.field private ab:I

.field private ac:Lcom/oplus/camera/panorama/g;

.field private ad:Landroid/graphics/Bitmap;

.field private ae:Landroid/graphics/Matrix;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:I

.field private ai:F

.field private aj:I

.field private ak:Lcom/oplus/camera/panorama/d;

.field private al:Landroid/graphics/Bitmap;

.field private am:Landroid/os/Handler;

.field g:Lcom/oplus/camera/panorama/FrontPanoramaGuideView$a;

.field h:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

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

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/widget/ImageView;

.field private z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/16 p1, 0x438

    .line 116
    iput p1, p0, Lcom/oplus/camera/panorama/f;->j:I

    const/16 p1, 0x11a

    .line 117
    iput p1, p0, Lcom/oplus/camera/panorama/f;->k:I

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/oplus/camera/panorama/f;->l:I

    .line 119
    iput p1, p0, Lcom/oplus/camera/panorama/f;->m:I

    .line 120
    iput p1, p0, Lcom/oplus/camera/panorama/f;->n:I

    .line 121
    iput p1, p0, Lcom/oplus/camera/panorama/f;->o:I

    .line 122
    iput p1, p0, Lcom/oplus/camera/panorama/f;->p:I

    .line 123
    iput p1, p0, Lcom/oplus/camera/panorama/f;->q:I

    const/16 p2, 0x2a

    .line 124
    iput p2, p0, Lcom/oplus/camera/panorama/f;->r:I

    .line 125
    iput p1, p0, Lcom/oplus/camera/panorama/f;->s:I

    .line 126
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    .line 127
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->u:Z

    .line 128
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->v:Z

    .line 129
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->w:Z

    const/4 p2, 0x0

    .line 130
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 131
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    .line 132
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    .line 133
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    .line 134
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    .line 135
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/oplus/camera/panorama/f;->C:Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    .line 137
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 138
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 139
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->G:Landroid/util/Size;

    .line 140
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    .line 141
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    .line 142
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    .line 143
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->K:Z

    const/4 p3, 0x1

    .line 144
    iput-boolean p3, p0, Lcom/oplus/camera/panorama/f;->L:Z

    .line 146
    iput p1, p0, Lcom/oplus/camera/panorama/f;->M:I

    .line 147
    iput p1, p0, Lcom/oplus/camera/panorama/f;->N:I

    .line 148
    iput p1, p0, Lcom/oplus/camera/panorama/f;->O:I

    .line 150
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->Q:Z

    const/4 p3, -0x1

    .line 151
    iput p3, p0, Lcom/oplus/camera/panorama/f;->R:I

    .line 152
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->S:[B

    .line 153
    iput p1, p0, Lcom/oplus/camera/panorama/f;->T:I

    .line 154
    iput p1, p0, Lcom/oplus/camera/panorama/f;->U:I

    .line 155
    iput p1, p0, Lcom/oplus/camera/panorama/f;->V:I

    .line 156
    iput p1, p0, Lcom/oplus/camera/panorama/f;->W:I

    .line 157
    iput p1, p0, Lcom/oplus/camera/panorama/f;->X:I

    .line 158
    iput p1, p0, Lcom/oplus/camera/panorama/f;->Y:I

    .line 159
    iput p1, p0, Lcom/oplus/camera/panorama/f;->Z:I

    const/4 p3, 0x0

    .line 160
    iput p3, p0, Lcom/oplus/camera/panorama/f;->aa:F

    .line 161
    iput p1, p0, Lcom/oplus/camera/panorama/f;->ab:I

    .line 162
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    .line 163
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->ad:Landroid/graphics/Bitmap;

    .line 164
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/oplus/camera/panorama/f;->ae:Landroid/graphics/Matrix;

    const-string p4, "normal"

    .line 166
    iput-object p4, p0, Lcom/oplus/camera/panorama/f;->af:Ljava/lang/String;

    .line 167
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->ag:Z

    .line 168
    iput p1, p0, Lcom/oplus/camera/panorama/f;->ah:I

    .line 169
    iput p3, p0, Lcom/oplus/camera/panorama/f;->ai:F

    const/4 p1, -0x2

    .line 170
    iput p1, p0, Lcom/oplus/camera/panorama/f;->aj:I

    .line 172
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    .line 173
    iput-object p2, p0, Lcom/oplus/camera/panorama/f;->al:Landroid/graphics/Bitmap;

    .line 175
    new-instance p1, Lcom/oplus/camera/panorama/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/panorama/f$1;-><init>(Lcom/oplus/camera/panorama/f;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    .line 1947
    new-instance p1, Lcom/oplus/camera/panorama/f$7;

    invoke-direct {p1, p0}, Lcom/oplus/camera/panorama/f$7;-><init>(Lcom/oplus/camera/panorama/f;)V

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->g:Lcom/oplus/camera/panorama/FrontPanoramaGuideView$a;

    .line 1957
    new-instance p1, Lcom/oplus/camera/panorama/f$8;

    invoke-direct {p1, p0}, Lcom/oplus/camera/panorama/f$8;-><init>(Lcom/oplus/camera/panorama/f;)V

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->h:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic B(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic C(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic D(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic E(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic F(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->G:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic H(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->K:Z

    return p0
.end method

.method static synthetic I(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic J(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->X:I

    return p0
.end method

.method static synthetic K(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->W:I

    return p0
.end method

.method static synthetic L(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    return p0
.end method

.method static synthetic M(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Matrix;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ae:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic N(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->R:I

    return p0
.end method

.method static synthetic O(Lcom/oplus/camera/panorama/f;)Landroid/os/Handler;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic P(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    return p0
.end method

.method static synthetic Q(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->t:Z

    return p0
.end method

.method static synthetic R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic T(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    return p0
.end method

.method static synthetic U(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic V(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic W(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic X(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    return p0
.end method

.method static synthetic Y(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->p()V

    return-void
.end method

.method static synthetic Z(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;F)F
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->aa:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->ab:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6

    .line 2062
    iget v0, p0, Lcom/oplus/camera/panorama/f;->R:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 2063
    iget v0, p0, Lcom/oplus/camera/panorama/f;->Z:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/oplus/camera/panorama/f;->aa:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v4, p0, Lcom/oplus/camera/panorama/f;->X:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2065
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 2067
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2068
    invoke-virtual {v3, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2071
    :cond_0
    iget p1, p0, Lcom/oplus/camera/panorama/f;->Z:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/oplus/camera/panorama/f;->aa:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p0, p0, Lcom/oplus/camera/panorama/f;->aa:F

    mul-float/2addr p3, p0

    invoke-virtual {v3, p2, p1, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2073
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 2074
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2075
    iget v3, p0, Lcom/oplus/camera/panorama/f;->R:I

    if-ne v0, v3, :cond_3

    .line 2076
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v3, p0, Lcom/oplus/camera/panorama/f;->aa:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v4, p0, Lcom/oplus/camera/panorama/f;->X:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2078
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_2

    .line 2080
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2081
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2084
    :cond_2
    iget p1, p3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p0, p0, Lcom/oplus/camera/panorama/f;->aa:F

    mul-float/2addr p1, p0

    invoke-virtual {v3, p2, v1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2085
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 2086
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->al:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/panorama/f;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->G:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;Lcom/oplus/camera/panorama/g;)Lcom/oplus/camera/panorama/g;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    return-object p1
.end method

.method private a([B)V
    .locals 9

    .line 490
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->C:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 493
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    monitor-exit v0

    return-void

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 506
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 507
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 508
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v7, v1, 0x6

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 509
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x6

    move-object v4, p1

    .line 506
    invoke-static/range {v3 .. v8}, Lcom/oplus/camera/panorama/e;->a(Landroid/content/Context;[BIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 511
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 512
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 513
    invoke-virtual {v6, p1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 515
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 516
    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 521
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz p1, :cond_3

    .line 522
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/panorama/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 524
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/f;->b(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    :goto_1
    :try_start_1
    const-string v1, "PanoramaCapMode"

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFrontPreviewFrame, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mFrontPreviewBitmap: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mPictureSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 524
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/f;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->K:Z

    return p1
.end method

.method static synthetic aA(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    return p0
.end method

.method static synthetic aB(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->mCameraId:I

    return p0
.end method

.method static synthetic aC(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aD(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic aa(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->T:I

    return p0
.end method

.method static synthetic ab(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->o:I

    return p0
.end method

.method static synthetic ac(Lcom/oplus/camera/panorama/f;)F
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->aa:F

    return p0
.end method

.method static synthetic ad(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->j:I

    return p0
.end method

.method static synthetic ae(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->Z:I

    return p0
.end method

.method static synthetic af(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->Y:I

    return p0
.end method

.method static synthetic ag(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/g;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    return-object p0
.end method

.method static synthetic ah(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic ai(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    return p0
.end method

.method static synthetic aj(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    return p0
.end method

.method static synthetic ak(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic al(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic am(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic an(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ao(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ap(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->isPanelMode()Z

    move-result p0

    return p0
.end method

.method static synthetic aq(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ar(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic as(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic at(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    return p0
.end method

.method static synthetic au(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    return-object p0
.end method

.method static synthetic aw(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->q:I

    return p0
.end method

.method static synthetic ax(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic ay(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic az(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->Z:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->ad:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->n()V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 2119
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 2120
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/panorama/f;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->U:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private c(Lcom/arcsoft/camera/burstpmk/ProcessResult;)Z
    .locals 4

    .line 2050
    iget v0, p0, Lcom/oplus/camera/panorama/f;->R:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_0

    .line 2051
    iget v0, p0, Lcom/oplus/camera/panorama/f;->Z:I

    iget-object v3, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->updateSmallImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/oplus/camera/panorama/f;->Y:I

    if-ge v0, v3, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 2052
    iget v3, p0, Lcom/oplus/camera/panorama/f;->R:I

    if-ne v0, v3, :cond_1

    .line 2053
    iget-object v0, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->updateSmallImageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/oplus/camera/panorama/f;->Y:I

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 2056
    iget-object p1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->outputOffset:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/oplus/camera/panorama/f;->ab:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/oplus/camera/panorama/f;->V:I

    if-ge p1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method static synthetic c(Lcom/oplus/camera/panorama/f;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->X:I

    return p1
.end method

.method private d(I)V
    .locals 7

    .line 1471
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz v0, :cond_0

    .line 1472
    iget v1, p0, Lcom/oplus/camera/panorama/f;->j:I

    iget v2, p0, Lcom/oplus/camera/panorama/f;->k:I

    iget v3, p0, Lcom/oplus/camera/panorama/f;->l:I

    iget v4, p0, Lcom/oplus/camera/panorama/f;->m:I

    iget v5, p0, Lcom/oplus/camera/panorama/f;->n:I

    iget v6, p0, Lcom/oplus/camera/panorama/f;->o:I

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(IIIIII)V

    .line 1475
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 1476
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1477
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/f;->b(I)V

    goto :goto_0

    .line 1479
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 1480
    iput p1, p0, Lcom/oplus/camera/panorama/f;->M:I

    .line 1482
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz p0, :cond_2

    .line 1483
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->v:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/panorama/f;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->L:Z

    return p1
.end method

.method private e(I)I
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, p0, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->W:I

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->Y:I

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/panorama/f;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f(I)V
    .locals 3

    .line 1965
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1966
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const-string v2, "panorama"

    .line 1967
    iput-object v2, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1968
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    const/16 v1, 0x13

    .line 1969
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 1970
    iget v1, p0, Lcom/oplus/camera/panorama/f;->M:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 1971
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 1972
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "rear"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1973
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/panorama/f;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/oplus/camera/panorama/f;->R:I

    return p1
.end method

.method static synthetic g(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->al:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 90
    sget-object v0, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/oplus/camera/panorama/f;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/f;->d(I)V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 447
    sget-object v0, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/g;->c()V

    const/4 v1, 0x0

    .line 450
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    .line 452
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic i(Lcom/oplus/camera/panorama/f;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/f;->f(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    new-instance v1, Lcom/oplus/camera/panorama/f$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$11;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->J:Z

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 696
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->s:I

    .line 698
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    div-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oplus/camera/panorama/f;->j:I

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f07093f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->k:I

    .line 700
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f070940

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->l:I

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f070941

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->m:I

    .line 702
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f07093e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->n:I

    .line 703
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f07093d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->o:I

    .line 704
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v1, 0x7f070946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->r:I

    .line 706
    iget v0, p0, Lcom/oplus/camera/panorama/f;->k:I

    iget v1, p0, Lcom/oplus/camera/panorama/f;->n:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/panorama/f;->T:I

    .line 707
    iget v1, p0, Lcom/oplus/camera/panorama/f;->m:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/camera/panorama/f;->s:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v2, 0x7f070945

    .line 708
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/panorama/f;->q:I

    .line 709
    invoke-static {}, Lcom/oplus/camera/util/Util;->o()F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->V:I

    .line 711
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v2, 0x7f0c012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    .line 714
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v3, 0x7f0c0040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setChangeHintColor(Z)V

    .line 716
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setChangeHintTextShadow(Z)V

    .line 717
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    new-instance v1, Lcom/oplus/camera/panorama/f$12;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$12;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setCameraScreenHintInterface(Lcom/oplus/camera/ui/camerascreenhint/b;)V

    .line 746
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const v1, 0x7f0902d3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    .line 748
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->g:Lcom/oplus/camera/panorama/FrontPanoramaGuideView$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setOnDirectionChangeListener(Lcom/oplus/camera/panorama/FrontPanoramaGuideView$a;)V

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    .line 750
    new-instance v0, Lcom/oplus/camera/panorama/PanoramaProgressBar;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->h:Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setRearPanoramaInterface(Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;)V

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setForceDarkAllowed(Z)V

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1000fb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 755
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->r()V

    goto :goto_1

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setRectMarginLeft(I)V

    .line 761
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 762
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 765
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 768
    :cond_3
    iget v0, p0, Lcom/oplus/camera/panorama/f;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/panorama/f;->d(I)V

    .line 769
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c()V

    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ad:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private l()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 807
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->d()V

    .line 809
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 810
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-eqz v0, :cond_1

    .line 814
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 818
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->b()V

    .line 823
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 827
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 832
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    .line 835
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->o()V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->ab:I

    return p0
.end method

.method private m()V
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "releaseRearPanorama"

    .line 839
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sget-object v0, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 842
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    .line 844
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/g;->a()V

    .line 846
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/g;->b()V

    const/4 v1, 0x0

    .line 847
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    .line 849
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic n(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->U:I

    return p0
.end method

.method private n()V
    .locals 11

    .line 1670
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1671
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getImageFormat()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/oplus/camera/panorama/f;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1677
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->Q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez v0, :cond_1

    .line 1678
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0xb

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v2, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 1681
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 1682
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1685
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->Q:Z

    .line 1686
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    .line 1687
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 1688
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1690
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->isPanelMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1691
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 1693
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1696
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 1697
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1698
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 1699
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    const/4 v5, 0x4

    .line 1698
    invoke-interface {v0, v5, v3, v4, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1700
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 1702
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    .line 1703
    iput v1, p0, Lcom/oplus/camera/panorama/f;->O:I

    .line 1704
    invoke-virtual {p0, v5}, Lcom/oplus/camera/panorama/f;->c(I)V

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/panorama/f;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/oplus/camera/panorama/f;->M:I

    return p0
.end method

.method private o()V
    .locals 2

    .line 1708
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 1711
    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 1713
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic p(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private p()V
    .locals 7

    const-string v0, "PanoramaCapMode"

    const-string v1, "initFrontManager enter"

    .line 1992
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget v0, p0, Lcom/oplus/camera/panorama/f;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/f;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->j()[F

    move-result-object v6

    .line 1997
    new-instance v0, Lcom/oplus/camera/panorama/d;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getMirror()Ljava/lang/String;

    move-result-object v1

    const-string v4, "on"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/panorama/d;-><init>(Landroid/app/Activity;Landroid/util/Size;ZLcom/oplus/camera/panorama/d$a;[F)V

    iput-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private q()V
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/d;->a()V

    .line 2004
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/d;->d()V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private r()V
    .locals 5

    .line 2153
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2155
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2156
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/panorama/f;->j:I

    const v1, 0x7f070587

    .line 2157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->m:I

    .line 2158
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/panorama/f;->j:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/panorama/f;->l:I

    goto :goto_0

    .line 2160
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/panorama/f;->j:I

    const v1, 0x7f070926

    .line 2161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->m:I

    const/4 v0, 0x0

    .line 2162
    iput v0, p0, Lcom/oplus/camera/panorama/f;->l:I

    .line 2165
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07093f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/panorama/f;->k:I

    .line 2166
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    iget p0, p0, Lcom/oplus/camera/panorama/f;->l:I

    invoke-virtual {v0, p0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setRectMarginLeft(I)V

    return-void
.end method

.method static synthetic s(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic u(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic v(Lcom/oplus/camera/panorama/f;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->isPanelMode()Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic x(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic y(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic z(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "sendFrontResetMessage enter"

    .line 2029
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2033
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2022
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    if-eqz p0, :cond_0

    .line 2023
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setNextDirection(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2039
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/f;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/arcsoft/camera/burstpmk/ProcessResult;)V
    .locals 13

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->J:Z

    .line 339
    iget v10, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->width:I

    .line 340
    iget v11, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->height:I

    if-lez v10, :cond_4

    if-gtz v11, :cond_0

    goto/16 :goto_1

    .line 357
    :cond_0
    iget-object v1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->imageData:[B

    array-length v1, v1

    new-array v12, v1, [B

    .line 358
    iget-object v1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->imageData:[B

    iget-object p1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->imageData:[B

    array-length v3, p1

    const/4 p1, 0x2

    new-array v4, p1, [I

    aput v10, v4, v0

    const/4 v2, 0x1

    aput v10, v4, v2

    new-array v5, p1, [I

    aput v11, v5, v0

    aput v11, v5, v2

    const/16 v8, 0x5a

    const/4 v9, 0x0

    move-object v2, v12

    move v6, v10

    move v7, v11

    invoke-static/range {v1 .. v9}, Lcom/oplus/camera/jni/FormatConverter;->rotateAndMirrorYUV([B[BI[I[IIIIZ)V

    .line 361
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 362
    invoke-virtual {p0, v12, v11, v10}, Lcom/oplus/camera/panorama/f;->a([BII)V

    goto :goto_0

    :cond_1
    const-string p1, "com.oplus.feature.DCIP3.support"

    .line 364
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    const/16 v7, 0x5f

    if-eqz p1, :cond_2

    .line 365
    invoke-static {v12, v7, v11, v10}, Lcom/oplus/camera/jni/IccProfile;->convertYuv2JpegWithColorProfile([BIII)[B

    move-result-object p1

    .line 366
    invoke-virtual {p0, p1, v11, v10}, Lcom/oplus/camera/panorama/f;->a([BII)V

    goto :goto_0

    .line 369
    :cond_2
    :try_start_0
    new-instance p1, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v12

    move v4, v11

    move v5, v10

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 370
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v7, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 374
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 375
    invoke-virtual {p0, p1, v11, v10}, Lcom/oplus/camera/panorama/f;->a([BII)V

    .line 376
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 383
    :goto_0
    sget-object p1, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v0, :cond_3

    .line 385
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/g;->a()V

    .line 387
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 343
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    sget-object p1, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 346
    :try_start_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v0, :cond_5

    .line 347
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/g;->a()V

    .line 349
    :cond_5
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a(Z)V
    .locals 7

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbStartPreviewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1571
    iput-object v2, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    .line 1573
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 1575
    iput v0, p0, Lcom/oplus/camera/panorama/f;->O:I

    .line 1577
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/f;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    .line 1578
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/f;->getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 1580
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    if-eqz v1, :cond_6

    .line 1581
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 1584
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1585
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1586
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v4, 0x7f070584

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    .line 1588
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v4, 0x7f070924

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    .line 1591
    :cond_3
    iget v3, p0, Lcom/oplus/camera/panorama/f;->r:I

    iget v4, p0, Lcom/oplus/camera/panorama/f;->s:I

    add-int/2addr v3, v4

    .line 1594
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 1595
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x6

    iget-object v5, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 1596
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1594
    invoke-static {v4, v5, v6}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1598
    iget-object v5, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v4, p0, Lcom/oplus/camera/panorama/f;->k:I

    int-to-float v4, v4

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/oplus/camera/panorama/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 1599
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/oplus/camera/panorama/f;->k:I

    invoke-direct {v5, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    .line 1600
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    .line 1601
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1602
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1603
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_4

    .line 1606
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1609
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1611
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1615
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 1619
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1620
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1621
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v2, 0x7f070583

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    .line 1622
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    const v2, 0x7f070573

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/panorama/f;->s:I

    add-int/2addr v1, v2

    :goto_1
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1623
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mPictureSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewFrameSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    .line 1626
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->F:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaCapMode"

    .line 1625
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1611
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1629
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget v1, p0, Lcom/oplus/camera/panorama/f;->p:I

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    .line 1630
    new-instance p1, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v2, 0x7f10029a

    .line 1631
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 1632
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 1633
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v1, 0x7f0805e9

    .line 1634
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v1, 0x7f0604ff

    .line 1635
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 1636
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object p1

    .line 1637
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setScreenLayoutParams(Lcom/oplus/camera/screen/b/a;)V

    .line 1638
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    .line 1639
    invoke-direct {p0, v0}, Lcom/oplus/camera/panorama/f;->b(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 1573
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_3
    return-void
.end method

.method public a(Z[BII)V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "onImageDataSave enter"

    .line 1517
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->H:Landroid/util/Size;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    move v2, p4

    move p4, p3

    move p3, v2

    .line 1528
    :cond_0
    new-instance p1, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p1}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 1529
    iput p3, p1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 1530
    iput p4, p1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    .line 1531
    iput-object p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 1532
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "jpeg"

    :goto_0
    iput-object p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1533
    iget-object p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {p2}, Lcom/oplus/camera/util/Util;->b([B)I

    move-result p2

    iput p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    const/4 p2, 0x0

    .line 1534
    iput-object p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1535
    iput-boolean p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    .line 1536
    iget-boolean p3, p0, Lcom/oplus/camera/panorama/f;->mbDisplayOnLock:Z

    iput-boolean p3, p1, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 1537
    iget-object p3, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p3}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object p3

    iput-object p3, p1, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    .line 1538
    iget-object p3, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p3, p1, p2}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/Storage$CameraPicture;Z)V

    .line 1541
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->a()V

    const/4 p1, 0x0

    .line 1542
    iput p1, p0, Lcom/oplus/camera/panorama/f;->N:I

    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearPanoramaSave, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->L:Z

    .line 463
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 464
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v0}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 465
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_4

    .line 468
    new-instance v0, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {v0}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 469
    iput-object p1, v0, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 470
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "jpeg"

    :goto_1
    iput-object v1, v0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->b([B)I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    const/4 p1, 0x0

    .line 472
    iput-object p1, v0, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 473
    iput p2, v0, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 474
    iput p3, v0, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    const/4 p1, 0x1

    .line 475
    iput-boolean p1, v0, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    .line 476
    iget-boolean p2, p0, Lcom/oplus/camera/panorama/f;->mbDisplayOnLock:Z

    iput-boolean p2, v0, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 477
    iget-object p2, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object p2

    iput-object p2, v0, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    .line 479
    iget-boolean p2, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez p2, :cond_3

    .line 480
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/Storage$CameraPicture;Z)V

    goto :goto_2

    .line 482
    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->L:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public b()V
    .locals 1

    .line 2044
    iget v0, p0, Lcom/oplus/camera/panorama/f;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/panorama/f;->O:I

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressBarVisble, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1403
    iget v2, p0, Lcom/oplus/camera/panorama/f;->q:I

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    .line 1404
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v2, 0x7f10029d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1406
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 1407
    invoke-virtual {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1408
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->clearAnimation()V

    .line 1409
    new-instance v2, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    .line 1410
    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1411
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1412
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    const v1, 0x7f0805e9

    .line 1413
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    const v1, 0x7f0604ff

    .line 1414
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1415
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    goto :goto_0

    .line 1419
    :cond_2
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    .line 1422
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 1423
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "PanoramaCapMode"

    const-string p1, "sendToUpdateGuideBitmap error, bitmap is null"

    .line 1978
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1984
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1985
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1986
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1987
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public b(Lcom/arcsoft/camera/burstpmk/ProcessResult;)V
    .locals 12

    .line 392
    iget v0, p0, Lcom/oplus/camera/panorama/f;->R:I

    iget v1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->direction:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 393
    iget v0, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->direction:I

    iput v0, p0, Lcom/oplus/camera/panorama/f;->R:I

    .line 394
    iget-object v0, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->updateSmallImageRect:Landroid/graphics/Rect;

    .line 395
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    iget-object p1, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->smallImageData:[B

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Lcom/oplus/camera/panorama/e;->a(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 399
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 400
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/oplus/camera/panorama/f;->ae:Landroid/graphics/Matrix;

    const/4 v10, 0x1

    .line 399
    invoke-static/range {v4 .. v10}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 402
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/panorama/f$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/oplus/camera/panorama/f$9;-><init>(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 421
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/f;->c(Lcom/arcsoft/camera/burstpmk/ProcessResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->updateSmallImageRect:Landroid/graphics/Rect;

    .line 423
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/arcsoft/camera/burstpmk/ProcessResult;->smallImageData:[B

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/oplus/camera/panorama/e;->a(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 427
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 428
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/oplus/camera/panorama/f;->ae:Landroid/graphics/Matrix;

    const/4 v11, 0x1

    .line 427
    invoke-static/range {v5 .. v11}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/panorama/f$10;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/oplus/camera/panorama/f$10;-><init>(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/arcsoft/camera/burstpmk/ProcessResult;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->i()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/panorama/f$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$3;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1717
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_3

    .line 1718
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1722
    invoke-direct {p0, v2}, Lcom/oplus/camera/panorama/f;->b(Z)V

    .line 1723
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 1725
    :cond_0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0x12c

    .line 1728
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1729
    new-instance v0, Lcom/oplus/camera/panorama/f$6;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/panorama/f$6;-><init>(Lcom/oplus/camera/panorama/f;I)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1750
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 1751
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1752
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p1}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    .line 1753
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1758
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1759
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1762
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1763
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1764
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    .line 1765
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->z:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public cameraIdChanged(I)V
    .locals 2

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/panorama/f;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    .line 1448
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 1449
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1450
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1453
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz p1, :cond_1

    .line 1454
    invoke-virtual {p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->g()V

    .line 1457
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->m()V

    .line 1458
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->q()V

    .line 1460
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/panorama/f$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/panorama/f$2;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 6

    .line 1772
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 1784
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-static {p0, v5, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_6

    .line 1777
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-static {p0, v4, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1802
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-nez p1, :cond_6

    .line 1803
    invoke-virtual {p0, v5}, Lcom/oplus/camera/panorama/f;->b(I)V

    goto :goto_0

    .line 1806
    :cond_3
    invoke-virtual {p0, v4}, Lcom/oplus/camera/panorama/f;->b(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1791
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-static {p0, v5, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 1793
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    const/4 p1, 0x1

    .line 1794
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/f;->b(Z)V

    .line 1795
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 1510
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 1511
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .line 2010
    iget p0, p0, Lcom/oplus/camera/panorama/f;->N:I

    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    const/16 v0, 0xb4

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    add-int/2addr p0, v0

    .line 2012
    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public f()Z
    .locals 0

    .line 2017
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    sget-object v0, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v1, :cond_0

    .line 331
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/g;->a()V

    .line 333
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getAfterStoreRunnable()Lcom/oplus/camera/ui/control/e$c;
    .locals 1

    .line 1547
    new-instance v0, Lcom/oplus/camera/panorama/f$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/panorama/f$4;-><init>(Lcom/oplus/camera/panorama/f;)V

    return-object v0
.end method

.method public getAssistViewLayoutType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "panorama"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 1168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFrontEnable()Z
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.front.panorama.support"

    .line 621
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMakerNote()Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8007

    return p0
.end method

.method protected getPhotoRatio()Ljava/lang/String;
    .locals 1

    .line 1933
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 1934
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1936
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1002d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 1218
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const/16 p0, 0x100

    .line 1219
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1220
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 2171
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2172
    sget-object p0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    return-object p0

    .line 2174
    :cond_0
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 5

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1180
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz p1, :cond_3

    const-string p1, "com.oplus.configure.stream.size.custom.support"

    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1183
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1184
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aE()Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1190
    sget-object v1, Lcom/oplus/camera/e/b;->u:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [I

    :cond_1
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    .line 1194
    :goto_1
    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 1195
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1196
    new-instance v3, Landroid/util/Size;

    aget v4, v1, p1

    aget v2, v1, v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1202
    :cond_3
    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-nez p0, :cond_6

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "com.oplus.tunning.rear.panorama.max.height"

    .line 1207
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    .line 1209
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v1

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 1212
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v1

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/util/Util;->c(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    :goto_3
    const-string p0, "com.oplus.tunning.front.panorama.max.height"

    .line 1203
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1205
    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 1246
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1247
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 1249
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;
    .locals 1

    .line 1228
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1229
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 1231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    .line 1237
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1238
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 1240
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 1285
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    .line 1287
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    .line 1288
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_0
    const-string v0, "button_shape_ring_none"

    .line 1291
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "func_reset_auto_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "func_iot_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_sstart_preview_sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_support_rotate_hint_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1331
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1318
    :pswitch_0
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 1319
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1321
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_1
    const-string p0, "com.oplus.feature.front.panorama.support"

    .line 1315
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1312
    :pswitch_2
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    :pswitch_3
    return v1

    :pswitch_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x66cba37b -> :sswitch_b
        -0x648cf4fa -> :sswitch_a
        -0x30f7a71d -> :sswitch_9
        -0xf8e6ce6 -> :sswitch_8
        -0xb0f5f67 -> :sswitch_7
        -0x861d1b -> :sswitch_6
        0x140b168f -> :sswitch_5
        0x27866a5a -> :sswitch_4
        0x3f50f6f7 -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x65ad1753 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSwitchAnimTime(I)I
    .locals 0

    .line 1942
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.tunning.panorama.front.to.rear.switchtime"

    .line 1943
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.tunning.panorama.rear.to.front.switchtime"

    .line 1944
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getZSLMode()Z
    .locals 1

    .line 1255
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 1256
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected hideViewWhileResume()V
    .locals 1

    .line 1644
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1645
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isAllowSwitch(Lcom/oplus/camera/d$a;)Z
    .locals 1

    .line 1264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAllowSwitch, mbStartPreviewed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->P:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1267
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isImmediateCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needCancelToForceStop()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_still_capture_yuv_main"

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_preview_frame"

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "type_tuning_data_yuv"

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 605
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    .line 1390
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz p1, :cond_0

    .line 1391
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterSnapping"

    .line 1134
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/panorama/f$15;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$15;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 4

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterStartPreview"

    .line 981
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget v0, p0, Lcom/oplus/camera/panorama/f;->aj:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 985
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 989
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/panorama/f;->aj:I

    .line 990
    iput-boolean v3, p0, Lcom/oplus/camera/panorama/f;->u:Z

    .line 991
    iput-boolean v3, p0, Lcom/oplus/camera/panorama/f;->P:Z

    .line 992
    iput-boolean v2, p0, Lcom/oplus/camera/panorama/f;->t:Z

    .line 994
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/panorama/f$13;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/panorama/f$13;-><init>(Lcom/oplus/camera/panorama/f;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1043
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/d;->e()V

    .line 947
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    .line 1439
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 4

    const-string v0, "PanoramaCapMode"

    const-string v1, "onBeforePreview"

    .line 967
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 969
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    .line 971
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-nez v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 973
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 976
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbEnableTuningData:Z

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 4

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforeSnapping, mOrientation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/panorama/f;->M:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1060
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->ag:Z

    .line 1062
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEngine enter, mbPaused: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbStartPreviewed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/panorama/f;->u:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1067
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/panorama/f;->N:I

    .line 1068
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/panorama/d;->a(Z)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/panorama/f$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$14;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1119
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->n()V

    .line 1123
    :cond_2
    iput-boolean v2, p0, Lcom/oplus/camera/panorama/f;->w:Z

    .line 1125
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1, v2}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 1126
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1127
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return p1
.end method

.method protected onCancelTakePicture()V
    .locals 4

    .line 890
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c()V

    .line 894
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->postInvalidate()V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 899
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 903
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->i()V

    .line 906
    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/panorama/f;->t:Z

    return-void
.end method

.method public onDeInitCameraMode(Ljava/lang/String;)V
    .locals 5

    const-string p1, "PanoramaCapMode"

    const-string v0, "onDeInitCameraMode()"

    .line 774
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 776
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->v:Z

    .line 777
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    .line 778
    iput-boolean p1, p0, Lcom/oplus/camera/panorama/f;->P:Z

    .line 779
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    .line 781
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->m()V

    .line 786
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->q()V

    .line 788
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1, p1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 791
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 792
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x4

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 793
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 792
    invoke-interface {p1, v0, v3, v4, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(I)V

    .line 798
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 801
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 938
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->l()V

    return-void
.end method

.method public onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    if-eqz p1, :cond_2

    .line 1903
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_2

    .line 1904
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 1906
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->w:Z

    if-eqz v1, :cond_0

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    goto :goto_0

    .line 1909
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    .line 1912
    :goto_0
    iget-object v1, p2, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a([B)Landroid/media/ExifInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/Storage;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1915
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    .line 1916
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    .line 1919
    :cond_1
    iget v1, p0, Lcom/oplus/camera/panorama/f;->ah:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mCCT:Ljava/lang/String;

    .line 1920
    iget v1, p0, Lcom/oplus/camera/panorama/f;->ai:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLux:Ljava/lang/String;

    .line 1923
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 1

    if-eqz p1, :cond_0

    .line 1820
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_0

    .line 1821
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 1822
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getCameraShutterType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    .line 1824
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz v0, :cond_1

    .line 1825
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/panorama/f;->e(I)I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPanoramaDirection:I

    .line 1826
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ae()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    .line 1827
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected onInitCameraMode()V
    .locals 4

    const-string v0, "PanoramaCapMode"

    const-string v1, "onInitCameraMode()"

    .line 631
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 633
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->v:Z

    const/4 v2, 0x0

    .line 634
    iput-boolean v2, p0, Lcom/oplus/camera/panorama/f;->u:Z

    .line 635
    iput-boolean v2, p0, Lcom/oplus/camera/panorama/f;->P:Z

    .line 636
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/camera/panorama/f;->B:Landroid/content/res/Resources;

    .line 638
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->k()V

    .line 639
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/panorama/f;->M:I

    .line 640
    iget-boolean v3, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/oplus/camera/panorama/f;->M:I

    :cond_0
    iput v2, p0, Lcom/oplus/camera/panorama/f;->M:I

    .line 641
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Z)V

    .line 642
    invoke-direct {p0, v1}, Lcom/oplus/camera/panorama/f;->b(Z)V

    .line 643
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(I)V

    .line 645
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1000fd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->j()V

    const-string p0, "onInitCameraMode X"

    .line 648
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 4

    .line 2100
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    .line 2102
    iget v0, p0, Lcom/oplus/camera/panorama/f;->mCameraId:I

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 2103
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2104
    new-instance p1, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    const v3, 0x7f10029a

    .line 2105
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 2106
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 2107
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v0, 0x7f0805e9

    .line 2108
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v0, 0x7f0604ff

    .line 2109
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 2110
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object p1

    .line 2111
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    .line 2112
    invoke-direct {p0, v1}, Lcom/oplus/camera/panorama/f;->b(Z)V

    goto :goto_0

    .line 2114
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/f;->b(I)V

    :goto_0
    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 2094
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2095
    invoke-virtual {p0, v1}, Lcom/oplus/camera/panorama/f;->b(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onPause"

    .line 911
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->t:Z

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->onCancelTakePicture()V

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->m()V

    const/4 v0, 0x4

    .line 918
    invoke-virtual {p0, v0}, Lcom/oplus/camera/panorama/f;->c(I)V

    .line 919
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 922
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->E:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    .line 926
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->u:Z

    .line 927
    iput-boolean v1, p0, Lcom/oplus/camera/panorama/f;->K:Z

    .line 929
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v0}, Lcom/oplus/camera/panorama/d;->a()V

    .line 931
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/d;->b(Z)V

    .line 932
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/d;->d()V

    :cond_2
    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 3

    .line 1859
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz p1, :cond_4

    .line 1861
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1867
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->ag:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1868
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->ag:Z

    .line 1869
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 1873
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1874
    sget-object v1, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1875
    sget-object v2, Lcom/oplus/camera/e/b;->U:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 1877
    :cond_1
    sget-object v1, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1878
    sget-object v2, Lcom/oplus/camera/e/b;->W:Landroid/hardware/camera2/CaptureResult$Key;

    :goto_0
    if-eqz v1, :cond_2

    .line 1883
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v0

    iput v1, p0, Lcom/oplus/camera/panorama/f;->ah:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1885
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1891
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget p1, p1, v0

    iput p1, p0, Lcom/oplus/camera/panorama/f;->ai:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1893
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    .line 1862
    :cond_4
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaCapMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreviewFrameReceived(Landroid/media/Image;)Z
    .locals 6

    .line 531
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewFrameReceived(Landroid/media/Image;)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 533
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->v:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->u:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 537
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 544
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    .line 545
    invoke-static {p1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/media/Image;I)[B

    move-result-object p1

    .line 546
    invoke-direct {p0, p1}, Lcom/oplus/camera/panorama/f;->a([B)V

    .line 548
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz p0, :cond_6

    .line 549
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/d;->b([B)V

    goto/16 :goto_0

    .line 551
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->J:Z

    if-eqz v1, :cond_5

    const-string v1, "com.oplus.feature.panorama.rear.process.image"

    .line 552
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 553
    sget-object v1, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v2, :cond_2

    .line 555
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/g;->a(Landroid/media/Image;)V

    .line 557
    monitor-exit v1

    return v3

    .line 559
    :cond_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 v1, 0x2

    .line 561
    new-array v4, v1, [Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 563
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 565
    sget-object v1, Lcom/oplus/camera/panorama/f;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_1
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    if-eqz v3, :cond_4

    .line 567
    iget-object v3, p0, Lcom/oplus/camera/panorama/f;->ac:Lcom/oplus/camera/panorama/g;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/panorama/g;->a([Ljava/nio/ByteBuffer;)V

    .line 569
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 571
    invoke-static {}, Lcom/oplus/camera/util/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 572
    invoke-static {p1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/media/Image;I)[B

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->G:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->G:Landroid/util/Size;

    .line 574
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dump_rear"

    .line 572
    invoke-static {p1, v1, p0}, Lcom/oplus/camera/util/Util;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 569
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->S:[B

    invoke-static {p1, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/media/Image;I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/f;->S:[B

    .line 579
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->S:[B

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_0
    return v0

    .line 538
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewFrameReceived, mbPaused: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbPaused:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbCapInit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->v:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbStartPreviewed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->u:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaCapMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected onResume(Z)V
    .locals 7

    const-string p1, "PanoramaCapMode"

    const-string v0, "onResume"

    .line 854
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz p1, :cond_1

    .line 857
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->r()V

    .line 859
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    iget v1, p0, Lcom/oplus/camera/panorama/f;->j:I

    iget v2, p0, Lcom/oplus/camera/panorama/f;->k:I

    iget v3, p0, Lcom/oplus/camera/panorama/f;->l:I

    iget v4, p0, Lcom/oplus/camera/panorama/f;->m:I

    iget v5, p0, Lcom/oplus/camera/panorama/f;->n:I

    iget v6, p0, Lcom/oplus/camera/panorama/f;->o:I

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(IIIIII)V

    .line 862
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->c()V

    .line 863
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->postInvalidate()V

    .line 866
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 867
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 868
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->D:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 871
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    .line 872
    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/f;->b(I)V

    .line 875
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 876
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 877
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    .line 878
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->getFrontEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    :goto_0
    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 880
    iget-object p1, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 881
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    return-void
.end method

.method public onSessionConfigured()V
    .locals 4

    .line 1048
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSessionConfigured()V

    .line 1050
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 1051
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1052
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 1053
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1052
    invoke-interface {p0, v2, v0, v1, v3}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 952
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->am:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 6

    const/4 v0, 0x1

    .line 1341
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->w:Z

    .line 1342
    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ah()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/panorama/f;->af:Ljava/lang/String;

    .line 1344
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    const-string v2, ", mbSnapShoting: "

    const-string v3, "PanoramaCapMode"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTakePicture, mFrontJpegCount: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/panorama/f;->O:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/panorama/f;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget v1, p0, Lcom/oplus/camera/panorama/f;->O:I

    if-nez v1, :cond_0

    return v4

    .line 1351
    :cond_0
    iget-boolean v2, p0, Lcom/oplus/camera/panorama/f;->t:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 1352
    iput-boolean v4, p0, Lcom/oplus/camera/panorama/f;->t:Z

    .line 1353
    iput-boolean v0, p0, Lcom/oplus/camera/panorama/f;->Q:Z

    .line 1354
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0xb

    const-string v3, "button_color_inside_none"

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 1357
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 1359
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/panorama/f$16;

    invoke-direct {v3, p0, v1}, Lcom/oplus/camera/panorama/f$16;-><init>(Lcom/oplus/camera/panorama/f;Lcom/oplus/camera/ui/control/b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1366
    iget-object p0, p0, Lcom/oplus/camera/panorama/f;->ak:Lcom/oplus/camera/panorama/d;

    if-eqz p0, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/oplus/camera/panorama/d;->c()V

    :cond_1
    return v0

    .line 1373
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTakePicture, mbPanning: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/camera/panorama/f;->J:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/panorama/f;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbRearCapturePicSaveDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/panorama/f;->L:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0}, Lcom/oplus/camera/panorama/f;->i()V

    .line 1378
    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f;->t:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/panorama/f;->I:Lcom/oplus/camera/panorama/PanoramaProgressBar;

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean p0, p0, Lcom/oplus/camera/panorama/f;->L:Z

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method public onUpdateCameraSettingMenu()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Ljava/lang/String;)V

    .line 1492
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onUpdateCameraSettingMenu()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation(), orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 1432
    iput p1, p0, Lcom/oplus/camera/panorama/f;->M:I

    :cond_0
    return-void
.end method

.method public showLowMemory()V
    .locals 8

    .line 1651
    iget-boolean v0, p0, Lcom/oplus/camera/panorama/f;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/oplus/camera/panorama/f;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/panorama/f$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/panorama/f$5;-><init>(Lcom/oplus/camera/panorama/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1664
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/panorama/f;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100474

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :goto_0
    return-void
.end method
