.class public final enum Lcom/oplus/camera/ui/inverse/e;
.super Ljava/lang/Enum;
.source "InverseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/inverse/e$c;,
        Lcom/oplus/camera/ui/inverse/e$a;,
        Lcom/oplus/camera/ui/inverse/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/camera/ui/inverse/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/camera/ui/inverse/e;

.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final AUTO_INVERSE_DELAY:I = 0x1f4

.field private static final BRIGHTNESS_MAX:F = 100.0f

.field public static final enum INS:Lcom/oplus/camera/ui/inverse/e;

.field private static final MSG_INVERSE_DELAY:I = 0x1

.field private static final MSG_POST_INVERSE:I = 0x2

.field private static final SEND_MSG_CD:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBrightness:F

.field private mCurrentHighBrightnessValue:F

.field private mDelayInverseTs:J

.field private mHandler:Lcom/oplus/camera/ui/inverse/e$b;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseColor:I

.field private mInverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

.field private final mLock:Ljava/lang/Object;

.field private mThreshold:I

.field private mThresholdRecover:I

.field private mVideoBrightness:F

.field private volatile mbAnimationRunning:Z

.field private mbDelayInverseColor:Ljava/lang/Boolean;

.field private mbExecuteDelayMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/oplus/camera/ui/inverse/e;

    const/4 v1, 0x0

    const-string v2, "INS"

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/inverse/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Lcom/oplus/camera/ui/inverse/e;

    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oplus/camera/ui/inverse/e;->$VALUES:[Lcom/oplus/camera/ui/inverse/e;

    .line 29
    const-class v0, Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance p1, Lcom/oplus/camera/ui/inverse/f;

    invoke-direct {p1}, Lcom/oplus/camera/ui/inverse/f;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    .line 39
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    .line 43
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mLock:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbDelayInverseColor:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/oplus/camera/ui/inverse/e;->mDelayInverseTs:J

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/inverse/e;->mBrightness:F

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/inverse/e;->mVideoBrightness:F

    .line 49
    iput p1, p0, Lcom/oplus/camera/ui/inverse/e;->mCurrentHighBrightnessValue:F

    .line 50
    iput p2, p0, Lcom/oplus/camera/ui/inverse/e;->mThreshold:I

    .line 51
    iput p2, p0, Lcom/oplus/camera/ui/inverse/e;->mThresholdRecover:I

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbExecuteDelayMsg:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/ui/inverse/e;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oplus/camera/ui/inverse/e;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oplus/camera/ui/inverse/e;)Lcom/oplus/camera/ui/inverse/f;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oplus/camera/ui/inverse/e;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oplus/camera/ui/inverse/e;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oplus/camera/ui/inverse/e;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e;->mbExecuteDelayMsg:Z

    return p0
.end method

