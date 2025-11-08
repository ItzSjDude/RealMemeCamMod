.class public Lcom/oplus/camera/ui/CommonComponent/ScaleBar;
.super Landroid/view/View;
.source "ScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;,
        Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;,
        Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingInterpolator;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final DAMPING:F = 0.3f

.field private static final FIRST_CONTROL_POINT_X:F = 0.0f

.field private static final FIRST_CONTROL_POINT_Y:F = 0.0f

.field private static final FLING_VELOCITY_THRESHOLD:I = 0x3e8

.field private static final FUNCTION_ALPHA:Ljava/lang/String; = "alpha"

.field private static final INTERPOLATE_VALUE:F = 0.5f

.field public static final LEFT_ALIGN:I = 0x1

.field private static final LIMIT_INCREASE_SPACE:F = 1.5f

.field private static final MAX_ANIMATION_PROGRESS:F = 1.0f

.field private static final MIN_ANIMATION_PROGRESS:F = 0.0f

.field private static final MOVE_LEFT:I = -0x1

.field private static final MOVE_RIGHT:I = 0x1

.field private static final NEGATIVE_DIRECTION:I = -0x1

.field private static final POSITIVE_DIRECTION:I = 0x1

.field private static final REBOUND_DURATION:J = 0x15eL

.field private static final REBOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SECOND:I = 0x3e8

.field private static final SECOND_CONTROL_POINT_X:F = 0.58f

.field private static final SECOND_CONTROL_POINT_Y:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ScaleBar"

.field private static final TEN_SMALL_SCALE_BETWEEN_BIG_SCALE:I = 0xa

.field private static sBigScaleColor:I

.field private static sHighlightColor:I

.field private static sSmallScaleColor:I


# instance fields
.field private mAlign:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBigScaleStrokeWidth:I

.field private mCenterIndex:I

.field private mColorObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mContext:Landroid/content/Context;

.field private mCountBetweenBigScale:I

.field private mCurrentIndex:I

.field private mDownX:F

.field private mDownY:F

.field private mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mIntervalAnim:Landroid/animation/ValueAnimator;

.field private mLastMoveDirection:I

.field private mLayoutWidth:I

.field private mLevelNum:I

.field private mLimitMaxDistance:F

.field private mMaxFlingVelocity:I

.field private mMaxMarginIncrease:F

.field private mMyHandler:Landroid/os/Handler;

.field private mNeedSetShadowLayer:Z

.field private mOffset:F

.field private mOffsetCount:I

.field private mOffsetMargin:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

.field private mScaleHeight:I

