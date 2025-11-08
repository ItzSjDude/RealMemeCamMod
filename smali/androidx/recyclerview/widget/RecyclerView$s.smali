.class public abstract Landroidx/recyclerview/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$s$b;,
        Landroidx/recyclerview/widget/RecyclerView$s$a;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12040
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    .line 12057
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$s$a;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 12115
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 12116
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView$s$b;

    if-eqz v0, :cond_0

    .line 12117
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$s$b;

    .line 12118
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 12120
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Landroidx/recyclerview/widget/RecyclerView$s$b;

    .line 12121
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    .line 12120
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 0

    .line 12252
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 12245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0

    .line 12238
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 0

    .line 12131
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

    return-object p0
.end method

.method public getTargetPosition()I
    .locals 0

    .line 12183
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    return p0
.end method

.method public instantScrollToPosition(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12261
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 0

    .line 12165
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 12173
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    return p0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 2

    .line 12278
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 12280
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 12281
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method onAnimation(II)V
    .locals 5

    .line 12187
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12188
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 12189
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->stop()V

    .line 12197
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_3

    .line 12198
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12199
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 12200
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 12201
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 12202
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 12200
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 12207
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    .line 12209
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 12211
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    if-ne v1, v3, :cond_4

    .line 12212
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$s;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V

    .line 12213
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12214
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->stop()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    .line 12216
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12217
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    .line 12220
    :cond_5
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    if-eqz v1, :cond_6

    .line 12221
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$s;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V

    .line 12222
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a()Z

    move-result p1

    .line 12223
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_6

    .line 12226
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 12227
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    .line 12228
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    :cond_6
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 12265
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12266
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    .line 12100
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    return-void
.end method

.method start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 2

    .line 12075
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->b()V

    .line 12077
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mStarted:Z

    if-eqz v0, :cond_0

    .line 12078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12079
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    .line 12078
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12084
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12085
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 12086
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 12089
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 p1, 0x1

    .line 12090
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    .line 12091
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    .line 12092
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->getTargetPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    .line 12093
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->onStart()V

    .line 12094
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    .line 12096
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mStarted:Z

    return-void

    .line 12087
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final stop()V
    .locals 3

    .line 12141
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12144
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRunning:Z

    .line 12145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->onStop()V

    .line 12146
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 v1, 0x0

    .line 12147
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetView:Landroid/view/View;

    .line 12148
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mTargetPosition:I

    .line 12149
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mPendingInitialRun:Z

    .line 12151
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 12153
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 12154
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
