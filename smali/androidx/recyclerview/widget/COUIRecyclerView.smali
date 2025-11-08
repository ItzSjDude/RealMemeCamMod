.class public Landroidx/recyclerview/widget/COUIRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "COUIRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIRecyclerView$a;
    }
.end annotation


# instance fields
.field private final A:I

.field private B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

.field private final C:[I

.field private final D:[I

.field a:Z

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/recyclerview/widget/RecyclerView$m;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/coui/appcompat/widget/h;

.field private m:Lcom/coui/appcompat/widget/y;

.field private n:Lcom/coui/appcompat/widget/j;

.field private o:Lcom/coui/appcompat/widget/g;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Landroid/view/VelocityTracker;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroidx/recyclerview/widget/RecyclerView$l;

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    const/4 p3, 0x0

    .line 59
    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->b:I

    .line 60
    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->c:I

    const/4 p2, 0x2

    .line 61
    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->d:I

    const/4 v0, 0x3

    .line 62
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->e:I

    .line 97
    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    const/4 p3, -0x1

    .line 98
    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 111
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    .line 112
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    .line 126
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->a()V

    .line 127
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->b()V

    .line 131
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    .line 133
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->z:I

    .line 134
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->A:I

    .line 135
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->b(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->a(Landroid/content/Context;)V

    .line 144
    new-instance p1, Lcom/coui/appcompat/widget/g;

    invoke-direct {p1}, Lcom/coui/appcompat/widget/g;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->o:Lcom/coui/appcompat/widget/g;

    .line 145
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->o:Lcom/coui/appcompat/widget/g;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/g;->a(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/COUIRecyclerView;I)I
    .locals 0

    .line 47
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    return p1
.end method

.method static synthetic a(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/h;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroidx/recyclerview/widget/COUIRecyclerView$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView$a;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/coui/appcompat/widget/y;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    .line 158
    new-instance v0, Lcom/coui/appcompat/widget/j;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->n:Lcom/coui/appcompat/widget/j;

    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 758
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 764
    :cond_1
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 767
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    :cond_3
    return v1
.end method

.method static synthetic b(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 0

    .line 47
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->k:I

    return p0
.end method

.method private b()V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 479
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->k:I

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 788
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 790
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 791
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 792
    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private c()V
    .locals 1

    .line 677
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->a()V

    .line 678
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->b()V

    .line 679
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    .line 680
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1159
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 1160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    .line 1161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    :cond_1
    return-void
.end method

.method static synthetic c(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->p:Z

    return p0
.end method

.method static synthetic d(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/y;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1132
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 1135
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1145
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->d()V

    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1149
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/z;->b(Landroid/view/View;I)V

    .line 1150
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/z;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic e(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 0

    .line 47
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    return p0
.end method

.method private f()Z
    .locals 1

    .line 1172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic g(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/g;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->o:Lcom/coui/appcompat/widget/g;

    return-object p0
.end method


# virtual methods
.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->b()V

    .line 718
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 14

    .line 524
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 525
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    .line 526
    invoke-interface {v0}, Lcom/coui/appcompat/widget/h;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 527
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v2

    .line 528
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v13

    .line 529
    invoke-interface {v0}, Lcom/coui/appcompat/widget/h;->b()I

    move-result v3

    .line 530
    invoke-interface {v0}, Lcom/coui/appcompat/widget/h;->c()I

    move-result v4

    if-ne v2, v3, :cond_1

    if-eq v13, v4, :cond_2

    :cond_1
    sub-int v5, v3, v2

    sub-int v6, v4, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 532
    iget v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->k:I

    const/4 v12, 0x0

    move-object v3, p0

    move v4, v5

    move v5, v6

    move v6, v2

    move v7, v13

    move v10, v11

    invoke-virtual/range {v3 .. v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 534
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->onScrollChanged(IIII)V

    .line 537
    :cond_2
    invoke-interface {v0}, Lcom/coui/appcompat/widget/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 543
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public fling(II)Z
    .locals 7

    .line 608
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 609
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 613
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 617
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v0

    .line 618
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 620
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->z:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 623
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->z:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    .line 631
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/y;->a(F)V

    int-to-float v3, p1

    int-to-float v4, p2

    .line 633
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    .line 636
    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 639
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 641
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->y:Landroidx/recyclerview/widget/RecyclerView$l;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$l;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    move v1, v5

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    .line 653
    :cond_b
    invoke-virtual {p0, v1, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    .line 655
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->A:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 656
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->A:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 657
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->a(II)V

    return v5

    :cond_c
    return v1
.end method

.method public getHorizontalItemAlign()I
    .locals 0

    .line 194
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->o:Lcom/coui/appcompat/widget/g;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/g;->a()I

    move-result p0

    return p0
.end method

.method public getIsUseNativeOverScroll()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->p:Z

    return p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    .line 700
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->A:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    .line 690
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->z:I

    return p0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$l;
    .locals 0

    .line 295
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->y:Landroidx/recyclerview/widget/RecyclerView$l;

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    .line 305
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    return p0
.end method

.method public getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$a;
    .locals 0

    .line 1178
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    return-object p0
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .line 498
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 801
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 810
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 811
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->e()V

    return v2

    .line 815
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_2

    return v1

    .line 819
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v0

    .line 820
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v3

    .line 822
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 823
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    .line 825
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v6, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto/16 :goto_2

    .line 894
    :cond_4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 859
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 860
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    .line 861
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    goto/16 :goto_2

    .line 905
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->e()V

    goto/16 :goto_2

    .line 865
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_8

    .line 867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 872
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 873
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 874
    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-eq v4, v2, :cond_11

    .line 875
    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    sub-int v4, v5, v4

    .line 876
    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_9

    .line 878
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v0, v4, :cond_9

    .line 879
    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    if-eqz v3, :cond_a

    .line 882
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v3, v4, :cond_a

    .line 883
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    move v0, v2

    :cond_a
    if-eqz v0, :cond_11

    .line 887
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto :goto_2

    .line 899
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 900
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    goto :goto_2

    .line 832
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->h:Z

    if-eqz v4, :cond_d

    .line 833
    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->h:Z

    .line 835
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    .line 839
    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-ne p1, v6, :cond_e

    .line 840
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 841
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 842
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    .line 846
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v0, :cond_f

    move p1, v2

    goto :goto_1

    :cond_f
    move p1, v1

    :goto_1
    if-eqz v3, :cond_10

    or-int/lit8 p1, p1, 0x2

    .line 855
    :cond_10
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    .line 909
    :cond_11
    :goto_2
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-ne p0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 485
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_1

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/COUIRecyclerView;->onScrollChanged(IIII)V

    .line 490
    invoke-static {p0, p1}, Lcom/coui/appcompat/a/z;->b(Landroid/view/View;I)V

    .line 491
    invoke-static {p0, p2}, Lcom/coui/appcompat/a/z;->a(Landroid/view/View;I)V

    .line 492
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidateParentIfNeeded()V

    .line 493
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 924
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 927
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 928
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->e()V

    return v2

    .line 932
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_2

    return v1

    .line 936
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v0

    .line 937
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v3

    .line 939
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 940
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    .line 946
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz v4, :cond_4

    .line 947
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 950
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v5, :cond_5

    .line 955
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    aput v1, v7, v2

    aput v1, v7, v1

    .line 957
    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_1f

    const/4 v8, 0x2

    if-eq v5, v2, :cond_16

    if-eq v5, v8, :cond_9

    const/4 v0, 0x3

    if-eq v5, v0, :cond_8

    const/4 v0, 0x5

    if-eq v5, v0, :cond_7

    const/4 v0, 0x6

    if-eq v5, v0, :cond_6

    goto/16 :goto_a

    .line 1061
    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 984
    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 985
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    .line 986
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    goto/16 :goto_a

    .line 1110
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->e()V

    goto/16 :goto_a

    .line 991
    :cond_9
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_a

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 998
    :cond_a
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 999
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 1000
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    sub-int/2addr v5, v6

    .line 1001
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    sub-int v13, v7, p1

    .line 1003
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v7, v1

    .line 1004
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v7, v2

    .line 1005
    iget-object v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    iget-object v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1006
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v7, v7, v1

    sub-int/2addr v5, v7

    .line 1007
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v7, v7, v2

    sub-int/2addr v13, v7

    .line 1008
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1010
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 1011
    aget v8, v7, v2

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    .line 1014
    :cond_b
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-eq v7, v2, :cond_10

    if-eqz v0, :cond_d

    .line 1016
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v7, v8, :cond_d

    if-lez v5, :cond_c

    sub-int/2addr v5, v8

    goto :goto_0

    :cond_c
    add-int/2addr v5, v8

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_d
    move v7, v1

    :goto_1
    if-eqz v3, :cond_f

    .line 1024
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v8, v9, :cond_f

    if-lez v13, :cond_e

    sub-int/2addr v13, v9

    goto :goto_2

    :cond_e
    add-int/2addr v13, v9

    :goto_2
    move v7, v2

    :cond_f
    if-eqz v7, :cond_10

    .line 1033
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1037
    :cond_10
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-ne v7, v2, :cond_24

    .line 1038
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    aget v8, v7, v1

    sub-int/2addr v6, v8

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    .line 1039
    aget v6, v7, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    .line 1042
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz p1, :cond_11

    .line 1043
    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    :cond_11
    if-eqz v0, :cond_12

    move p1, v5

    goto :goto_3

    :cond_12
    move p1, v1

    :goto_3
    if-eqz v3, :cond_13

    move v0, v13

    goto :goto_4

    :cond_13
    move v0, v1

    .line 1047
    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1051
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1053
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-eqz p1, :cond_24

    if-nez v5, :cond_15

    if-eqz v13, :cond_24

    .line 1054
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_a

    .line 1073
    :cond_16
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-nez p1, :cond_17

    .line 1074
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move p1, v2

    goto :goto_5

    :cond_17
    move p1, v1

    .line 1079
    :goto_5
    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->A:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v5, 0x0

    if-eqz v0, :cond_18

    .line 1080
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 1081
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_6

    :cond_18
    move v0, v5

    :goto_6
    if-eqz v3, :cond_19

    .line 1082
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 1083
    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_7

    :cond_19
    move v3, v5

    .line 1087
    :goto_7
    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    if-ne v6, v8, :cond_1b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    iget-boolean v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz v6, :cond_1b

    .line 1088
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/coui/appcompat/widget/y;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x133

    .line 1090
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->performHapticFeedback(I)Z

    .line 1091
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/y;->a(F)V

    .line 1092
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->postInvalidateOnAnimation()V

    .line 1093
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-eqz v0, :cond_1e

    .line 1094
    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    .line 1095
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_8

    :cond_1b
    cmpl-float v6, v0, v5

    if-nez v6, :cond_1c

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1d

    :cond_1c
    float-to-int v0, v0

    float-to-int v3, v3

    .line 1098
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1099
    :cond_1d
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1104
    :cond_1e
    :goto_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->d()V

    goto :goto_b

    .line 961
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->r:I

    .line 962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->t:I

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->u:I

    .line 966
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    invoke-interface {p1}, Lcom/coui/appcompat/widget/h;->a()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/y;->a()Z

    move-result p1

    if-nez p1, :cond_21

    :cond_20
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz p1, :cond_21

    .line 967
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    invoke-interface {p1}, Lcom/coui/appcompat/widget/h;->abortAnimation()V

    .line 968
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/y;->abortAnimation()V

    :cond_21
    if-eqz v0, :cond_22

    move p1, v2

    goto :goto_9

    :cond_22
    move p1, v1

    :goto_9
    if-eqz v3, :cond_23

    or-int/lit8 p1, p1, 0x2

    .line 979
    :cond_23
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    :cond_24
    :goto_a
    move p1, v1

    :goto_b
    if-nez p1, :cond_25

    .line 1122
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-nez p1, :cond_25

    .line 1123
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1126
    :cond_25
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_26
    :goto_c
    return v1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    const/4 p5, 0x0

    if-gez p3, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-lez p3, :cond_2

    if-gez p1, :cond_2

    :cond_1
    move p1, p5

    :cond_2
    if-gez p4, :cond_3

    if-gtz p2, :cond_4

    :cond_3
    if-lez p4, :cond_5

    if-gez p2, :cond_5

    :cond_4
    move p2, p5

    .line 519
    :cond_5
    invoke-virtual {p0, p1, p2, p5, p5}, Landroidx/recyclerview/widget/COUIRecyclerView;->onOverScrolled(IIZZ)V

    return p5
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 729
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 914
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 916
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 917
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 327
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_0

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 328
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v0

    .line 336
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p3

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->consumePendingUpdateOperations()V

    .line 359
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    if-nez v8, :cond_0

    if-eqz v9, :cond_5

    .line 373
    :cond_0
    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_1

    if-gtz v9, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz v9, :cond_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_3

    if-gtz v8, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_4

    if-gez v8, :cond_4

    goto :goto_0

    .line 376
    :cond_4
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 377
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 378
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v10, v8, v9, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollStep(II[I)V

    .line 379
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    .line 380
    iget-object v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v1, v1, v12

    sub-int v2, v8, v0

    sub-int v3, v9, v1

    move v7, v0

    move v6, v1

    move v14, v2

    move v15, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v6, v13

    move v7, v6

    move v14, v7

    move v15, v14

    .line 390
    :goto_1
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    .line 394
    :cond_6
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 395
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 396
    iget-object v5, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    const/16 v16, 0x0

    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move v3, v14

    move-object/from16 v17, v4

    move v4, v15

    move/from16 v18, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 398
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    sub-int/2addr v14, v0

    .line 399
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v12

    sub-int/2addr v15, v0

    .line 402
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    iget-object v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->v:I

    .line 403
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    aget v2, v1, v12

    sub-int/2addr v0, v2

    iput v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->w:I

    if-eqz v11, :cond_7

    .line 405
    aget v0, v1, v13

    int-to-float v0, v0

    aget v1, v1, v12

    int-to-float v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 407
    :cond_7
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->D:[I

    aget v1, v0, v13

    iget-object v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->C:[I

    aget v3, v2, v13

    add-int/2addr v1, v3

    aput v1, v0, v13

    .line 408
    aget v1, v0, v12

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    if-eqz v11, :cond_18

    .line 421
    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    if-eqz v0, :cond_18

    if-nez v15, :cond_8

    if-eqz v14, :cond_9

    .line 423
    :cond_8
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    .line 426
    :cond_9
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-ge v0, v2, :cond_a

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-ge v0, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v0, v2, :cond_a

    .line 427
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    :cond_a
    if-nez v15, :cond_b

    move/from16 v11, v18

    if-nez v11, :cond_c

    .line 430
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v0, v2, :cond_c

    .line 431
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    goto :goto_2

    :cond_b
    move/from16 v11, v18

    .line 434
    :cond_c
    :goto_2
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_d

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-ge v0, v2, :cond_d

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-ge v0, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v0, v2, :cond_d

    .line 435
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    :cond_d
    if-nez v14, :cond_e

    move/from16 v7, v16

    if-nez v7, :cond_f

    .line 438
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    if-le v0, v2, :cond_f

    .line 439
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->i:I

    goto :goto_3

    :cond_e
    move/from16 v7, v16

    .line 445
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v3

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v4

    .line 448
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    invoke-static {v15, v4, v0}, Lcom/coui/appcompat/a/n;->a(III)I

    move-result v0

    .line 449
    iget v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    invoke-static {v14, v3, v1}, Lcom/coui/appcompat/a/n;->a(III)I

    move-result v1

    if-gez v4, :cond_10

    if-gtz v9, :cond_11

    :cond_10
    if-lez v4, :cond_12

    if-gez v9, :cond_12

    .line 452
    :cond_11
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    invoke-static {v9, v3, v0}, Lcom/coui/appcompat/a/n;->a(III)I

    move-result v0

    :cond_12
    move v2, v0

    if-gez v3, :cond_13

    if-gtz v8, :cond_14

    :cond_13
    if-lez v3, :cond_15

    if-gez v8, :cond_15

    .line 456
    :cond_14
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    invoke-static {v8, v3, v0}, Lcom/coui/appcompat/a/n;->a(III)I

    move-result v0

    move v1, v0

    :cond_15
    if-nez v2, :cond_17

    if-eqz v1, :cond_16

    goto :goto_4

    :cond_16
    move v14, v7

    goto :goto_5

    :cond_17
    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 460
    iget v8, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->j:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v14, v7

    move v7, v8

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_5

    :cond_18
    move/from16 v14, v16

    move/from16 v11, v18

    :goto_5
    if-nez v14, :cond_19

    if-eqz v11, :cond_1a

    .line 467
    :cond_19
    invoke-virtual {v10, v14, v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrolled(II)V

    .line 469
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    :cond_1b
    if-nez v14, :cond_1d

    if-eqz v11, :cond_1c

    goto :goto_6

    :cond_1c
    move v12, v13

    :cond_1d
    :goto_6
    return v12
.end method

.method public setHorizontalFlingFriction(F)V
    .locals 0

    .line 225
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->n:Lcom/coui/appcompat/widget/j;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/j;->a(F)V

    return-void
.end method

.method public setHorizontalItemAlign(I)V
    .locals 1

    .line 175
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    .line 177
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->o:Lcom/coui/appcompat/widget/g;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/g;->a(I)V

    :cond_0
    return-void
.end method

.method public setIsUseNativeOverScroll(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->p:Z

    .line 204
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->p:Z

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->n:Lcom/coui/appcompat/widget/j;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->l:Lcom/coui/appcompat/widget/h;

    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    const p1, 0x404ccccd    # 3.2f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/y;->d(F)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->m:Lcom/coui/appcompat/widget/y;

    const p1, 0x4009999a    # 2.15f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/y;->d(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$l;)V
    .locals 0

    .line 285
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->y:Landroidx/recyclerview/widget/RecyclerView$l;

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->a:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 309
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    if-ne p1, v0, :cond_0

    return-void

    .line 316
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->q:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 318
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 260
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->x:I

    :goto_1
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 576
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_0

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 577
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    .line 587
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 591
    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->B:Landroidx/recyclerview/widget/COUIRecyclerView$a;

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_5
    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 670
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    return-void
.end method