.field private mScaleHeightOffSet:[I

.field private mScaleMargin:I

.field private mScalePointerX:I

.field private mScaleRatio:F

.field private mScaleTopMargin:I

.field private mScaleValueAnimator:Landroid/animation/ValueAnimator;

.field private mShadowColor:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:F

.field private mSmallScaleStrokeWidth:I

.field private mStartDistanceX:F

.field private mStartOffsetX:F

.field private mTouchable:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mbAuto:Z

.field private mbInitIndex:Z

.field private mbInitScalePointerX:Z

.field private mbLazySetIndex:Z

.field private mbValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->REBOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 74
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartOffsetX:F

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    .line 79
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleTopMargin:I

    .line 80
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    const/4 v2, 0x1

    .line 85
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    const/16 v3, 0xa

    .line 87
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    .line 90
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    .line 91
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    .line 93
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    .line 94
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownY:F

    .line 96
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 97
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    .line 98
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetCount:I

    .line 103
    iput-boolean v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    const/4 v3, 0x0

    .line 114
    iput-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 115
    iput-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 116
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    .line 120
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLastMoveDirection:I

    .line 121
    iput-boolean v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mNeedSetShadowLayer:Z

    .line 125
    iput-boolean v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mTouchable:Z

    .line 137
    iput-object p3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    .line 138
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    .line 139
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 74
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartOffsetX:F

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    .line 79
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleTopMargin:I

    .line 80
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    const/4 v1, 0x1

    .line 85
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    const/16 v2, 0xa

    .line 87
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    .line 90
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    .line 91
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    .line 93
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    .line 94
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownY:F

    .line 96
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 97
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    .line 98
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetCount:I

    .line 103
    iput-boolean v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    const/4 v2, 0x0

    .line 114
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 115
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 116
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    .line 120
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLastMoveDirection:I

    .line 121
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mNeedSetShadowLayer:Z

    .line 125
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mTouchable:Z

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    return p0
.end method

.method static synthetic access$002(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    return p1
.end method

.method static synthetic access$1000(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->startReboundAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    return p1
.end method

.method static synthetic access$200(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    return p0
.end method

.method static synthetic access$300(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    return p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->updateIndex()V

    return-void
.end method

.method static synthetic access$502(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    return p1
.end method

.method static synthetic access$600(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;F)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 7

    .line 407
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mNeedSetShadowLayer:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v6, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    :cond_0
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 9

    .line 180
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 181
    iput-boolean v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    .line 186
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTouchable(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706a5

    sget v4, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowRadius:F

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowColor:I

    .line 190
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709ae

    .line 191
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    const v5, 0x7f0709b9

    .line 192
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    const v5, 0x7f0709ba

    .line 193
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleTopMargin:I

    const v5, 0x7f0709b6

    .line 194
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    .line 195
    iget v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    iget v6, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetCount:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    iput v6, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    int-to-float v5, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    .line 196
    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    const v5, 0x7f0709b0

    .line 197
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    const/4 v5, 0x6

    .line 198
    new-array v5, v5, [I

    aput v1, v5, v1

    const v6, 0x7f0709b1

    .line 200
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v5, v0

    const v6, 0x7f0709b2

    .line 201
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    const/4 v6, 0x3

    const v8, 0x7f0709b3

    .line 202
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v6

    const/4 v6, 0x4

    const v8, 0x7f0709b4

    .line 203
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v6

    const/4 v6, 0x5

    const v8, 0x7f0709b5

    .line 204
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v6

    iput-object v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeightOffSet:[I

    .line 206
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    .line 207
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0604f4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sput v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    .line 208
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    const v4, 0x7f060032

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sput v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sSmallScaleColor:I

    .line 209
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sHighlightColor:I

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 212
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    .line 213
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowRadius:F

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 214
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    .line 225
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sHighlightColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxFlingVelocity:I

    .line 232
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    div-int/2addr v2, v7

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    div-int/2addr v2, v7

    :goto_0
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    .line 234
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    if-gez v2, :cond_2

    .line 235
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    .line 238
    :cond_2
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 239
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$3;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$3;-><init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/animation/IntEvaluator;

    invoke-direct {v6}, Landroid/animation/IntEvaluator;-><init>()V

    new-array v7, v7, [Ljava/lang/Object;

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v0, "alpha"

    .line 249
    invoke-static {v2, v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$4;-><init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mNeedSetShadowLayer:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowRadius:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 263
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mShadowRadius:F

    invoke-virtual {v1, p0, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initAnimator()V
    .locals 3

    .line 144
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->REBOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$1;-><init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$2;-><init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private onMove(F)V
    .locals 10

    .line 555
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-nez v0, :cond_0

    const-string p0, "ScaleBar"

    const-string p1, "onMove return, is not valid"

    .line 556
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    cmpg-float v1, v0, p1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 567
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLastMoveDirection:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_6

    if-ne v1, v2, :cond_4

    add-float v1, v3, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    add-float v0, v3, p1

    .line 569
    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    goto :goto_3

    :cond_4
    add-float v1, v3, p1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    add-float v0, v3, p1

    .line 571
    :goto_2
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 574
    :goto_3
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    return-void

    .line 580
    :cond_6
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLastMoveDirection:I

    .line 582
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    float-to-int v3, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 584
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    const v5, 0x3e99999a    # 0.3f

    if-ltz v4, :cond_a

    int-to-float v2, v3

    .line 585
    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_9

    .line 586
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_7

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 587
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    goto :goto_5

    :cond_7
    mul-float/2addr p1, v5

    add-float v0, v2, p1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    add-float v4, v2, p1

    .line 589
    :goto_4
    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    goto :goto_5

    .line 592
    :cond_9
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 595
    :goto_5
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    goto :goto_8

    .line 596
    :cond_a
    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    iget v6, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_e

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    int-to-float v8, v3

    .line 597
    iget v9, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_d

    .line 598
    iget v7, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float v0, v7, v0

    if-nez v0, :cond_b

    sub-int/2addr v6, v2

    mul-int/2addr v4, v6

    int-to-float p1, v4

    add-float/2addr v1, p1

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 599
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    goto :goto_7

    :cond_b
    mul-float/2addr p1, v5

    add-float v0, v7, p1

    neg-float v1, v9

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    neg-float p1, v9

    goto :goto_6

    :cond_c
    add-float/2addr p1, v7

    .line 601
    :goto_6
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    goto :goto_7

    .line 604
    :cond_d
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 607
    :goto_7
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 610
    :cond_e
    :goto_8
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLimitMaxDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxMarginIncrease:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    .line 612
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->updateIndex()V

    .line 613
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    return-void
.end method

.method private scrollNearbyScale()V
    .locals 4

    .line 536
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 539
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    .line 541
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    goto :goto_0

    .line 543
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    goto :goto_0

    .line 546
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 549
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->updateIndex()V

    .line 550
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->postInvalidate()V

    :cond_2
    return-void
.end method

.method private startReboundAnimation()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->initAnimator()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 529
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    .line 530
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 531
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateIndex()V
    .locals 3

    .line 617
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-eqz v0, :cond_1

    .line 618
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 619
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    .line 621
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    if-eqz v1, :cond_0

    .line 622
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    if-eq v0, v2, :cond_0

    .line 623
    invoke-interface {v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onBarMoving()V

    .line 624
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onValueChange(I)V

    .line 628
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    return p0
.end method

.method public getLeftFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getRightFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public initDataIndex(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 688
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    .line 694
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbInitScalePointerX:Z

    if-nez v0, :cond_1

    return-void

    .line 698
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    const/4 p1, 0x1

    .line 699
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbInitIndex:Z

    .line 700
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isTouchable()Z
    .locals 0

    .line 738
    iget-boolean p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mTouchable:Z

    return p0
.end method

.method public needChangeValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 306
    iget-boolean v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v10, 0x1

    if-ne v10, v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v8, v0, v9, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 314
    :cond_1
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleTopMargin:I

    int-to-float v0, v0

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    if-ne v0, v1, :cond_2

    .line 319
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    rem-int/2addr v0, v1

    move v13, v0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    .line 323
    :goto_0
    iget v14, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    .line 325
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    shr-int/lit8 v1, v0, 0x1

    .line 326
    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    int-to-float v3, v0

    div-float v3, v2, v3

    float-to-int v3, v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 328
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float v0, v0

    iget v3, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    sub-float/2addr v0, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    iget v3, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float v2, v0, v1

    .line 329
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v15, v2, v1

    .line 330
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 332
    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float v2, v1, v11

    const/4 v6, -0x1

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    cmpl-float v0, v1, v11

    if-lez v0, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v10

    goto :goto_1

    :cond_4
    move v5, v0

    .line 340
    :goto_1
    iget-object v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeightOffSet:[I

    array-length v1, v0

    sub-int/2addr v1, v10

    aget v16, v0, v1

    const/4 v4, 0x0

    .line 342
    :goto_2
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-ge v4, v0, :cond_e

    .line 343
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 346
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeightOffSet:[I

    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 347
    iget-boolean v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eqz v2, :cond_5

    .line 348
    aget v0, v1, v0

    sub-int v0, v0, v16

    int-to-float v0, v0

    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int v0, v16, v0

    goto :goto_6

    .line 350
    :cond_5
    aget v2, v1, v0

    aget v3, v1, v0

    sub-int v3, v16, v3

    int-to-float v3, v3

    iget v12, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 352
    array-length v3, v1

    sub-int/2addr v3, v10

    if-ge v0, v3, :cond_a

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v5, v6, :cond_8

    if-eq v5, v10, :cond_6

    goto :goto_5

    .line 367
    :cond_6
    iget v12, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    iget v6, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    iget v9, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v6, v6

    sub-int/2addr v12, v6

    if-le v4, v12, :cond_7

    add-int/lit8 v6, v0, -0x1

    .line 368
    aget v6, v1, v6

    aget v0, v1, v0

    goto :goto_3

    .line 371
    :cond_7
    aget v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    goto :goto_4

    .line 355
    :cond_8
    iget v6, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    iget v9, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    iget v12, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v12, v12

    div-float/2addr v9, v12

    float-to-int v9, v9

    sub-int/2addr v6, v9

    if-ge v4, v6, :cond_9

    add-int/lit8 v6, v0, -0x1

    .line 356
    aget v6, v1, v6

    aget v0, v1, v0

    :goto_3
    sub-int/2addr v6, v0

    int-to-float v0, v6

    mul-float/2addr v0, v3

    mul-float/2addr v0, v15

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_6

    .line 359
    :cond_9
    aget v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    :goto_4
    sub-int/2addr v6, v0

    int-to-float v0, v6

    mul-float/2addr v0, v3

    mul-float/2addr v0, v15

    float-to-int v0, v0

    sub-int v0, v2, v0

    goto :goto_6

    :cond_a
    :goto_5
    move v0, v2

    goto :goto_6

    :cond_b
    move/from16 v0, v16

    .line 382
    :goto_6
    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCountBetweenBigScale:I

    rem-int v1, v4, v1

    if-ne v1, v13, :cond_c

    .line 383
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sBigScaleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_7

    .line 386
    :cond_c
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->sSmallScaleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    :goto_7
    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffsetMargin:F

    cmpg-float v2, v11, v1

    if-gez v2, :cond_d

    .line 393
    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    iget v3, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    mul-int/2addr v1, v4

    goto :goto_8

    .line 395
    :cond_d
    iget v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    iget v3, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    sub-int/2addr v3, v10

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    :goto_8
    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 398
    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    add-float v3, v1, v2

    int-to-float v6, v0

    add-float v9, v1, v2

    int-to-float v12, v14

    iget-object v2, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move v2, v3

    move v3, v6

    move/from16 v18, v4

    move v4, v9

    move v9, v5

    move v5, v12

    const/4 v12, -0x1

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v18, 0x1

    move v5, v9

    move v6, v12

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 401
    :cond_e
    iget-boolean v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eqz v0, :cond_f

    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    goto :goto_9

    :cond_f
    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 402
    :goto_9
    iget-object v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeightOffSet:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v1, v1, v16

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    add-int v0, v16, v0

    .line 403
    iget v1, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    int-to-float v2, v1

    int-to-float v3, v0

    int-to-float v4, v1

    iget v0, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleHeight:I

    int-to-float v5, v0

    iget-object v6, v7, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 642
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 644
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    .line 649
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLayoutWidth:I

    div-int/lit8 p1, p1, 0x2

    .line 650
    iget p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mBigScaleStrokeWidth:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    .line 651
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    rem-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartOffsetX:F

    const/4 p1, 0x1

    .line 652
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbInitScalePointerX:Z

    .line 654
    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbInitIndex:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 655
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 658
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    if-ltz p1, :cond_2

    .line 659
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->initDataIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 416
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->isTouchable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 495
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->startReboundAnimation()V

    goto/16 :goto_0

    .line 500
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 501
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 502
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 505
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    goto/16 :goto_0

    .line 436
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    sub-float/2addr v0, v2

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownY:F

    sub-float/2addr v2, v3

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownY:F

    .line 442
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    goto/16 :goto_0

    .line 447
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 451
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v1, p1, :cond_7

    neg-float p1, v0

    .line 452
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    goto/16 :goto_0

    .line 454
    :cond_7
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    goto :goto_0

    .line 460
    :cond_8
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mOffset:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    .line 461
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->startReboundAnimation()V

    goto :goto_0

    .line 467
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 468
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 469
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 470
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 471
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 474
    :cond_a
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_c

    .line 475
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v1, p1, :cond_b

    neg-float v3, v3

    .line 480
    :cond_b
    new-instance p1, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    invoke-direct {p1, p0, v3}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;-><init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;F)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    .line 481
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mMyHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 484
    :cond_c
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->scrollNearbyScale()V

    .line 487
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    if-eqz p0, :cond_e

    .line 488
    invoke-interface {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;->onActionUp()V

    goto :goto_0

    .line 424
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownX:F

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mDownY:F

    .line 426
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    if-eqz p1, :cond_e

    .line 429
    invoke-virtual {p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;->cancelFling()V

    .line 430
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$FlingRunnable;

    :cond_e
    :goto_0
    return v1
.end method

.method public scrollTo(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 674
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbLazySetIndex:Z

    if-eqz v0, :cond_1

    .line 679
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbLazySetIndex:Z

    .line 683
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mStartDistanceX:F

    .line 684
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 729
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mAlign:I

    :cond_1
    return-void
.end method

.method public setAuto(ZZ)V
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 708
    iget-object p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 709
    iget-object p2, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    .line 712
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_1

    .line 714
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 717
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 718
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mColorObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

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

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 272
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbAuto:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbLazySetIndex:Z

    return-void

    .line 281
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCurrentIndex:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setLevelNum(I)V
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelNum, levelNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    .line 289
    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mbValid:Z

    if-eqz p1, :cond_1

    .line 290
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mLevelNum:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mCenterIndex:I

    goto :goto_1

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->init()V

    :goto_1
    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;

    return-void
.end method

.method public setShadowLayer()V
    .locals 1

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mNeedSetShadowLayer:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mTouchable:Z

    return-void
.end method

.method public sliderLeft()V
    .locals 1

    .line 637
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method

.method public sliderRight()V
    .locals 1

    .line 633
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->mScaleMargin:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->onMove(F)V

    return-void
.end method
