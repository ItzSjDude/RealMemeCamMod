.class public Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;
.super Landroid/widget/RelativeLayout;
.source "ExposureSeekbarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ExposureSeekbarContainer"


# instance fields
.field private b:Landroid/graphics/PorterDuffColorFilter;

.field private c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/airbnb/lottie/LottieAnimationView;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private o:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;

.field private p:Lcom/airbnb/lottie/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/g/c<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b:Landroid/graphics/PorterDuffColorFilter;

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 41
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->d:Landroid/widget/FrameLayout;

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->e:Landroid/widget/FrameLayout;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, 0x0

    .line 44
    iput p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->g:I

    .line 45
    iput p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->h:I

    const/high16 p4, 0x3f800000    # 1.0f

    .line 46
    iput p4, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->i:F

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    .line 48
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    .line 49
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    .line 50
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->m:Z

    .line 51
    iput p4, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->n:F

    .line 52
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->o:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;

    .line 54
    new-instance p2, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$1;-><init>(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->p:Lcom/airbnb/lottie/g/c;

    .line 77
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b:Landroid/graphics/PorterDuffColorFilter;

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070442

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->g:I

    .line 79
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070441

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->h:I

    .line 80
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    int-to-double p2, p2

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p2, v0

    double-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->i:F

    .line 81
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Landroid/content/Context;)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 82
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setProgress(F)V

    return-void
.end method