.method private getColorWithAlpha(IF)I
    .locals 1

    .line 327
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private inverse(IFZ)I
    .locals 4

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/high16 v1, 0x434c0000    # 204.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    mul-float/2addr v1, p2

    .line 334
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p2

    .line 336
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    :goto_0
    int-to-float p3, p3

    sub-float v0, v2, p2

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    .line 339
    :goto_1
    iget v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 340
    iget v1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 341
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    float-to-int p1, p3

    float-to-int p2, v0

    float-to-int p3, v1

    float-to-int p0, p0

    .line 343
    invoke-static {p1, p2, p3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$setMaskAlpha$3(FLcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 440
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setMaskAlpha(F)V

    return-void
.end method

.method static synthetic lambda$setMaskAlpha$4(ZZLcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 444
    invoke-virtual {p2, p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(ZZ)V

    return-void
.end method

.method static synthetic lambda$setMaskLayoutMode$10(IZILcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 508
    invoke-virtual {p3, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(IZI)V

    return-void
.end method

.method static synthetic lambda$setMaskRadius$5(ILcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 448
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setRadius(I)V

    return-void
.end method

.method static synthetic lambda$setMaskSplitScreenYOffset$6(FLcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 452
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setSplitScreenYOffset(F)V

    return-void
.end method

.method static synthetic lambda$setMaskToLayoutMode$11(Lcom/oplus/camera/ui/inverse/b;Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 512
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setMaskToLayoutMode(Lcom/oplus/camera/ui/inverse/b;)V

    return-void
.end method

.method static synthetic lambda$setPositionRatio$8(FZLcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 464
    invoke-virtual {p2, p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(FZ)V

    return-void
.end method

.method static synthetic lambda$withMask$9(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 473
    iget-object v0, p3, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->mask:Lcom/oplus/camera/ui/inverse/c$a;

    if-ne v0, v1, :cond_0

    iget p3, p3, Lcom/oplus/camera/ui/inverse/c;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-ne p3, p0, :cond_0

    .line 474
    check-cast p2, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/inverse/e$c;->call(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/camera/ui/inverse/e;
    .locals 1

    .line 26
    const-class v0, Lcom/oplus/camera/ui/inverse/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/inverse/e;

    return-object p0
.end method

.method public static values()[Lcom/oplus/camera/ui/inverse/e;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->$VALUES:[Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0}, [Lcom/oplus/camera/ui/inverse/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/camera/ui/inverse/e;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public getBackgroundColor(Landroid/view/View;I)I
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/f;->b(Ljava/lang/Object;)Lcom/oplus/camera/ui/inverse/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 377
    iput p2, v0, Lcom/oplus/camera/ui/inverse/c;->b:I

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    if-nez v1, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 381
    iget p1, v0, Lcom/oplus/camera/ui/inverse/c;->d:F

    iget-boolean v0, v0, Lcom/oplus/camera/ui/inverse/c;->c:Z

    invoke-direct {p0, p2, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->inverse(IFZ)I

    move-result p2

    :cond_3
    return p2
.end method

.method public getBrightness()F
    .locals 0

    .line 81
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mBrightness:F

    return p0
.end method

.method public getCurrentHighBrightnessValue()F
    .locals 0

    .line 89
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mCurrentHighBrightnessValue:F

    return p0
.end method

.method public getInverseColor()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    return p0
.end method

.method public getThreshold()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mThreshold:I

    return p0
.end method

.method public getThresholdRecover()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mThresholdRecover:I

    return p0
.end method

.method public getVideoBrightness()F
    .locals 0

    .line 85
    iget p0, p0, Lcom/oplus/camera/ui/inverse/e;->mVideoBrightness:F

    return p0
.end method

.method public init(Landroid/content/Context;IZIIIII)V
    .locals 3

    .line 56
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, context.hashCode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraEntryType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    if-lez p6, :cond_0

    if-nez p3, :cond_0

    .line 59
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput p8, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    int-to-float p3, p4

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    .line 61
    iput p3, p0, Lcom/oplus/camera/ui/inverse/e;->mBrightness:F

    int-to-float p3, p5

    div-float/2addr p3, p4

    .line 62
    iput p3, p0, Lcom/oplus/camera/ui/inverse/e;->mVideoBrightness:F

    .line 63
    iput p6, p0, Lcom/oplus/camera/ui/inverse/e;->mThreshold:I

    .line 64
    iput p7, p0, Lcom/oplus/camera/ui/inverse/e;->mThresholdRecover:I

    const p3, 0x7f0100a1

    .line 65
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 68
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    if-nez p3, :cond_1

    .line 69
    new-instance p3, Lcom/oplus/camera/ui/inverse/e$b;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/inverse/e$b;-><init>(Lcom/oplus/camera/ui/inverse/e;)V

    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    .line 72
    :cond_1
    sget-object p3, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "init, X"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mInverseViewMap.size(): "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/f;->a()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p3, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInverseAble(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInverseColor(I)Z
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setInverseColor$0$e(IFZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 197
    iget v0, p5, Lcom/oplus/camera/ui/inverse/c;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 198
    sget-object p1, Lcom/oplus/camera/ui/inverse/e$2;->a:[I

    iget-object v0, p5, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/c$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 p5, 0x3

    const/4 v0, 0x1

    if-eq p1, p5, :cond_3

    const/4 p5, 0x4

    if-eq p1, p5, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    check-cast p4, Lcom/oplus/camera/ui/preview/g;

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/e;->getColorWithAlpha(IF)I

    move-result p0

    .line 213
    invoke-virtual {p4, v0, p0}, Lcom/oplus/camera/ui/preview/g;->a(ZI)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 206
    move-object p0, p4

    check-cast p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setInverseColor(Z)V

    .line 209
    :cond_4
    check-cast p4, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p4, p2}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setAlpha(F)V

    goto :goto_1

    .line 200
    :cond_5
    iput p2, p5, Lcom/oplus/camera/ui/inverse/c;->d:F

    .line 201
    check-cast p4, Landroid/view/View;

    iget p0, p5, Lcom/oplus/camera/ui/inverse/c;->b:I

    invoke-virtual {p4, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_1
    return v1
.end method

.method public synthetic lambda$setInverseColor$1$e(IZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 187
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInverseColor, animation, mbAnimationRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    if-nez v1, :cond_0

    .line 193
    monitor-exit v0

    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    new-instance v2, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;-><init>(Lcom/oplus/camera/ui/inverse/e;IFZ)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    .line 225
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInverseColor, animation X, mbAnimationRunning: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$setInverseColor$2$e(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    .line 290
    iget v0, p4, Lcom/oplus/camera/ui/inverse/c;->a:I

    if-ne p1, v0, :cond_4

    .line 291
    sget-object p1, Lcom/oplus/camera/ui/inverse/e$2;->a:[I

    iget-object v0, p4, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/c$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    check-cast p3, Lcom/oplus/camera/ui/preview/g;

    iget p1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/inverse/e;->getColorWithAlpha(IF)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Lcom/oplus/camera/ui/preview/g;->a(ZI)V

    goto :goto_0

    .line 302
    :cond_1
    check-cast p3, Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-virtual {p3, p2}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setInverseColor(Z)V

    .line 303
    invoke-virtual {p3, v1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setAlpha(F)V

    goto :goto_0

    .line 297
    :cond_2
    iput v1, p4, Lcom/oplus/camera/ui/inverse/c;->d:F

    .line 298
    check-cast p3, Landroid/view/View;

    iget p0, p4, Lcom/oplus/camera/ui/inverse/c;->b:I

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 293
    :cond_3
    check-cast p3, Lcom/oplus/camera/ui/inverse/a;

    invoke-interface {p3, p2}, Lcom/oplus/camera/ui/inverse/a;->setInverseColor(Z)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$startMaskScaleAnimation$7$e(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 458
    invoke-virtual {p2}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a()V

    :cond_0
    return-void
.end method

.method public postInverseColor(IZZ)V
    .locals 3

    .line 502
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/inverse/e$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 503
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 504
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerBackgroundInverse(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/inverse/f;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 355
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 356
    new-instance v1, Lcom/oplus/camera/ui/inverse/c;

    sget-object v2, Lcom/oplus/camera/ui/inverse/c$a;->background:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/inverse/c;-><init>(Lcom/oplus/camera/ui/inverse/c$a;)V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 358
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, v1, Lcom/oplus/camera/ui/inverse/c;->b:I

    .line 359
    iput-boolean p3, v1, Lcom/oplus/camera/ui/inverse/c;->c:Z

    .line 360
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {p3, p2, v1}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)V

    .line 361
    iget p3, v1, Lcom/oplus/camera/ui/inverse/c;->b:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 363
    :cond_1
    new-instance p3, Lcom/oplus/camera/ui/inverse/c;

    sget-object v0, Lcom/oplus/camera/ui/inverse/c$a;->background:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-direct {p3, v0}, Lcom/oplus/camera/ui/inverse/c;-><init>(Lcom/oplus/camera/ui/inverse/c$a;)V

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p3, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)V

    .line 368
    :goto_0
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerBackgroundInverse, context.hashCode(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mInverseViewMap: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/f;->a()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/inverse/f;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/oplus/camera/ui/inverse/c;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->common:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/inverse/c;-><init>(Lcom/oplus/camera/ui/inverse/c$a;)V

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 395
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v1, p2, v0}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)V

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/inverse/a;->setInverseColor(Z)V

    .line 398
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInverse, context.hashCode(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mInverseViewMap: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    .line 399
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/f;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 398
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 3

    .line 105
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, context.hashCode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/f;->a(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbDelayInverseColor:Ljava/lang/Boolean;

    .line 111
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    const-string p1, "release X"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeMessages()V
    .locals 1

    .line 496
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 497
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/e$b;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public setCameraPreviewUI(Landroid/content/Context;Lcom/oplus/camera/ui/preview/g;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/inverse/f;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Lcom/oplus/camera/ui/inverse/c;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->preview:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/inverse/c;-><init>(Lcom/oplus/camera/ui/inverse/c$a;)V

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 434
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v1, p2, v0}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/inverse/e;->getColorWithAlpha(IF)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/camera/ui/preview/g;->a(ZI)V

    :cond_1
    return-void
.end method

.method public setCurrentHighBrightnessValue(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/oplus/camera/ui/inverse/e;->mCurrentHighBrightnessValue:F

    return-void
.end method

.method public setExecuteDelayMsg(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbExecuteDelayMsg:Z

    return-void
.end method

.method public setInverseColor(IZZ)V
    .locals 5

    .line 148
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor, contextHash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inverseColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInverseColor, return, contextHash: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e$b;->removeMessages(I)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mbDelayInverseColor:Ljava/lang/Boolean;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/ui/inverse/e;->mDelayInverseTs:J

    .line 161
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 162
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInverseColor, color return, contextHash: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_1
    iget-boolean v2, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    if-eqz v2, :cond_2

    .line 168
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInverseColor, animation running, contextHash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 176
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    if-eqz p2, :cond_3

    .line 179
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 181
    :cond_3
    new-array p3, p3, [F

    fill-array-data p3, :array_1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    .line 184
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 186
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ZEKwizAYlwSTrBKb8Y1P6mBDVw8;-><init>(Lcom/oplus/camera/ui/inverse/e;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/inverse/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/e$1;-><init>(Lcom/oplus/camera/ui/inverse/e;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    iput-boolean v1, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    .line 284
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 286
    :cond_4
    iget-object p3, p0, Lcom/oplus/camera/ui/inverse/e;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 287
    :try_start_0
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor, no animation, mbAnimationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    new-instance v1, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;-><init>(Lcom/oplus/camera/ui/inverse/e;IZ)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    .line 319
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInverseColor, no animation X, mbAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/e;->mbAnimationRunning:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_1
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInverseColor X, contextHash: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 320
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setInverseColor(Landroid/content/Context;ZZ)V
    .locals 0

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/e;->setInverseColor(IZZ)V

    return-void
.end method

.method public setInverseDelay(Landroid/content/Context;ZZLcom/oplus/camera/ui/inverse/e$a;)Z
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/ui/inverse/e;->mDelayInverseTs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_2

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/e$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mbDelayInverseColor:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-eq v0, p2, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    .line 128
    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/inverse/e$b;->removeMessages(I)V

    .line 129
    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v4, v2

    const/4 p3, 0x2

    aput-object p4, v4, p3

    invoke-virtual {v3, v2, v4}, Lcom/oplus/camera/ui/inverse/e$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 131
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mHandler:Lcom/oplus/camera/ui/inverse/e$b;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p3, v1, v2}, Lcom/oplus/camera/ui/inverse/e$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mbDelayInverseColor:Ljava/lang/Boolean;

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public setInverseMaskView(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/inverse/f;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Lcom/oplus/camera/ui/inverse/c;

    sget-object v1, Lcom/oplus/camera/ui/inverse/c$a;->mask:Lcom/oplus/camera/ui/inverse/c$a;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/inverse/c;-><init>(Lcom/oplus/camera/ui/inverse/c$a;)V

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 421
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {v1, p2, v0}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)V

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setInverseColor(Z)V

    :cond_1
    return-void
.end method

.method public setMaskAlpha(Landroid/content/Context;F)V
    .locals 1

    .line 440
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$TcnbrV-POqFtkYWdWgfyQbxY6CU;

    invoke-direct {v0, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$TcnbrV-POqFtkYWdWgfyQbxY6CU;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setMaskAlpha(Landroid/content/Context;ZZ)V
    .locals 1

    .line 444
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;

    invoke-direct {v0, p2, p3}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;-><init>(ZZ)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setMaskLayoutMode(Landroid/content/Context;IZI)V
    .locals 1

    .line 508
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;

    invoke-direct {v0, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;-><init>(IZI)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setMaskRadius(Landroid/content/Context;I)V
    .locals 1

    .line 448
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UvSetmnGetkQwEj1o83jUirBQiQ;

    invoke-direct {v0, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UvSetmnGetkQwEj1o83jUirBQiQ;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setMaskSplitScreenYOffset(Landroid/content/Context;F)V
    .locals 1

    .line 452
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ItsNODwTfvVV3tObtXFbbmqIEw4;

    invoke-direct {v0, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$ItsNODwTfvVV3tObtXFbbmqIEw4;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setMaskToLayoutMode(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/b;)V
    .locals 1

    .line 512
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$doTLUz4QcIFO_Jls6o47v1Lekfk;

    invoke-direct {v0, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$doTLUz4QcIFO_Jls6o47v1Lekfk;-><init>(Lcom/oplus/camera/ui/inverse/b;)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public setPositionRatio(Landroid/content/Context;FZ)V
    .locals 1

    .line 464
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$_D9pG4Wxfn_fDLAZf7A3VrFHJlE;

    invoke-direct {v0, p2, p3}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$_D9pG4Wxfn_fDLAZf7A3VrFHJlE;-><init>(FZ)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public startMaskScaleAnimation(Landroid/content/Context;)V
    .locals 1

    .line 456
    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;-><init>(Lcom/oplus/camera/ui/inverse/e;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    return-void
.end method

.method public unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/f;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 409
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/inverse/f;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public withMask(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/e;->mInverseViewHolder:Lcom/oplus/camera/ui/inverse/f;

    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;

    invoke-direct {v0, p1, p2}, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$Vvi6xFmtwTgzz_gQIctS5is5GaQ;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/e$c;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/f;->a(Lcom/oplus/camera/ui/inverse/f$a;)V

    :cond_1
    :goto_0
    return-void
.end method
