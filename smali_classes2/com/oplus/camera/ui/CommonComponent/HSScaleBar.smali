.class public Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;
.super Landroid/view/View;
.source "HSScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;,
        Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;,
        Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingInterpolator;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final DAMPING:F = 0.3f

.field private static final FIRST_CONTROL_POINT_X:F = 0.0f

.field private static final FIRST_CONTROL_POINT_Y:F = 0.0f

.field private static final FLING_VELOCITY_THRESHOLD:I = 0x3e8

.field private static final FUNCTION_COLOR:Ljava/lang/String; = "color"

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

.field private static final TAG:Ljava/lang/String; = "HSScaleBar"

.field private static final TEN_SMALL_SCALE_BETWEEN_BIG_SCALE:I = 0x2

.field private static sBigScaleColor:I

.field private static sHighlightColor:I

.field private static sSmallScaleColor:I

.field private static sTextColor:I


# instance fields
.field private mAlign:I

.field private mAlphaOffSet:[I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBigScaleStrokeWidth:I

.field private mCenterIndex:I

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterStartY:I

.field private mColorDuration:I

.field private mContext:Landroid/content/Context;

.field private mCountBetweenBigScale:I

.field private mCurrentIndex:I

.field private mDownX:F

.field private mDownY:F

.field private mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mIntervalAnim:Landroid/animation/ValueAnimator;

.field private mLastMoveDirection:I

.field private mLayoutWidth:I

.field private mLevelNum:I

.field private mLimitMaxDistance:F

.field private mLineYBottom:I

.field private mLongStartY:I

.field private mMaxFlingVelocity:I

.field private mMaxMarginIncrease:F

.field private mMyHandler:Landroid/os/Handler;

.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:F

.field private mOffsetCount:I

.field private mOffsetEndY:I

.field private mOffsetMargin:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

.field private mScaleHeight:I

.field private mScaleMargin:I

.field private mScalePointerX:I

.field private mScaleRatio:F

.field private mScaleValueAnimator:Landroid/animation/ValueAnimator;

.field private mShortStartY:I

.field private mShowText:[Ljava/lang/String;

.field private mSmallScaleStrokeWidth:I

.field private mStartDistanceX:F

.field private mStartOffsetX:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTickTextSize:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxFadingIndex:I

.field private mbAuto:Z

.field private mbInitIndex:Z

.field private mbInitScalePointerX:Z

.field private mbValid:Z

.field private minFadingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->REBOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 5

    .line 142
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 77
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartOffsetX:F

    const/4 v1, 0x0

    .line 78
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    .line 82
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    const/16 v2, 0xb

    .line 84
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mNameList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 89
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlign:I

    const/4 v4, 0x2

    .line 91
    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCountBetweenBigScale:I

    .line 93
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTickTextSize:I

    .line 95
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    .line 96
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    .line 98
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    .line 99
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 102
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    const/16 v4, 0xa

    .line 103
    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetCount:I

    .line 108
    iput-boolean v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    .line 119
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 120
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mColorDuration:I

    .line 121
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleRatio:F

    const/4 v0, 0x7

    .line 122
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->minFadingIndex:I

    const/16 v0, 0xf

    .line 123
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->maxFadingIndex:I

    .line 124
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLongStartY:I

    .line 125
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShortStartY:I

    .line 126
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterStartY:I

    .line 127
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    .line 128
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetEndY:I

    .line 132
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLastMoveDirection:I

    .line 144
    iput-object p3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMyHandler:Landroid/os/Handler;

    .line 145
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xe
        0x1f
        0x33
        0x4a
        0x66
        0x84
        0xa2
        0xc0
        0xde
        0xfc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 77
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartOffsetX:F

    const/4 v1, 0x0

    .line 78
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    .line 82
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    const/16 v2, 0xb

    .line 84
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mNameList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 89
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlign:I

    const/4 v4, 0x2

    .line 91
    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCountBetweenBigScale:I

    .line 93
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTickTextSize:I

    .line 95
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    .line 96
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    .line 98
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    .line 99
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 102
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    const/16 v4, 0xa

    .line 103
    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetCount:I

    .line 108
    iput-boolean v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    .line 119
    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 120
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mColorDuration:I

    .line 121
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleRatio:F

    const/4 v0, 0x7

    .line 122
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->minFadingIndex:I

    const/16 v0, 0xf

    .line 123
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->maxFadingIndex:I

    .line 124
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLongStartY:I

    .line 125
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShortStartY:I

    .line 126
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterStartY:I

    .line 127
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    .line 128
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetEndY:I

    .line 132
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLastMoveDirection:I

    .line 153
    iput-object p3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMyHandler:Landroid/os/Handler;

    .line 154
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    .line 155
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    .line 156
    iput-object p4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mNameList:Ljava/util/ArrayList;

    .line 157
    iput-object p5, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShowText:[Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xe
        0x1f
        0x33
        0x4a
        0x66
        0x84
        0xa2
        0xc0
        0xde
        0xfc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 76
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 77
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartOffsetX:F

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    .line 82
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    const/16 v1, 0xb

    .line 84
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mNameList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 89
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlign:I

    const/4 v3, 0x2

    .line 91
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCountBetweenBigScale:I

    .line 93
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTickTextSize:I

    .line 95
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    .line 96
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    .line 98
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    .line 99
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    .line 101
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 102
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    const/16 v3, 0xa

    .line 103
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetCount:I

    .line 108
    iput-boolean v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    .line 119
    iput-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 120
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mColorDuration:I

    .line 121
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleRatio:F

    const/4 p2, 0x7

    .line 122
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->minFadingIndex:I

    const/16 p2, 0xf

    .line 123
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->maxFadingIndex:I

    .line 124
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLongStartY:I

    .line 125
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShortStartY:I

    .line 126
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterStartY:I

    .line 127
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    .line 128
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetEndY:I

    .line 132
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLastMoveDirection:I

    .line 137
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xe
        0x1f
        0x33
        0x4a
        0x66
        0x84
        0xa2
        0xc0
        0xde
        0xfc
    .end array-data
.end method

.method static synthetic access$000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    return p0
.end method

.method static synthetic access$002(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    return p1
.end method

.method static synthetic access$1000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->startReboundAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    return p1
.end method

.method static synthetic access$200(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    return p0
.end method

.method static synthetic access$300(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    return p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->updateIndex()V

    return-void
.end method

.method static synthetic access$502(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleRatio:F

    return p1
.end method

.method static synthetic access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->onMove(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->scrollNearbyScale()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 198
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 199
    iput-boolean v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    .line 206
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070657

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mBigScaleStrokeWidth:I

    const v3, 0x7f070662

    .line 208
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mSmallScaleStrokeWidth:I

    const v3, 0x7f070663

    .line 209
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTickTextSize:I

    const v3, 0x7f07065d

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    .line 211
    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetCount:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    .line 212
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    const v3, 0x7f07065c

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleHeight:I

    .line 214
    iget-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0604f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sBigScaleColor:I

    .line 215
    iget-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    const v4, 0x7f060032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sSmallScaleColor:I

    .line 216
    iget-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    const v4, 0x7f06009a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sTextColor:I

    .line 217
    iget-object v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sHighlightColor:I

    const v3, 0x7f07065a

    .line 219
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLongStartY:I

    const v3, 0x7f070661

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShortStartY:I

    const v3, 0x7f070658

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterStartY:I

    const v3, 0x7f070659

    .line 222
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    const v3, 0x7f07065b

    .line 223
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetEndY:I

    .line 225
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    .line 226
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sBigScaleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    .line 232
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    .line 239
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mBigScaleStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTickTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    iget-object v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxFlingVelocity:I

    .line 247
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-nez v3, :cond_1

    div-int/2addr v2, v4

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    div-int/2addr v2, v4

    :goto_0
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterIndex:I

    .line 249
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterIndex:I

    if-gez v0, :cond_2

    .line 250
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterIndex:I

    .line 253
    :cond_2
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$3;-><init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initAnimator()V
    .locals 3

    .line 162
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->REBOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;-><init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$2;-><init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private onMove(F)V
    .locals 9

    .line 539
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    if-nez v0, :cond_0

    const-string p0, "HSScaleBar"

    const-string p1, "onMove return, is not valid"

    .line 540
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

    .line 551
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLastMoveDirection:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_6

    if-ne v1, v2, :cond_4

    add-float v1, v3, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    add-float v0, v3, p1

    .line 553
    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    goto :goto_3

    :cond_4
    add-float v1, v3, p1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    add-float v0, v3, p1

    .line 555
    :goto_2
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 558
    :goto_3
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    .line 559
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    return-void

    .line 564
    :cond_6
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLastMoveDirection:I

    .line 566
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    float-to-int v3, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 568
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    const v5, 0x3e99999a    # 0.3f

    if-ltz v4, :cond_a

    int-to-float v2, v3

    .line 569
    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-nez v1, :cond_9

    .line 570
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_7

    .line 571
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v5

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    goto :goto_5

    :cond_7
    mul-float/2addr p1, v5

    add-float v0, v1, p1

    .line 573
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    add-float v2, v1, p1

    :goto_4
    iput v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    goto :goto_5

    .line 576
    :cond_9
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 579
    :goto_5
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    goto :goto_8

    .line 580
    :cond_a
    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    iget v6, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_e

    sub-int/2addr v6, v2

    mul-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v1, v4

    int-to-float v3, v3

    .line 581
    iget v4, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_d

    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-nez v1, :cond_d

    .line 582
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_b

    .line 583
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v5

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    goto :goto_7

    :cond_b
    mul-float/2addr p1, v5

    add-float v0, v1, p1

    .line 585
    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    neg-float v4, v3

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c

    neg-float p1, v3

    goto :goto_6

    :cond_c
    add-float/2addr p1, v1

    :goto_6
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    goto :goto_7

    .line 588
    :cond_d
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 591
    :goto_7
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 594
    :cond_e
    :goto_8
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLimitMaxDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxMarginIncrease:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    .line 596
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->updateIndex()V

    .line 597
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    return-void
.end method

.method private scrollNearbyScale()V
    .locals 4

    .line 520
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 523
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    .line 525
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    goto :goto_0

    .line 527
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    goto :goto_0

    .line 530
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 533
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->updateIndex()V

    .line 534
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->postInvalidate()V

    :cond_2
    return-void
.end method

.method private startReboundAnimation()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->initAnimator()V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 513
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    .line 514
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 515
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mIntervalAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 516
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateIndex()V
    .locals 3

    .line 601
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    if-eqz v0, :cond_1

    .line 602
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 603
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    .line 605
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    if-eqz v1, :cond_0

    .line 606
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    if-eq v0, v2, :cond_0

    .line 607
    invoke-interface {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onBarMoving()V

    .line 608
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onValueChange(I)V

    .line 612
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

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

    .line 667
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    .line 673
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbInitScalePointerX:Z

    if-nez v0, :cond_1

    return-void

    .line 677
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    const/4 p1, 0x1

    .line 678
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbInitIndex:Z

    .line 679
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public needChangeValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 295
    iget-boolean v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    if-nez v1, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getLayoutDirection()I

    move-result v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v9, v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getWidth()I

    move-result v3

    div-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 305
    :cond_1
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlign:I

    const/4 v10, 0x0

    if-ne v1, v8, :cond_2

    .line 306
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterIndex:I

    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCountBetweenBigScale:I

    rem-int/2addr v1, v2

    move v11, v1

    goto :goto_0

    :cond_2
    move v11, v10

    .line 310
    :goto_0
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleHeight:I

    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetEndY:I

    sub-int v12, v1, v2

    .line 313
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    shr-int/lit8 v2, v1, 0x1

    .line 314
    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    int-to-float v4, v1

    div-float v4, v3, v4

    float-to-int v4, v4

    mul-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 316
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v1, v1

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    sub-float/2addr v1, v4

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float v3, v1, v2

    .line 317
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v13, v3, v2

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    .line 320
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    const/4 v14, 0x0

    cmpl-float v3, v2, v14

    const/4 v15, -0x1

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    cmpl-float v1, v2, v14

    if-lez v1, :cond_3

    move v6, v15

    goto :goto_1

    :cond_3
    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    move v5, v10

    .line 328
    :goto_2
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    if-ge v5, v1, :cond_c

    .line 329
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 331
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->minFadingIndex:I

    if-lt v1, v2, :cond_9

    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->maxFadingIndex:I

    if-gt v1, v2, :cond_9

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v6, v15, :cond_7

    if-eq v6, v9, :cond_5

    .line 354
    iget-object v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    rsub-int/lit8 v1, v1, 0xf

    aget v1, v2, v1

    int-to-float v1, v1

    goto :goto_5

    .line 344
    :cond_5
    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    if-le v5, v3, :cond_6

    .line 345
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    rsub-int/lit8 v4, v1, 0xf

    aget v8, v3, v4

    int-to-float v8, v8

    rsub-int/lit8 v1, v1, 0x10

    aget v1, v3, v1

    aget v3, v3, v4

    goto :goto_3

    .line 347
    :cond_6
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    rsub-int/lit8 v4, v1, 0xf

    aget v8, v3, v4

    int-to-float v8, v8

    rsub-int/lit8 v1, v1, 0x10

    aget v1, v3, v1

    aget v3, v3, v4

    goto :goto_4

    .line 334
    :cond_7
    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    if-ge v5, v3, :cond_8

    .line 335
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    rsub-int/lit8 v4, v1, 0xf

    aget v8, v3, v4

    int-to-float v8, v8

    rsub-int/lit8 v1, v1, 0x10

    aget v1, v3, v1

    aget v3, v3, v4

    :goto_3
    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v13

    add-float/2addr v1, v8

    goto :goto_5

    .line 337
    :cond_8
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlphaOffSet:[I

    rsub-int/lit8 v4, v1, 0xf

    aget v8, v3, v4

    int-to-float v8, v8

    rsub-int/lit8 v1, v1, 0x10

    aget v1, v3, v1

    aget v3, v3, v4

    :goto_4
    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v13

    sub-float v1, v8, v1

    goto :goto_5

    :cond_9
    const/high16 v1, 0x437f0000    # 255.0f

    .line 361
    :goto_5
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCountBetweenBigScale:I

    rem-int v2, v5, v2

    if-ne v2, v11, :cond_a

    .line 362
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShortStartY:I

    goto :goto_6

    .line 364
    :cond_a
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLongStartY:I

    .line 367
    :goto_6
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sSmallScaleColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mSmallScaleStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 369
    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 373
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    cmpg-float v3, v14, v1

    if-gez v3, :cond_b

    .line 374
    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v1, v4

    mul-int/2addr v1, v5

    goto :goto_7

    .line 376
    :cond_b
    iget v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    sub-int/2addr v4, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    :goto_7
    int-to-float v1, v1

    add-float/2addr v3, v1

    .line 379
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    add-float v4, v1, v3

    iget v8, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    add-float v16, v1, v3

    sub-int v1, v12, v8

    int-to-float v8, v1

    iget-object v3, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v17, v2

    move v2, v4

    move-object/from16 v18, v3

    move/from16 v3, v17

    move/from16 v4, v16

    move/from16 v16, v5

    move v5, v8

    move v8, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v16, 0x1

    move v6, v8

    const/4 v8, 0x2

    goto/16 :goto_2

    .line 382
    :cond_c
    iget-object v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShowText:[Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 383
    array-length v2, v1

    move v3, v10

    :goto_8
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    .line 384
    iget-object v5, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v15, :cond_d

    const/4 v8, 0x2

    goto :goto_9

    .line 390
    :cond_d
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 391
    iget-object v8, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v4, v10, v11, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 392
    iget v8, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    iget v11, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    mul-int/2addr v11, v5

    int-to-float v11, v11

    add-float/2addr v8, v11

    iget-object v11, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mShowText:[Ljava/lang/String;

    array-length v11, v11

    sub-int/2addr v11, v9

    sub-int/2addr v11, v5

    int-to-float v5, v11

    iget v11, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffsetMargin:F

    mul-float/2addr v5, v11

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    .line 393
    iget v5, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    add-float/2addr v5, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleHeight:I

    int-to-float v6, v6

    iget-object v11, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 397
    :cond_e
    iget v1, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterStartY:I

    .line 398
    iget v2, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    int-to-float v3, v2

    iget v4, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLineYBottom:I

    sub-int/2addr v1, v4

    int-to-float v5, v1

    int-to-float v6, v2

    sub-int/2addr v12, v4

    int-to-float v4, v12

    iget-object v8, v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    move v3, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 626
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 628
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLayoutWidth:I

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLayoutWidth:I

    .line 633
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLayoutWidth:I

    div-int/lit8 p1, p1, 0x2

    .line 634
    iget p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mBigScaleStrokeWidth:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    .line 635
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    rem-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartOffsetX:F

    const/4 p1, 0x1

    .line 636
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbInitScalePointerX:Z

    .line 638
    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbInitIndex:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 639
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 642
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    if-ltz p1, :cond_2

    .line 643
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->initDataIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 479
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->startReboundAnimation()V

    goto/16 :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    .line 485
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 486
    iput-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->scrollNearbyScale()V

    goto/16 :goto_0

    .line 420
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    sub-float/2addr v0, v1

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    sub-float/2addr v1, v3

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    .line 426
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_4

    goto/16 :goto_0

    .line 431
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    .line 432
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 435
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_6

    neg-float p1, v0

    .line 436
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->onMove(F)V

    goto/16 :goto_0

    .line 438
    :cond_6
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->onMove(F)V

    goto :goto_0

    .line 444
    :cond_7
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mOffset:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    .line 445
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->startReboundAnimation()V

    goto :goto_0

    .line 451
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 452
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 453
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMaxFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 454
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 455
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 458
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_b

    .line 459
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_a

    neg-float v3, v3

    .line 464
    :cond_a
    new-instance p1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

    invoke-direct {p1, p0, v3}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;-><init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

    .line 465
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mMyHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 468
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->scrollNearbyScale()V

    .line 471
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    if-eqz p0, :cond_d

    .line 472
    invoke-interface {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onActionUp()V

    goto :goto_0

    .line 408
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownX:F

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mDownY:F

    .line 410
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 412
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

    if-eqz p1, :cond_d

    .line 413
    invoke-virtual {p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->cancelFling()V

    .line 414
    iput-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mFlingRunnable:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;

    :cond_d
    :goto_0
    return v2
.end method

.method public scrollTo(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 658
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScalePointerX:I

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mStartDistanceX:F

    .line 663
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 699
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mAlign:I

    :cond_1
    return-void
.end method

.method public setAuto(ZZ)V
    .locals 0

    .line 683
    iget-boolean p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbAuto:Z

    if-eq p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 684
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbAuto:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 687
    sget p1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sBigScaleColor:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->sHighlightColor:I

    .line 688
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 266
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCurrentIndex:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setLevelNum(I)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelNum, levelNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    .line 278
    iget-boolean p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mbValid:Z

    if-eqz p1, :cond_1

    .line 279
    iget p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mLevelNum:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mCenterIndex:I

    goto :goto_1

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->init()V

    :goto_1
    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleBarValueChangeListener:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    return-void
.end method

.method public sliderLeft()V
    .locals 1

    .line 621
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->onMove(F)V

    return-void
.end method

.method public sliderRight()V
    .locals 1

    .line 617
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->mScaleMargin:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->onMove(F)V

    return-void
.end method
