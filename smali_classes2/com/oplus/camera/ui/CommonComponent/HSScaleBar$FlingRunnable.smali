.class Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;
.super Ljava/lang/Object;
.source "HSScaleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x190


# instance fields
.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFrameDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastX:F

.field private mMagicVelocityPx:F

.field private mStartTime:J

.field private mTotalDistance:F

.field private mVelocityX:F

.field private mbFinish:Z

.field final synthetic this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)V
    .locals 2

    .line 730
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 716
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mDuration:I

    const/16 v0, 0x10

    .line 717
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mFrameDuration:I

    const v0, 0x3e19999a    # 0.15f

    .line 723
    iput v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mMagicVelocityPx:F

    .line 728
    new-instance v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingInterpolator;

    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingInterpolator;-><init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    .line 733
    invoke-static {p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onBarScrolling(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 737
    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mLastX:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 738
    iget v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mDuration:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mDurationReciprocal:F

    .line 739
    iput p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mVelocityX:F

    int-to-float p1, v0

    .line 740
    iget p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mVelocityX:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mMagicVelocityPx:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mTotalDistance:F

    .line 741
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mStartTime:J

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    .line 747
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object v1

    iget-boolean p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    xor-int/2addr p0, v0

    invoke-interface {v1, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onBarScrolling(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 754
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    if-eqz v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 759
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v2, v0

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mDurationReciprocal:F

    mul-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 760
    iget v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mLastX:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mTotalDistance:F

    mul-float/2addr v2, v3

    .line 761
    iput v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mLastX:F

    .line 763
    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mDuration:I

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$700(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)V

    .line 765
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$800(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mFrameDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-lt v0, v1, :cond_3

    .line 767
    iput v3, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mLastX:F

    .line 769
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$900(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$900(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    .line 776
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 777
    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$600(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->mbFinish:Z

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;->onBarScrolling(Z)V

    .line 781
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_4

    .line 782
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$FlingRunnable;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$1000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V

    :cond_4
    return-void
.end method