.method private synthetic a(Lcom/airbnb/lottie/g/b;)Ljava/lang/Integer;
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x64

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00c3

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090042

    .line 87
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const v0, 0x7f0f001e

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAnimation(I)V

    const p1, 0x7f090159

    .line 89
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 90
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0f001c

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const p1, 0x7f090043

    .line 92
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->d:Landroid/widget/FrameLayout;

    const p1, 0x7f09015b

    .line 93
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->e:Landroid/widget/FrameLayout;

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$3d5tp06rTYagvfUyY-Typd8UQQ4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$3d5tp06rTYagvfUyY-Typd8UQQ4;-><init>(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a(Lcom/airbnb/lottie/j;)Z

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$RZOaKOML0bENKAR5ydHoVSHipVw;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$RZOaKOML0bENKAR5ydHoVSHipVw;-><init>(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/j;)Z

    .line 107
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$j0Jv_n_h8Ky4lPoLmUlCbY2Waa0;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$j0Jv_n_h8Ky4lPoLmUlCbY2Waa0;-><init>(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, v: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", alpha: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getAlpha()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->o:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;->a()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/airbnb/lottie/d;)V
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/c/e;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/c/e;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/k;->E:Landroid/graphics/ColorFilter;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->p:Lcom/airbnb/lottie/g/c;

    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/c/e;

    const-string v1, "line"

    const-string v2, "*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/c/e;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/k;->c:Ljava/lang/Integer;

    new-instance v2, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$dpr_aN8n9Pcg1JqvUDZETHAVUEk;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ExposureSeekbarContainer$dpr_aN8n9Pcg1JqvUDZETHAVUEk;-><init>(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/e;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method private synthetic b(Lcom/airbnb/lottie/d;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/c/e;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/c/e;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/k;->E:Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->p:Lcom/airbnb/lottie/g/c;

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    return-void
.end method

.method public static synthetic lambda$3d5tp06rTYagvfUyY-Typd8UQQ4(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;Lcom/airbnb/lottie/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b(Lcom/airbnb/lottie/d;)V

    return-void
.end method

.method public static synthetic lambda$RZOaKOML0bENKAR5ydHoVSHipVw(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;Lcom/airbnb/lottie/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Lcom/airbnb/lottie/d;)V

    return-void
.end method

.method public static synthetic lambda$dpr_aN8n9Pcg1JqvUDZETHAVUEk(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;Lcom/airbnb/lottie/g/b;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Lcom/airbnb/lottie/g/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$j0Jv_n_h8Ky4lPoLmUlCbY2Waa0(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Landroid/view/View;)V

    return-void
.end method

.method private setProgress(F)V
    .locals 2

    .line 175
    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    const-string p1, "setProgress, progress unchanged."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->o:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;

    if-eqz p1, :cond_1

    .line 185
    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;->a(F)V

    .line 188
    :cond_1
    sget-object p1, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress, mProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " lottie progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 189
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(FFIII)V
    .locals 7

    .line 227
    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->g:I

    .line 228
    iget v1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->h:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v3, p1, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v2, p2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p5, :cond_7

    const/16 v6, 0x5a

    if-eq p5, v6, :cond_4

    const/16 v6, 0xb4

    if-eq p5, v6, :cond_2

    const/16 v6, 0x10e

    if-eq p5, v6, :cond_0

    move p1, v5

    goto :goto_6

    :cond_0
    int-to-float p4, p4

    sub-float/2addr p4, v0

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_1

    move p2, v4

    goto :goto_0

    :cond_1
    move p2, v5

    :goto_0
    int-to-float p3, p3

    sub-float/2addr p3, v1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_6

    goto :goto_4

    :cond_2
    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    int-to-float p3, p4

    sub-float/2addr p3, v1

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_9

    :goto_2
    move v5, v4

    goto :goto_6

    :cond_4
    cmpg-float p2, p2, v0

    if-gtz p2, :cond_5

    move p2, v4

    goto :goto_3

    :cond_5
    move p2, v5

    :goto_3
    cmpg-float p1, p1, v1

    if-gtz p1, :cond_6

    :goto_4
    move v5, v4

    :cond_6
    move p1, p2

    goto :goto_6

    :cond_7
    int-to-float p3, p3

    sub-float/2addr p3, v0

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_8

    move p1, v4

    goto :goto_5

    :cond_8
    move p1, v5

    :goto_5
    cmpg-float p2, p2, v1

    if-gtz p2, :cond_9

    goto :goto_2

    :cond_9
    :goto_6
    neg-int p2, p5

    int-to-float p2, p2

    .line 256
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setRotation(F)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setTranslationX(F)V

    .line 258
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setTranslationY(F)V

    .line 260
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 261
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p4, 0x15

    const/16 p5, 0x14

    if-eqz p1, :cond_a

    .line 264
    invoke-virtual {p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 265
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 267
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7

    .line 269
    :cond_a
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 270
    invoke-virtual {p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 271
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 272
    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_7
    const/16 p1, 0xa

    const/16 p3, 0xc

    if-eqz v5, :cond_b

    .line 276
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 277
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_8

    .line 279
    :cond_b
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 280
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    :goto_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->requestLayout()V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a(IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x4

    .line 155
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setLockedState(Z)V

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x42480000    # 50.0f

    .line 161
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    if-ne v0, p1, :cond_0

    .line 198
    sget-object p1, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandExposureSeekbar, same state, mExpandSeekbar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandExposureSeekbar, state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mToggleWrapperEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->l:Z

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->e()V

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setProgress(F)V

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->invalidate()V

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->d:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->m:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getAlpha()F
    .locals 0

    .line 300
    iget p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->n:F

    return p0
.end method

.method public getContainerHeight()F
    .locals 0

    .line 171
    iget p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->h:I

    int-to-float p0, p0

    return p0
.end method

.method public getContainerWidth()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->g:I

    int-to-float p0, p0

    return p0
.end method

.method public getDampingFactor()F
    .locals 2

    .line 121
    iget p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    if-ltz v0, :cond_1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43480000    # 200.0f

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 293
    iput p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->n:F

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAlpha(F)V

    return-void
.end method

.method public setLockedState(Z)V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    if-ne v0, p1, :cond_0

    .line 130
    sget-object p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockedState, same locked state, locked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockedState, state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->k:Z

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->p:Lcom/airbnb/lottie/g/c;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/g/c;->a(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->isShown()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setSpeed(F)V

    .line 142
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a()V

    .line 143
    sget-object p1, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    const-string v0, "setLockedState, is shown"

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->e()V

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setProgress(F)V

    .line 147
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->invalidate()V

    .line 148
    sget-object p1, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    const-string v0, "setLockedState, is not shown"

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    return-void
.end method

.method public setMoveDistance(F)V
    .locals 3

    .line 216
    sget-object v0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMoveDistance, moveDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->i:F

    div-float/2addr p1, v0

    .line 219
    iget v0, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->j:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getDampingFactor()F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/4 p1, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, p1, v1}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setProgress(F)V

    return-void
.end method

.method public setOnSeekbarChangeListener(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->o:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;

    return-void
.end method

.method public setToggleViewEnable(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->m:Z

    return-void
.end method
