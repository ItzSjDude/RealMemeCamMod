.class public Lcom/oplus/camera/capmode/y;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "XPanMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/y$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "y"

.field private static final h:Landroid/view/animation/PathInterpolator;

.field private static final i:Landroid/util/Size;


# instance fields
.field private final j:I

.field private final k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:Lcom/oplus/camera/capmode/y$a;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Lcom/oplus/camera/ui/SwitchCameraBar;

.field private w:Landroid/view/ViewGroup;

.field private x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

.field private final y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    const v4, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/capmode/y;->h:Landroid/view/animation/PathInterpolator;

    .line 84
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x360

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/oplus/camera/capmode/y;->i:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/y;->l:Z

    const/high16 p3, -0x80000000

    .line 90
    iput p3, p0, Lcom/oplus/camera/capmode/y;->m:I

    const/4 p3, -0x1

    .line 91
    iput p3, p0, Lcom/oplus/camera/capmode/y;->n:I

    const/4 p3, 0x0

    .line 94
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    .line 95
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    .line 96
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    .line 97
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    .line 98
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    .line 99
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 100
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    .line 101
    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    .line 104
    new-instance p3, Lcom/oplus/camera/capmode/-$$Lambda$y$pBNcj-Z7x4mKREDvjGd488n8qps;

    invoke-direct {p3, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$pBNcj-Z7x4mKREDvjGd488n8qps;-><init>(Lcom/oplus/camera/capmode/y;)V

    iput-object p3, p0, Lcom/oplus/camera/capmode/y;->y:Ljava/lang/Runnable;

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result p3

    const/4 p4, 0x1

    if-ne p4, p3, :cond_0

    move p2, p4

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d5a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/oplus/camera/capmode/y;->o:F

    .line 145
    iget p3, p0, Lcom/oplus/camera/capmode/y;->o:F

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p3, p2

    iput p3, p0, Lcom/oplus/camera/capmode/y;->o:F

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d5b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/capmode/y;->p:F

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d74

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/capmode/y;->j:I

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070d5d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/y;->k:I

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/y;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 9

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x12c

    const/16 v5, 0x8

    if-ne p1, v5, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, v3

    :goto_0
    const/4 v8, 0x0

    invoke-static {v0, p1, v8, v6, v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    if-ne p1, v5, :cond_1

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide v6, v3

    :goto_1
    invoke-static {v0, p1, v8, v6, v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_2

    move-wide v6, v1

    goto :goto_2

    :cond_2
    move-wide v6, v3

    :goto_2
    invoke-static {v0, p1, v8, v6, v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_3

    move-wide v6, v1

    goto :goto_3

    :cond_3
    move-wide v6, v3

    :goto_3
    invoke-static {v0, p1, v8, v6, v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 755
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-ne p1, v5, :cond_4

    goto :goto_4

    :cond_4
    move-wide v1, v3

    :goto_4
    invoke-static {p0, p1, v8, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 651
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrameCaptured, bitmap width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/oplus/camera/capmode/y$a;

    invoke-direct {v0}, Lcom/oplus/camera/capmode/y$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 656
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/y$a;->a(Landroid/graphics/Bitmap;)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/y$a;->a(Landroid/graphics/Bitmap;)V

    .line 661
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/y;->l:Z

    if-eqz p1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->i()V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    .line 430
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aC()V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 853
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 160
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string p1, "No need to display the selection SwitchCameraBar"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00e0

    invoke-virtual {p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090383

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/SwitchCameraBar;

    iput-object p1, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Ljava/lang/String;ZZ[I)V

    .line 169
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget p2, p0, Lcom/oplus/camera/capmode/y;->j:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 171
    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p2, v2}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Z)V

    .line 172
    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setRotation(F)V

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    new-instance p2, Lcom/oplus/camera/capmode/y$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/y$1;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setClickListener(Lcom/oplus/camera/ui/SwitchCameraBar$a;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0804c6
        0x7f0804c7
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/y;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/y;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 712
    :cond_0
    iget v2, p0, Lcom/oplus/camera/capmode/y;->n:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 713
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/y;->n:I

    .line 716
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/capmode/y;->k:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 717
    iget p2, p0, Lcom/oplus/camera/capmode/y;->n:I

    mul-int/lit8 p1, p1, 0xa

    add-int v0, p2, p1

    const/4 v2, 0x5

    if-ltz v0, :cond_2

    add-int/2addr p2, p1

    if-ge p2, v2, :cond_2

    .line 720
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    goto :goto_0

    .line 721
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result p2

    sub-int/2addr p2, v2

    iget v0, p0, Lcom/oplus/camera/capmode/y;->n:I

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_3

    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    .line 722
    invoke-virtual {p2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getValue()I

    move-result p2

    iget v0, p0, Lcom/oplus/camera/capmode/y;->n:I

    add-int/2addr v0, p1

    if-ge p2, v0, :cond_3

    .line 724
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->getMaxValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    iget p0, p0, Lcom/oplus/camera/capmode/y;->n:I

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 73
    sget-object v0, Lcom/oplus/camera/capmode/y;->h:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private synthetic b(I)V
    .locals 3

    .line 392
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExposureChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/oplus/camera/capmode/y;->m:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 395
    iput p1, p0, Lcom/oplus/camera/capmode/y;->m:I

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 401
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget v1, p0, Lcom/oplus/camera/capmode/y;->m:I

    if-eq v1, p1, :cond_1

    .line 404
    invoke-virtual {v0}, Lcom/oplus/camera/ae;->d()V

    .line 406
    :cond_1
    iput p1, p0, Lcom/oplus/camera/capmode/y;->m:I

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->g()V

    .line 417
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->j()V

    return-void
.end method

.method private static synthetic b(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 844
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->l()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/y;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v4, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    invoke-static {p0, v4, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method private static synthetic c(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 836
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    if-nez v0, :cond_0

    return-object v1

    .line 357
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_hasselblad_xpan_switch_camera_bar_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 826
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 827
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090431

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 365
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v0, "initXPanUI, Failed to inflate stub"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090430

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 373
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v0, "initXPanUI, Failed to find container"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 378
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v2, "initXPanUI, XPAN ui inflated"

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const v2, 0x7f09042c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v0

    .line 384
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v0

    if-nez v0, :cond_2

    .line 387
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v0, "initXPanUI, Invalid CameraCharacteristics"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    new-instance v3, Lcom/oplus/camera/capmode/-$$Lambda$y$sFV432XfGm3pEAO_gVncjNoLRd4;

    invoke-direct {v3, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$sFV432XfGm3pEAO_gVncjNoLRd4;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/XPanExposureWheel$b;)V

    .line 408
    iget-object v2, p0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->p()I

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->q()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(II)V

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const v2, 0x7f09042f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$y$NPbov7s7zng74yzpXMga034xqfc;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$NPbov7s7zng74yzpXMga034xqfc;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const v2, 0x7f090110

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const v2, 0x7f09042e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 428
    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$y$jqK18NlDmC_5Lb1Sb68VL-bF5gI;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$jqK18NlDmC_5Lb1Sb68VL-bF5gI;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const v2, 0x7f0901f1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    goto :goto_0

    .line 438
    :cond_6
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v2, "initXPanUI, container is already existed"

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    const-string v0, "com.oplus.xpan.wide.picturesize"

    .line 444
    invoke-static {v0, v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v0

    .line 446
    iget-object v2, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    move v1, v3

    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/capmode/y;->a(Landroid/view/ViewGroup;Z)V

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_8

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ak()V

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->B(Z)V

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(ZZ)V

    goto :goto_1

    .line 455
    :cond_8
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v1, "initXPanUI, No mCameraUIInterface"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->j()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 468
    new-instance v0, Lcom/oplus/camera/statistics/model/XPanMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->isFilterEffectOpen()Z

    move-result v2

    iget p0, p0, Lcom/oplus/camera/capmode/y;->mCameraId:I

    invoke-direct {v0, v1, v2, p0}, Lcom/oplus/camera/statistics/model/XPanMsgData;-><init>(Landroid/content/Context;ZI)V

    .line 469
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/XPanMsgData;->report()V

    return-void
.end method

.method private g()V
    .locals 5

    .line 546
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 549
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v2, "Delta400.3dl.rgb.bin"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/y;->isFilterOpen(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v1, v2, v4, v3}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 552
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 553
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->g:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v2, "default"

    invoke-interface {v1, v2, v3, v3}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 557
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 558
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 608
    iget v0, p0, Lcom/oplus/camera/capmode/y;->m:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 609
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncExposureWithEvWheel, current ev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/capmode/y;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/oplus/camera/capmode/y;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 738
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 742
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->y:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 765
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->u:Landroid/widget/ImageButton;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 778
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v0, "updateCaptureAnimationImageView, viewFinderLayout is not available"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_1
    sget-object v1, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureAnimationImageView, viewFinderLayout width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 787
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 788
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 789
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method private l()V
    .locals 16

    move-object/from16 v0, p0

    .line 793
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->w:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 797
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_hasselblad_xpan_switch_camera_bar_key"

    const-string v3, "camera_main"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f7be76d    # 0.984f

    const-string v3, "camera_ultra_wide"

    .line 800
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x3f6bfb16    # 0.9218f

    .line 802
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v2, 0x402ccccd    # 2.7f

    div-float v2, v1, v2

    .line 804
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    .line 805
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    const-wide/16 v1, 0x96

    .line 807
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 808
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 809
    iget-object v7, v0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 811
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 812
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 815
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v8, v8

    .line 816
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v10, v10

    .line 817
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v11, v11

    .line 818
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v12, v12

    const/4 v13, 0x2

    .line 821
    new-array v14, v13, [F

    aput v8, v14, v9

    const/high16 v8, 0x40c00000    # 6.0f

    sub-float/2addr v3, v8

    const/4 v15, 0x1

    aput v3, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 823
    invoke-virtual {v14, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 824
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    new-instance v8, Lcom/oplus/camera/capmode/-$$Lambda$y$dStWm83G88wqCytSrPVCyEXmqxU;

    invoke-direct {v8, v0, v7}, Lcom/oplus/camera/capmode/-$$Lambda$y$dStWm83G88wqCytSrPVCyEXmqxU;-><init>(Lcom/oplus/camera/capmode/y;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 829
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    new-array v8, v13, [F

    aput v10, v8, v9

    aput v3, v8, v15

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 834
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 835
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 836
    new-instance v8, Lcom/oplus/camera/capmode/-$$Lambda$y$PPGK-2zoX4P4w9shmtadKRd2zWE;

    invoke-direct {v8, v7}, Lcom/oplus/camera/capmode/-$$Lambda$y$PPGK-2zoX4P4w9shmtadKRd2zWE;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    new-array v3, v13, [F

    aput v11, v3, v9

    const/high16 v8, 0x40c00000    # 6.0f

    sub-float/2addr v4, v8

    aput v4, v3, v15

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 842
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 843
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 844
    new-instance v8, Lcom/oplus/camera/capmode/-$$Lambda$y$NVrce6vqb5FteICerDiiS57fdI4;

    invoke-direct {v8, v7}, Lcom/oplus/camera/capmode/-$$Lambda$y$NVrce6vqb5FteICerDiiS57fdI4;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 845
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    new-array v3, v13, [F

    aput v12, v3, v9

    aput v4, v3, v15

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 850
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 851
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 852
    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$y$7xuwn04CC0zVf09-ApgIKAcc75g;

    invoke-direct {v1, v7}, Lcom/oplus/camera/capmode/-$$Lambda$y$7xuwn04CC0zVf09-ApgIKAcc75g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 855
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 859
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 862
    :cond_2
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 863
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->v:Lcom/oplus/camera/ui/SwitchCameraBar;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v9, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 864
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->s:Landroid/widget/ImageView;

    invoke-static {v1, v9, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 865
    iget-object v1, v0, Lcom/oplus/camera/capmode/y;->x:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {v1, v9, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 866
    iget-object v0, v0, Lcom/oplus/camera/capmode/y;->t:Landroid/widget/ImageButton;

    invoke-static {v0, v9, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$7xuwn04CC0zVf09-ApgIKAcc75g(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/y;->a(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$MtkKmDs8tpx0JlYs03znV11n4ds(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->o()V

    return-void
.end method

.method public static synthetic lambda$NPbov7s7zng74yzpXMga034xqfc(Lcom/oplus/camera/capmode/y;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$NVrce6vqb5FteICerDiiS57fdI4(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/y;->b(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$PPGK-2zoX4P4w9shmtadKRd2zWE(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/y;->c(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$anCMw6uDgQakFdnTD2zxIzeSoAM(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->n()V

    return-void
.end method

.method public static synthetic lambda$dStWm83G88wqCytSrPVCyEXmqxU(Lcom/oplus/camera/capmode/y;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/y;->d(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$jqK18NlDmC_5Lb1Sb68VL-bF5gI(Lcom/oplus/camera/capmode/y;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/y;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pBNcj-Z7x4mKREDvjGd488n8qps(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->m()V

    return-void
.end method

.method public static synthetic lambda$sFV432XfGm3pEAO_gVncjNoLRd4(Lcom/oplus/camera/capmode/y;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/y;->b(I)V

    return-void
.end method

.method private synthetic m()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/oplus/camera/capmode/y$a;->a(Lcom/oplus/camera/capmode/y$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/y;->a(I)V

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    const-wide/16 v1, 0xdac

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$y$anCMw6uDgQakFdnTD2zxIzeSoAM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$anCMw6uDgQakFdnTD2zxIzeSoAM;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/y$a;->a(Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void

    .line 106
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v2, "CaptureAnimation, No valid frame bitmap to draw"

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic n()V
    .locals 3

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/y;->a(I)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/capmode/y;->o:F

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/capmode/y;->p:F

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$y$MtkKmDs8tpx0JlYs03znV11n4ds;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$MtkKmDs8tpx0JlYs03znV11n4ds;-><init>(Lcom/oplus/camera/capmode/y;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private synthetic o()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/y$a;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/y;->l:Z

    return-void
.end method


# virtual methods
.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    .line 213
    iput p1, p0, Lcom/oplus/camera/capmode/y;->n:I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "xpan"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_hasselblad_xpan_filter_index"

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->g:Lcom/oplus/camera/ui/preview/a/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getJpegOrientation(II)I
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/y;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    const/16 p1, 0x10e

    invoke-static {p0, p1}, Lcom/oplus/camera/e/a;->b(Lcom/oplus/camera/e/h;I)I

    move-result p0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80ac

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget p1, p0, Lcom/oplus/camera/capmode/y;->mCameraId:I

    const-string v0, "com.oplus.xpan.main.picturesize"

    invoke-static {v0, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 238
    :cond_0
    iget p1, p0, Lcom/oplus/camera/capmode/y;->mCameraId:I

    const-string v0, "com.oplus.xpan.wide.picturesize"

    invoke-static {v0, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    .line 242
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    rem-int/lit16 p0, p0, 0xb4

    if-nez p0, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 244
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 245
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 227
    sget-object p0, Lcom/oplus/camera/capmode/y;->i:Landroid/util/Size;

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 258
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x1a

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 262
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 263
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 266
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 280
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_setting_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "key_support_share_edit_thumb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "key_setting_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_hasselblad_xpan_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_e
    const-string v0, "key_full_screen_center_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    .line 306
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/y;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/y;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x6dd3d5b8 -> :sswitch_e
        -0x64edfd1c -> :sswitch_d
        -0x605f9db5 -> :sswitch_c
        -0x5efa20f1 -> :sswitch_b
        -0x5f8f68b -> :sswitch_a
        0x739636c -> :sswitch_9
        0x140b168f -> :sswitch_8
        0x1ec78fce -> :sswitch_7
        0x260d3011 -> :sswitch_6
        0x32063b00 -> :sswitch_5
        0x3f50f6f7 -> :sswitch_4
        0x5f579904 -> :sswitch_3
        0x65b53143 -> :sswitch_2
        0x74ed85e4 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 1

    .line 595
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    .line 596
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->k()V

    .line 599
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    .line 600
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/y$a;->a()Lcom/oplus/camera/capmode/y$a$a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->l()V

    .line 604
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/y$a;->a()Lcom/oplus/camera/capmode/y$a$a;

    move-result-object v0

    sget-object v2, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->q:Lcom/oplus/camera/capmode/y$a;

    .line 577
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/y$a;->a()Lcom/oplus/camera/capmode/y$a$a;

    move-result-object v0

    sget-object v2, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_STARTED:Lcom/oplus/camera/capmode/y$a$a;

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 585
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0

    .line 580
    :cond_3
    :goto_1
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string v0, "onBackPressed() - Invalid state, ignore back pressed"

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected onBeforePreview()V
    .locals 0

    .line 590
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->h()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 627
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->HASSELBLAD_XPAN_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->HASSELBLAD_XPAN_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :array_0
    .array-data 4
        0x40
        0x168
        0x1ec0
        0xb64
    .end array-data

    :array_1
    .array-data 4
        0x140
        0x1cf
        0x1d80
        0xaee
    .end array-data
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->c()V

    .line 566
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    .line 567
    iget-object p1, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aj()V

    .line 568
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method public onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    if-eqz p1, :cond_1

    .line 503
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_1

    .line 504
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_hasselblad_xpan_switch_camera_bar_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_ultra_wide"

    .line 509
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    .line 510
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mIsWideAngle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 512
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mIsWideAngle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 516
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-object p0
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    .line 480
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_2

    .line 481
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 486
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v0, "pref_filter_process_key"

    .line 488
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/y;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFilterType:Ljava/lang/String;

    .line 492
    :cond_1
    iget v0, p0, Lcom/oplus/camera/capmode/y;->m:I

    iput v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mTouchEVValue:I

    .line 494
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected onInitCameraMode()V
    .locals 2

    .line 538
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->e()V

    .line 540
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 693
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 694
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    const-string p1, "onScroll, Ignore multi-fingers."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 699
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_1

    .line 700
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/y;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 463
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->f()V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 679
    sget-object p0, Lcom/oplus/camera/capmode/y;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isFirst: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y;->i()V

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/y;->l:Z

    .line 688
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    return-void
.end method

.method public onStartCapturePreviewData()V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/oplus/camera/capmode/y;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v1, Lcom/oplus/camera/capmode/y$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/y$2;-><init>(Lcom/oplus/camera/capmode/y;)V

    .line 647
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y;->getNeedCheckTimeStamp()Z

    move-result p0

    sget-object v2, Lcom/oplus/camera/gl/t$b;->f:Ljava/lang/String;

    const/4 v3, 0x1

    .line 637
    invoke-interface {v0, v1, v3, p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showBeautyButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
