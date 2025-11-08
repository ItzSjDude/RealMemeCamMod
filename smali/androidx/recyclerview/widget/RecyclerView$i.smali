.class public abstract Landroidx/recyclerview/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$i$b;,
        Landroidx/recyclerview/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroidx/recyclerview/widget/d;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroidx/recyclerview/widget/t;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

.field mVerticalBoundCheck:Landroidx/recyclerview/widget/t;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7742
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

    .line 7778
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

    .line 7818
    new-instance v0, Landroidx/recyclerview/widget/t;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/t;-><init>(Landroidx/recyclerview/widget/t$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/t;

    .line 7819
    new-instance v0, Landroidx/recyclerview/widget/t;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/t$b;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/t;-><init>(Landroidx/recyclerview/widget/t$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mVerticalBoundCheck:Landroidx/recyclerview/widget/t;

    const/4 v0, 0x0

    .line 7824
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRequestedSimpleAnimations:Z

    .line 7826
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mIsAttachedToWindow:Z

    .line 7832
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mAutoMeasure:Z

    const/4 v0, 0x1

    .line 7838
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mMeasurementCacheEnabled:Z

    .line 7840
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 4

    .line 8715
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    if-nez p3, :cond_1

    .line 8716
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8725
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/u;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    goto :goto_1

    .line 8718
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/u;->e(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 8727
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 8728
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8738
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 8740
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8742
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/d;->b()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 8750
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->moveView(II)V

    goto :goto_4

    .line 8745
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8747
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8753
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, p1, p2, v2}, Landroidx/recyclerview/widget/d;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 8754
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 8755
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$s;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8756
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 8729
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8730
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->unScrap()V

    goto :goto_3

    .line 8732
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    .line 8734
    :goto_3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8759
    :cond_8
    :goto_4
    iget-boolean p0, p3, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    if-eqz p0, :cond_9

    .line 8763
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8764
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    :cond_9
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    .line 8028
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8029
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 8037
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 8034
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 0

    .line 8943
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->e(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 9598
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_3

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    :cond_1
    move p1, p2

    move p3, p1

    goto :goto_0

    :cond_2
    move p3, p0

    :goto_0
    move p2, p1

    move p0, p3

    goto :goto_2

    :cond_3
    if-ltz p3, :cond_4

    :goto_1
    move p0, p3

    move p2, v3

    goto :goto_2

    :cond_4
    if-ne p3, v1, :cond_5

    move p2, p1

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_8

    :cond_6
    move p2, v2

    goto :goto_2

    :cond_7
    move p0, p2

    .line 9639
    :cond_8
    :goto_2
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 9555
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_2

    :cond_1
    if-ltz p2, :cond_2

    :goto_0
    move p0, p2

    :goto_1
    move p1, v0

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_0

    const/high16 p1, -0x80000000

    .line 9581
    :goto_2
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 8

    const/4 v0, 0x2

    .line 9986
    new-array v0, v0, [I

    .line 9987
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    .line 9988
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v2

    .line 9989
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9990
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9991
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9992
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    .line 9993
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    .line 9994
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 9996
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 9997
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    .line 9998
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    .line 9999
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 10005
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getLayoutDirection()I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 10007
    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 10010
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 10016
    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v4

    return-object v0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;
    .locals 2

    .line 10785
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$i$b;-><init>()V

    .line 10786
    sget-object v1, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 10788
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    .line 10790
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    .line 10791
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    .line 10792
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    .line 10793
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 6

    .line 10118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10122
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    .line 10123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v2

    .line 10124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 10125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10126
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 10127
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10129
    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    if-ge p0, v3, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    if-le p0, v1, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p3

    if-ge p0, v4, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    if-gt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 9492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9493
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V
    .locals 2

    .line 9352
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 9353
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9359
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 9360
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9361
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->removeViewAt(I)V

    .line 9362
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    goto :goto_0

    .line 9364
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->detachViewAt(I)V

    .line 9365
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 9366
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u;->h(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8670
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 8688
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8699
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 8711
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 0

    .line 8012
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8013
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 0

    .line 8049
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8050
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8988
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    .line 8977
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 2

    .line 8956
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 8957
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8958
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/u;->e(Landroidx/recyclerview/widget/RecyclerView$w;)V

    goto :goto_0

    .line 8960
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/u;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 8962
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 9859
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 9860
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 9863
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    .line 9864
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 9344
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9346
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9347
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 9027
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;)I

    move-result v0

    .line 9028
    invoke-direct {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 9041
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9042
    invoke-direct {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1

    .line 8914
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 8916
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->detachViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    .line 8936
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    .line 8265
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mIsAttachedToWindow:Z

    .line 8266
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 8270
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mIsAttachedToWindow:Z

    .line 8271
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 1

    .line 8651
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v0, :cond_0

    .line 8652
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 8855
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 8858
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 8862
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->c(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    .line 8883
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 8885
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8886
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 8890
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 8891
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$j;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 0

    .line 8523
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 0

    .line 8499
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p0, :cond_0

    .line 8500
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroidx/recyclerview/widget/RecyclerView$j;)V

    return-object p0

    .line 8501
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 8502
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 8504
    :cond_1
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 0

    .line 9894
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 9085
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->b(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 9075
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClipToPadding()Z
    .locals 0

    .line 8382
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 9838
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 9790
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 9802
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 1

    .line 9666
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9667
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 1

    .line 9652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9653
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 9826
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 9814
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 2

    .line 9241
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9244
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->c(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 0

    .line 9151
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeight:I

    return p0
.end method

.method public getHeightMode()I
    .locals 0

    .line 9119
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeightMode:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 9264
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 9265
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 0

    .line 8835
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result p0

    return p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 8641
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 0

    .line 9909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0

    .line 10436
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/h/v;->m(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    .line 10428
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/h/v;->l(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPaddingBottom()I
    .locals 0

    .line 9191
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingEnd()I
    .locals 0

    .line 9211
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/h/v;->k(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingLeft()I
    .locals 0

    .line 9161
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingRight()I
    .locals 0

    .line 9181
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    .line 9201
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/h/v;->j(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingTop()I
    .locals 0

    .line 9171
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 0

    .line 8825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result p0

    return p0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 0

    .line 9924
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 0

    .line 9879
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 9758
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9759
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 9760
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 9759
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 9762
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9765
    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 9766
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9767
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9768
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9769
    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9770
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9771
    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p2

    .line 9772
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 9773
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 9774
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p0

    .line 9775
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    .line 9771
    invoke-virtual {p3, p2, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9779
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getWidth()I
    .locals 0

    .line 9135
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidth:I

    return p0
.end method

.method public getWidthMode()I
    .locals 0

    .line 9102
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidthMode:I

    return p0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .line 10819
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 10821
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10822
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10823
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasFocus()Z
    .locals 0

    .line 9231
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2

    .line 9309
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9315
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    const/16 v0, 0x80

    .line 9316
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 9317
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->g(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void

    .line 9312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View should be fully attached to be ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9313
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAttachedToWindow()Z
    .locals 0

    .line 8282
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mIsAttachedToWindow:Z

    return p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    .line 8143
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mAutoMeasure:Z

    return p0
.end method

.method public isFocused()Z
    .locals 0

    .line 9221
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 0

    .line 8210
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mItemPrefetchEnabled:Z

    return p0
.end method

.method public isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 0

    .line 9476
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mMeasurementCacheEnabled:Z

    return p0
.end method

.method public isSmoothScrolling()Z
    .locals 0

    .line 8629
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 2

    .line 10098
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/t;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/t;->a(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mVerticalBoundCheck:Landroidx/recyclerview/widget/t;

    .line 10100
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/t;->a(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p0

    :cond_1
    xor-int/2addr p0, v1

    return p0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 1

    .line 9701
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9702
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 2

    .line 9737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9738
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9739
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 5

    .line 9422
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9424
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9425
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9426
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 9427
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidthMode()I

    move-result v2

    .line 9428
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    .line 9429
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v4

    .line 9427
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 9430
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeightMode()I

    move-result v2

    .line 9431
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 9432
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v4

    .line 9430
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 9433
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9434
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5

    .line 9521
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9523
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9524
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9525
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 9527
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidthMode()I

    move-result v2

    .line 9528
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    .line 9530
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v4

    .line 9527
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 9531
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeightMode()I

    move-result v2

    .line 9532
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 9534
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v4

    .line 9531
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 9535
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9536
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 2

    .line 9008
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9013
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->detachViewAt(I)V

    .line 9014
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->attachView(Landroid/view/View;I)V

    return-void

    .line 9010
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9011
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 0

    .line 9275
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 9276
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 0

    .line 9287
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 9288
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 8373
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 10559
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 10575
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    .line 10578
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 10579
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10580
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10581
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10578
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10583
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz p1, :cond_3

    .line 10584
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/h/a/d;)V
    .locals 2

    .line 10510
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/core/h/a/d;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/core/h/a/d;)V
    .locals 3

    .line 10540
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 10541
    invoke-virtual {p3, v0}, Landroidx/core/h/a/d;->a(I)V

    .line 10542
    invoke-virtual {p3, v2}, Landroidx/core/h/a/d;->i(Z)V

    .line 10544
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 10545
    invoke-virtual {p3, v0}, Landroidx/core/h/a/d;->a(I)V

    .line 10546
    invoke-virtual {p3, v2}, Landroidx/core/h/a/d;->i(Z)V

    .line 10550
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result v0

    .line 10551
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result v1

    .line 10552
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)Z

    move-result v2

    .line 10553
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    .line 10550
    invoke-static {v0, v1, v2, p0}, Landroidx/core/h/a/d$b;->a(IIZI)Landroidx/core/h/a/d$b;

    move-result-object p0

    .line 10554
    invoke-virtual {p3, p0}, Landroidx/core/h/a/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/h/a/d;)V
    .locals 2

    .line 10590
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10592
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10593
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/View;Landroidx/core/h/a/d;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/View;Landroidx/core/h/a/d;)V
    .locals 0

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 10273
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 8437
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;II)V
    .locals 0

    .line 10409
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->isSmoothScrolling()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 10165
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$i;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .line 10474
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 10475
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    :cond_0
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 10700
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10716
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move v2, p2

    move v3, v2

    goto :goto_3

    :cond_1
    const/4 p3, -0x1

    .line 10722
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10723
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    .line 10725
    :goto_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10726
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    .line 10730
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10731
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    .line 10733
    :goto_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10734
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    move v3, p1

    move v2, p3

    goto :goto_3

    :cond_5
    move v3, p1

    move v2, p2

    :goto_3
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return p2

    .line 10741
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10748
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$i;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 8296
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8297
    invoke-static {p0, p1}, Landroidx/core/h/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 8801
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8803
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 10500
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10501
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10502
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10503
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 6

    .line 9380
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 9383
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)Landroid/view/View;

    move-result-object v2

    .line 9384
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v3

    .line 9385
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 9393
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->setIsRecyclable(Z)V

    .line 9394
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9395
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9397
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v4, :cond_2

    .line 9398
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_2
    const/4 v4, 0x1

    .line 9400
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->setIsRecyclable(Z)V

    .line 9401
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9403
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->f()V

    if-lez v0, :cond_4

    .line 9405
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 9052
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->removeView(Landroid/view/View;)V

    .line 9053
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 9063
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9064
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->removeViewAt(I)V

    .line 9065
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 0

    .line 8316
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8317
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 1

    .line 8998
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 8777
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 8789
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8791
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 10038
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$i;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    .line 10058
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 10060
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 10061
    aget p2, p2, v1

    if-eqz p5, :cond_0

    .line 10062
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 10065
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 10067
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_1
    return v1
.end method

.method public requestLayout()V
    .locals 0

    .line 7999
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8000
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 10628
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8070
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mAutoMeasure:Z

    return-void
.end method

.method setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 10799
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10800
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10798
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1

    .line 8192
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 8193
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mItemPrefetchEnabled:Z

    const/4 p1, 0x0

    .line 8194
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mPrefetchMaxCountObserved:I

    .line 8195
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 8196
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->b()V

    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 1

    .line 7909
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidth:I

    .line 7910
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidthMode:I

    .line 7911
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    .line 7912
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidth:I

    .line 7915
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeight:I

    .line 7916
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeightMode:I

    .line 7917
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    .line 7918
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 0

    .line 10420
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    .line 7988
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7989
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 7990
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->chooseSize(III)I

    move-result p2

    .line 7991
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->chooseSize(III)I

    move-result p1

    .line 7992
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->setMeasuredDimension(II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 8

    .line 7936
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 7938
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 7947
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7948
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7949
    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7950
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    .line 7951
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 7953
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    .line 7954
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 7956
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 7957
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7959
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    .line 7960
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7963
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7964
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    .line 9488
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7894
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7895
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    const/4 p1, 0x0

    .line 7896
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidth:I

    .line 7897
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeight:I

    goto :goto_0

    .line 7899
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7900
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 7901
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidth:I

    .line 7902
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeight:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 7904
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mWidthMode:I

    .line 7905
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mHeightMode:I

    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 1

    .line 9459
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    .line 9461
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9462
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method shouldMeasureTwice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 1

    .line 9445
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    .line 9446
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9447
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;I)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 8603
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .line 8617
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 8618
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$s;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8619
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$s;->stop()V

    .line 8621
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 8622
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$s;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 0

    .line 9330
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    .line 9331
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->stopIgnoring()V

    .line 9332
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->resetInternal()V

    const/4 p1, 0x4

    .line 9333
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    return-void
.end method

.method stopSmoothScroller()V
    .locals 0

    .line 10468
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz p0, :cond_0

    .line 10469
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
