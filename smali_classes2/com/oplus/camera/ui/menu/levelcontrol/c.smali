.class public Lcom/oplus/camera/ui/menu/levelcontrol/c;
.super Lcom/oplus/camera/ui/menu/setting/q;
.source "BlurMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/c$a;
    }
.end annotation


# static fields
.field protected static final ANGLE_360:I = 0x168

.field private static final BLUR_HAL_FRONT_VALUES:[F

.field private static final BLUR_HAL_REAR_VALUES:[F

.field public static final BLUR_SHOWING_TEXT_VALUES:[F

.field public static final BLUR_TEXT_SHADOW_RADIUS:I = 0x4

.field private static final DECIMAL_PATTERN:Ljava/lang/String; = "0.#"

.field private static final DECIMAL_PATTERN_LESS_ONE:Ljava/lang/String; = "0.00"

.field protected static final DISPLA_ROTATE_X:F = 2.0f

.field protected static final DISPLA_ROTATE_Y:F = 0.6f

.field private static final DURATION_190:I = 0xbe

.field private static final DURATION_300:I = 0x12c

.field public static final MAX_BLUR_MENU_VALUE:I = 0x19

.field public static final MAX_VALUE:I = 0x64

.field private static final PORTRAIT_BLUR_MIN_VALUE:I = 0x1

.field public static final PORTRAIT_BLUR_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BlurMenu"

.field protected static final TEXT_NEGATIVE_SIGN:Ljava/lang/String; = "-"

.field public static final TILT_SHIFT_BLUR_MIN_VALUE:I = 0x0

.field public static final TILT_SHIFT_BLUR_TYPE:I = 0x1

.field public static final VIDEO_BLUR_MIN_VALUE:I

.field public static final VIDEO_BLUR_TYPE:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mBackGroundView:Landroid/view/View;

.field private mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

.field protected mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

.field private mBlurMenuValuePrefixText:Landroid/widget/TextView;

.field private mBlurMenuValueText:Landroid/widget/TextView;

.field private mBlurOneTextMaxWidth:I

.field private mBlurThreeTextMaxWidth:I

.field private mBlurTwoTextMaxWidth:I

.field private mBlurTwoTextWithPointMaxWidth:I

.field private mBlurType:I

.field private mBlurView:Landroid/widget/LinearLayout;

.field protected mCurrentDegree:I

.field mDecimalFormat:Ljava/text/DecimalFormat;

.field mDecimalFormatLessOne:Ljava/text/DecimalFormat;

.field private mDispalyAnimation:Landroid/animation/ValueAnimator;

.field private mDisplayView:Landroid/widget/LinearLayout;

.field private mLastOrientation:I

.field private mLastSeekBarValue:I

.field private mLayoutMode:I

.field private mMeneAnim:Landroid/animation/AnimatorSet;

.field private mMenuBgHeight:I

.field private mMinValue:I

.field private mOnProgressChangedListener:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

.field private mParentContainerView:Landroid/widget/RelativeLayout;

.field private mPosInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenRotation:I

.field protected mStartDegree:I

.field private mTargetDegree:I

.field private mValueTextColor:I

.field private mValueTextPercentSize:I

.field private mValueTextSize:I

.field protected mbClockwise:Z

.field private mbMenuOpen:Z

.field private mbVideoRecordingHideMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    .line 58
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_SHOWING_TEXT_VALUES:[F

    .line 71
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_HAL_FRONT_VALUES:[F

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_HAL_REAR_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41500000    # 13.0f
        0x41300000    # 11.0f
        0x41200000    # 10.0f
        0x41100000    # 9.0f
        0x41000000    # 8.0f
        0x40e33333    # 7.1f
        0x40c9999a    # 6.3f
        0x40b33333    # 5.6f
        0x40a00000    # 5.0f
        0x40900000    # 4.5f
        0x40800000    # 4.0f
        0x40600000    # 3.5f
        0x404ccccd    # 3.2f
        0x40333333    # 2.8f
        0x40200000    # 2.5f
        0x400ccccd    # 2.2f
        0x40000000    # 2.0f
        0x3fe66666    # 1.8f
        0x3fcccccd    # 1.6f
        0x3fb33333    # 1.4f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41d00000    # 26.0f
        0x42040000    # 33.0f
        0x42200000    # 40.0f
        0x42380000    # 46.0f
        0x42540000    # 53.0f
        0x42700000    # 60.0f
        0x42880000    # 68.0f
        0x42920000    # 73.0f
        0x429e0000    # 79.0f
        0x42a60000    # 83.0f
        0x42b00000    # 88.0f
        0x42b40000    # 90.0f
        0x42b80000    # 92.0f
        0x42bc0000    # 94.0f
        0x42c00000    # 96.0f
        0x42c40000    # 98.0f
        0x42c60000    # 99.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d80000    # 27.0f
        0x42000000    # 32.0f
        0x42180000    # 38.0f
        0x42340000    # 45.0f
        0x424c0000    # 51.0f
        0x42700000    # 60.0f
        0x42880000    # 68.0f
        0x42980000    # 76.0f
        0x42a20000    # 81.0f
        0x42ac0000    # 86.0f
        0x42b40000    # 90.0f
        0x42bc0000    # 94.0f
        0x42c20000    # 97.0f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/levelcontrol/c$a;)V
    .locals 7

    .line 157
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/q;-><init>(Landroid/app/Activity;)V

    .line 93
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormatLessOne:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    .line 98
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mStartDegree:I

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbClockwise:Z

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurOneTextMaxWidth:I

    .line 102
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextMaxWidth:I

    .line 103
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextWithPointMaxWidth:I

    .line 104
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurThreeTextMaxWidth:I

    .line 105
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationStartTime:J

    .line 107
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationEndTime:J

    .line 108
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastOrientation:I

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    .line 110
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbMenuOpen:Z

    .line 111
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    .line 112
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMinValue:I

    .line 113
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurType:I

    .line 115
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 116
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mPosInterpolator:Landroid/view/animation/PathInterpolator;

    .line 118
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    .line 119
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    .line 120
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    .line 121
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    .line 122
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    .line 123
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    .line 124
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValuePrefixText:Landroid/widget/TextView;

    .line 125
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    .line 126
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    .line 127
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    .line 129
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuBgHeight:I

    .line 130
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextColor:I

    .line 131
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextSize:I

    .line 132
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextPercentSize:I

    const/4 v1, -0x1

    .line 133
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastSeekBarValue:I

    .line 134
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    .line 135
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    .line 137
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mOnProgressChangedListener:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    .line 159
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    .line 160
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastSeekBarValue:I

    return p0
.end method

.method static synthetic access$002(Lcom/oplus/camera/ui/menu/levelcontrol/c;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastSeekBarValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    return p0
.end method

.method static synthetic access$500(Lcom/oplus/camera/ui/menu/levelcontrol/c;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationEndTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/oplus/camera/ui/menu/levelcontrol/c;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->removeMenu()V

    return-void
.end method

.method static synthetic access$800(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    return p0
.end method

.method private convertToBlurMenuValue(I)I
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x4f000000

    move v2, v1

    move v1, v0

    .line 887
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getTextValuesLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 888
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getOffset(II)F

    move-result v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getBlurTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 286
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c65

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    .line 287
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c63

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    .line 288
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x10e

    .line 290
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    const v4, 0x7f0700f9

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    .line 291
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    .line 294
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 298
    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    const/16 v3, 0xc

    const/4 v4, -0x1

    if-ne v0, v2, :cond_2

    .line 300
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07052f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 306
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuBgHeight:I

    invoke-direct {v0, v4, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    return-object v0
.end method

.method private getMenuBgHeight()I
    .locals 2

    .line 482
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070540

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    .line 485
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    return p0
.end method

.method private getMenuLayoutId()I
    .locals 2

    .line 547
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/16 v0, 0x10e

    .line 548
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    if-ne v0, p0, :cond_0

    const p0, 0x7f0c002e

    return p0

    :cond_0
    const p0, 0x7f0c002d

    return p0

    :cond_1
    const/4 p0, 0x4

    if-ne p0, v0, :cond_2

    const p0, 0x7f0c002c

    return p0

    :cond_2
    const p0, 0x7f0c002b

    return p0
.end method

.method private getMenuLayoutParams(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .line 504
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/16 v0, 0x10e

    .line 505
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    const v2, 0x7f070c65

    const/4 v3, 0x0

    const/16 v4, 0xa

    const v5, 0x7f070c63

    if-ne v0, p0, :cond_0

    .line 506
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 507
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xb

    .line 508
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 509
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 511
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 512
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 513
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 516
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x9

    .line 517
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 518
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 520
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 521
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 522
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    const/16 v2, 0xc

    const/4 v3, -0x1

    if-ne p0, v0, :cond_2

    .line 525
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 527
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p0, 0x7f070540

    .line 528
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p0, v0, :cond_3

    .line 530
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 532
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xe

    .line 533
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p0, 0x7f07052e

    .line 534
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 536
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 538
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    const v1, 0x7f0700e0

    .line 540
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    return-object v0
.end method

.method public static getVideoBlurValues(Z)[F
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.oplus.video.blur.app.front.list"

    goto :goto_0

    :cond_0
    const-string v0, "com.oplus.video.blur.app.back.list"

    .line 946
    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "BlurMenu"

    const-string v1, "getVideoBlurValues, blur config is null"

    .line 950
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 952
    sget-object p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_HAL_FRONT_VALUES:[F

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_HAL_REAR_VALUES:[F

    :goto_1
    return-object p0

    :cond_2
    return-object v0
.end method

.method private initBackgroundView()V
    .locals 4

    .line 490
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const v1, 0x7f090079

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c002a

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 493
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c0029

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    .line 496
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 497
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private initBlurView()V
    .locals 9

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 330
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMenuBgHeight()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuBgHeight:I

    .line 331
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextColor:I

    .line 332
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextSize:I

    .line 333
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextPercentSize:I

    .line 335
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->initBackgroundView()V

    .line 336
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    .line 337
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMenuLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    .line 338
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v2, 0x7f090410

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    .line 339
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e()V

    .line 340
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setBlurListener(Lcom/oplus/camera/ui/menu/levelcontrol/c$a;)V

    .line 342
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 344
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v4, 0x7f09007f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 346
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 349
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 351
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isTiltShiftBlurType()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 355
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 358
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initBlurView, strongTextWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", weakTextWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", textMinWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BlurMenu"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v4, v6, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    cmpl-float v1, v7, v1

    if-lez v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v6

    .line 363
    :goto_1
    iget v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    if-eq v5, v7, :cond_4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 365
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 369
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    .line 376
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 377
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/c$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 386
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    .line 388
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 391
    invoke-virtual {v2, v1, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 392
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValuePrefixText:Landroid/widget/TextView;

    .line 396
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mOnProgressChangedListener:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setScaleBarValueChangeListener(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;)V

    .line 398
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValuePrefixText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->initTextPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 400
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValuePrefixText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    .line 401
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    .line 403
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getBlurTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMenuLayoutParams(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private initTextPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 563
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 564
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 565
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 567
    invoke-static {}, Lcom/oplus/camera/util/Util;->x()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 569
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->computeDigitWidth(Landroid/graphics/Paint;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 573
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 574
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 575
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 576
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mValueTextPercentSize:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    invoke-static {}, Lcom/oplus/camera/util/Util;->A()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    return-void
.end method

.method private removeMenu()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 916
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 917
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 921
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 922
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    :cond_1
    return-void
.end method

.method private showMenuWithAnim()V
    .locals 12

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    const v2, 0x7f0900e5

    .line 696
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 695
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 697
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 701
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x190

    .line 702
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 704
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 705
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 706
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 708
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [F

    const/4 v9, 0x0

    .line 709
    invoke-virtual {p0, v9}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateDistance(Z)I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v10, 0x0

    aput v10, v8, v3

    .line 708
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 710
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mPosInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v8

    new-array v1, v1, [F

    .line 714
    invoke-virtual {p0, v9}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateDistance(Z)I

    move-result v11

    int-to-float v11, v11

    aput v11, v1, v9

    aput v10, v1, v3

    .line 713
    invoke-static {v7, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 715
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mPosInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 716
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 718
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    .line 719
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 720
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 721
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 739
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    if-eqz p0, :cond_1

    .line 740
    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->d()V

    :cond_1
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
.end method


# virtual methods
.method protected computeDigitWidth(Landroid/graphics/Paint;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    .line 641
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getTextValuesLength()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 642
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertBlurMenuValueToTextValue(I)F

    move-result v7

    float-to-int v8, v7

    int-to-float v8, v8

    sub-float v8, v7, v8

    .line 643
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    .line 645
    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-gez v9, :cond_2

    .line 646
    iget-object v9, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormatLessOne:Ljava/text/DecimalFormat;

    float-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    if-eqz v8, :cond_1

    cmpl-float v8, v7, v6

    if-lez v8, :cond_6

    :goto_2
    move v6, v7

    goto :goto_4

    :cond_1
    cmpl-float v8, v7, v4

    if-lez v8, :cond_6

    :goto_3
    move v4, v7

    goto :goto_4

    :cond_2
    const/high16 v9, 0x41200000    # 10.0f

    .line 657
    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-ltz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    if-eqz v8, :cond_3

    cmpl-float v8, v7, v6

    if-lez v8, :cond_6

    goto :goto_2

    :cond_3
    cmpl-float v8, v7, v4

    if-lez v8, :cond_6

    goto :goto_3

    .line 670
    :cond_4
    iget-object v9, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    if-eqz v8, :cond_5

    cmpl-float v8, v7, v5

    if-lez v8, :cond_6

    move v5, v7

    goto :goto_4

    :cond_5
    cmpl-float v8, v7, v3

    if-lez v8, :cond_6

    move v3, v7

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    float-to-double v0, v3

    .line 684
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurOneTextMaxWidth:I

    float-to-double v0, v4

    .line 685
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextMaxWidth:I

    float-to-double v0, v5

    .line 686
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextWithPointMaxWidth:I

    float-to-double v0, v6

    .line 687
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurThreeTextMaxWidth:I

    return-void
.end method

.method protected convertBlurMenuValueToTextValue(I)F
    .locals 1

    .line 904
    sget-object p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_SHOWING_TEXT_VALUES:[F

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    aget p0, p0, v0

    return p0
.end method

.method protected convertValueToFocus(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    .line 586
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 587
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 588
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 589
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormatLessOne:Ljava/text/DecimalFormat;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAnimationTranslateDistance(Z)I
    .locals 2

    .line 959
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10e

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    if-eq v0, v1, :cond_0

    .line 960
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuTranslateY:I

    neg-int p0, p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 963
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuTranslateY:I

    neg-int p0, p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMenuTranslateY:I

    :goto_0
    return p0
.end method

.method protected getAnimationTranslateProp()Ljava/lang/String;
    .locals 1

    .line 938
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "translationX"

    goto :goto_0

    :cond_0
    const-string p0, "translationY"

    :goto_0
    return-object p0
.end method

.method protected getBlurTextWidth(F)I
    .locals 2

    float-to-int v0, p1

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 615
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 617
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 625
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextWithPointMaxWidth:I

    return p0

    .line 627
    :cond_2
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurOneTextMaxWidth:I

    return p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 619
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurThreeTextMaxWidth:I

    return p0

    .line 621
    :cond_4
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurTwoTextMaxWidth:I

    return p0
.end method

.method public getBlurType()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurType:I

    return p0
.end method

.method protected getMaxValue()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method protected getOffset(II)F
    .locals 1

    .line 606
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->m()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getVideoBlurValues(Z)[F

    move-result-object p0

    .line 608
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    aget p0, p0, v0

    int-to-float p1, p2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method protected getRealValue(I)I
    .locals 1

    .line 600
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->m()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getVideoBlurValues(Z)[F

    move-result-object p0

    .line 602
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected getTextValuesLength()I
    .locals 0

    .line 900
    sget-object p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_SHOWING_TEXT_VALUES:[F

    array-length p0, p0

    return p0
.end method

.method protected hideBlurMenuValuePrefixText()V
    .locals 1

    .line 410
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValuePrefixText:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 414
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideMenu(ZZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 745
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->hideMenu(ZZZZZ)V

    return-void
.end method

.method public hideMenu(ZZZZZ)V
    .locals 10

    const/4 v0, 0x0

    .line 750
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbMenuOpen:Z

    .line 752
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->f()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    goto :goto_0

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v1, v0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(ZZ)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 761
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->removeMenu()V

    .line 762
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2, p3, p4, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(ZZZ)V

    .line 764
    invoke-super {p0, p1, p3}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    return-void

    .line 768
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_5

    .line 769
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    .line 773
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 774
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 777
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 778
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xfa

    .line 779
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 781
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 782
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 783
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 785
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v0

    .line 786
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateDistance(Z)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v2

    .line 785
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 787
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mPosInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x190

    .line 788
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 790
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v9

    new-array v1, v1, [F

    aput v7, v1, v0

    .line 791
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getAnimationTranslateDistance(Z)I

    move-result p5

    int-to-float p5, p5

    aput p5, v1, v2

    .line 790
    invoke-static {v8, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    .line 792
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mPosInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 793
    invoke-virtual {p5, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 795
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    .line 796
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 797
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    new-instance p5, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;

    invoke-direct {p5, p0, p3, p4}, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;ZZ)V

    invoke-virtual {p2, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 816
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 818
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2, p3, p4, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(ZZZ)V

    .line 820
    invoke-super {p0, p1, p3}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public hideMenuPanel(ZZ)V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 199
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 204
    :goto_0
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->hideMenu(ZZZZ)V

    :cond_1
    return-void
.end method

.method protected initBlurSeekbarDefaultDotPosition()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->l()I

    move-result v0

    .line 269
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertToBlurMenuValue(I)I

    move-result v0

    .line 270
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertBlurMenuValueToTextValue(I)F

    move-result v0

    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertBlurMenuValueToTextValue(I)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setDefaultDotPosition(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 0

    .line 928
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

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

.method public isEffectMenuOpen()Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbMenuOpen:Z

    return p0
.end method

.method public isEffectOpen()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->f()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOpen()Z
    .locals 0

    .line 932
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbMenuOpen:Z

    return p0
.end method

.method public isTiltShiftBlurType()Z
    .locals 1

    .line 172
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoRecordingHideMenu()Z
    .locals 0

    .line 868
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 844
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->hideMenuPanel(ZZ)V

    return v1

    .line 848
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/q;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(II)Z
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 827
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMeneAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 830
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->hideMenuPanel(ZZ)V

    return p2

    .line 834
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q;->onSingleTapUp(II)Z

    move-result p0

    return p0
.end method

.method public openMenuCanDisableHighLight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBlurType(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurType:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6

    if-ltz p1, :cond_0

    .line 418
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 419
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 421
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    return-void

    .line 425
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 429
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mStartDegree:I

    .line 430
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationStartTime:J

    .line 432
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    sub-int/2addr p2, v0

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p2, p2, 0x168

    :goto_1
    const/16 v0, 0xb4

    if-le p2, v0, :cond_3

    add-int/lit16 p2, p2, -0x168

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    .line 439
    :goto_2
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbClockwise:Z

    .line 440
    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationStartTime:J

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    div-int/lit16 p2, p2, 0x168

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationEndTime:J

    .line 447
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 448
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 p2, 0x2

    .line 451
    new-array p2, p2, [F

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    int-to-float v2, v2

    aput v2, p2, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    int-to-float v1, v1

    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    .line 452
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationEndTime:J

    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 453
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDispalyAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 442
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mTargetDegree:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    return-void

    .line 478
    :cond_7
    :goto_3
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastOrientation:I

    return-void
.end method

.method public setScreenMode(II)V
    .locals 2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenMode, layoutMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLayoutMode:I

    .line 911
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mScreenRotation:I

    return-void
.end method

.method public setVideoRecordingHideMenu(Z)V
    .locals 0

    .line 864
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    return-void
.end method

.method public show(ZZ)V
    .locals 4

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbMenuOpen:Z

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->initBlurView()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mDisplayView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 216
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mLastOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getBlurTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->showMenuWithAnim()V

    goto :goto_0

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 226
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBackGroundView:Landroid/view/View;

    const v2, 0x7f0900e5

    .line 227
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getBlurTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 226
    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mParentContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->e()V

    .line 233
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->b()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isTiltShiftBlurType()Z

    move-result p1

    if-nez p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(ZZ)V

    .line 237
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->f()I

    move-result p1

    .line 239
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->g()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_5

    .line 240
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    if-nez p2, :cond_5

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->l()I

    move-result p1

    .line 242
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2, p1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(IZ)V

    .line 245
    :cond_5
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMinValue:I

    goto :goto_1

    .line 246
    :cond_6
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->h()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 247
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMinValue:I

    goto :goto_1

    .line 249
    :cond_7
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mMinValue:I

    .line 252
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {p2, p1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(IZ)V

    .line 253
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMaxValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setLevelNum(I)V

    .line 254
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->initBlurSeekbarDefaultDotPosition()V

    .line 255
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertToBlurMenuValue(I)I

    move-result p2

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setCurrentIndex(I)V

    .line 257
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertBlurMenuValueToTextValue(I)F

    move-result p2

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuValueText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 260
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertValueToFocus(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show, index: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BlurMenu"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMenuPanel(Ljava/lang/String;ZZ)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BlurMenu"

    const-string p1, "showMenuPanel, return cannotExpandMenu"

    .line 178
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->show(ZZ)V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/q;->showMenuPanel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public showMenuPanelWithoutAnim(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->show(ZZ)V

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/q;->showMenuPanel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public stopVideoRecording()V
    .locals 2

    .line 852
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_blur_menu"

    .line 854
    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->showMenuPanel(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_tilt_shift_blur_menu"

    .line 856
    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->showMenuPanel(Ljava/lang/String;ZZ)V

    .line 859
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbVideoRecordingHideMenu:Z

    :cond_2
    return-void
.end method

.method public updateBlurMenuIndex(I)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurListener:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(IZ)V

    .line 874
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setLevelNum(I)V

    .line 876
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->initBlurSeekbarDefaultDotPosition()V

    .line 877
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mBlurMenuSeekBar:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertToBlurMenuValue(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setCurrentIndex(I)V

    :cond_0
    return-void
.end method
