.class public Lcom/oplus/camera/ui/modepanel/f;
.super Ljava/lang/Object;
.source "ItemDragHelper.java"


# instance fields
.field private A:Lcom/oplus/camera/screen/g;

.field private final B:Ljava/lang/Runnable;

.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/ui/modepanel/e;

.field private c:I

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Lcom/oplus/camera/ui/CameraUIListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Z

.field private o:Landroid/view/View;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:I

.field private x:Landroid/graphics/Rect;

.field private y:J

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/screen/g;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    .line 80
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 81
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    const v2, 0x3e99999a    # 0.3f

    .line 82
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->j:F

    const v2, 0x3dcccccd    # 0.1f

    .line 83
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->k:F

    const/4 v2, 0x0

    .line 84
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    .line 85
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    iput-boolean v2, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    .line 88
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    .line 89
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->q:I

    .line 90
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    .line 91
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->s:I

    .line 92
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/16 v2, 0x5a

    .line 93
    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    .line 95
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->x:Landroid/graphics/Rect;

    .line 97
    iput-wide v2, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    .line 100
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    .line 1011
    new-instance v0, Lcom/oplus/camera/ui/modepanel/f$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/modepanel/f$1;-><init>(Lcom/oplus/camera/ui/modepanel/f;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->B:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    .line 104
    new-instance v0, Lcom/oplus/camera/ui/modepanel/e;

    invoke-direct {v0, p1, p2}, Lcom/oplus/camera/ui/modepanel/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/screen/g;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    .line 105
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    .line 106
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    const/4 p0, -0x1

    const-string v0, "ItemDragHelper"

    if-nez p1, :cond_0

    const-string p1, "getPositionByChildView, but itemView is null."

    .line 1290
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 1296
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$j;->g()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v1, "getPositionByChildView error."

    .line 1298
    invoke-static {v0, v1, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;FI)I
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_3

    .line 759
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/f;->d()Landroid/view/View;

    move-result-object v0

    .line 760
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/f;->e()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 763
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 764
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v1, v0, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 765
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 767
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 771
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regulateHeadlineIndex, middle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchRawX: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", videoRect: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", photoRect: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", itemPos: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemDragHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 776
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/modepanel/a;

    if-eqz p0, :cond_2

    .line 777
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p1, 0x14

    .line 778
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :cond_3
    :goto_1
    return p3
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFII)I
    .locals 4

    .line 1119
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/view/View;)I

    move-result v0

    .line 1120
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1123
    iget-object p5, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, p5, :cond_3

    if-nez p2, :cond_3

    .line 1124
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result p1

    .line 1125
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p2

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    if-nez v1, :cond_2

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p5

    add-float/2addr p2, p5

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_2

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p5

    add-float/2addr p2, p5

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_2

    .line 1134
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p5

    add-float/2addr p2, p5

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_2

    .line 1135
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    return p0

    :cond_2
    if-eqz v1, :cond_3

    .line 1137
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p5

    add-float/2addr p2, p5

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_3

    .line 1138
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p5

    add-float/2addr p2, p5

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_3

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p2, p1

    cmpl-float p1, p4, p2

    if-ltz p1, :cond_3

    .line 1140
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    return p0

    :cond_3
    return v3

    .line 1147
    :cond_4
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    if-ne v0, p0, :cond_6

    if-eq p5, p6, :cond_5

    goto :goto_1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IFF)I
    .locals 2

    .line 977
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/a;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 982
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 983
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v1, p1, :cond_1

    .line 984
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_5

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    .line 989
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->k:F

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    cmpg-float p0, p1, p5

    if-gez p0, :cond_5

    goto :goto_0

    .line 994
    :cond_2
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v1, p0, :cond_3

    .line 995
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p5

    if-gez p0, :cond_5

    goto :goto_0

    .line 1000
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_5

    :goto_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p3, 0x0

    :cond_5
    :goto_2
    return p3
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;
    .locals 6

    .line 1700
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    .line 1707
    new-array v2, v2, [I

    .line 1708
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1710
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    const/4 v4, 0x4

    if-ne v4, v0, :cond_0

    goto :goto_1

    .line 1729
    :cond_0
    aget v0, v2, v3

    .line 1730
    aget v1, v2, v1

    .line 1731
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v2

    add-int/2addr v2, v1

    .line 1732
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v3

    :goto_0
    add-int/2addr v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v0, 0x5a

    .line 1712
    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v0, v4, :cond_2

    .line 1713
    aget v1, v2, v1

    .line 1714
    aget v0, v2, v3

    .line 1715
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v2

    sub-int v2, v1, v2

    .line 1716
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v3

    add-int/2addr v3, v0

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_2
    const/16 v0, 0x10e

    if-ne v0, v4, :cond_3

    .line 1718
    aget v1, v2, v1

    .line 1719
    aget v0, v2, v3

    .line 1720
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v2

    sub-int v2, v0, v2

    .line 1721
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v3

    add-int/2addr v3, v1

    move v5, v3

    move v3, v0

    move v0, v2

    move v2, v5

    goto :goto_2

    .line 1723
    :cond_3
    aget v0, v2, v3

    .line 1724
    aget v1, v2, v1

    .line 1725
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v2

    add-int/2addr v2, v1

    .line 1726
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v3

    goto :goto_0

    :cond_4
    move v0, v1

    move v2, v0

    move v3, v2

    .line 1736
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 1737
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1740
    :cond_5
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private a(ZLandroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 p3, 0x6

    const/4 p4, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 1794
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v1, p1, :cond_0

    .line 1795
    iget p0, p5, Landroid/graphics/Rect;->bottom:I

    .line 1796
    new-instance p1, Landroid/graphics/Rect;

    iget p3, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int p2, p0, p2

    iget p4, p5, Landroid/graphics/Rect;->right:I

    invoke-direct {p1, p3, p2, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    if-ne v3, p1, :cond_7

    .line 1798
    new-array p1, v0, [I

    .line 1799
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 1801
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result p2

    if-ne p4, p2, :cond_1

    .line 1802
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p4

    sub-int/2addr p3, p4

    aget p4, p1, v2

    .line 1803
    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p5

    add-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1804
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result p0

    if-ne p3, p0, :cond_2

    .line 1805
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p4

    add-int/2addr p3, p4

    aget p4, p1, v2

    .line 1806
    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1808
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p3, p4

    aget p4, p1, v2

    .line 1809
    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p5

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1813
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v1, p1, :cond_4

    .line 1814
    iget p0, p5, Landroid/graphics/Rect;->top:I

    .line 1815
    new-instance p1, Landroid/graphics/Rect;

    iget p3, p5, Landroid/graphics/Rect;->left:I

    iget p4, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    invoke-direct {p1, p3, p0, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_4
    if-ne v3, p1, :cond_7

    .line 1817
    new-array p1, v0, [I

    .line 1818
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 1820
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result p2

    if-ne p4, p2, :cond_5

    .line 1821
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p4

    sub-int/2addr p3, p4

    aget p4, p1, v2

    .line 1822
    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p5

    add-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1823
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result p0

    if-ne p3, p0, :cond_6

    .line 1824
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p4

    add-int/2addr p3, p4

    aget p4, p1, v2

    .line 1825
    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1827
    :cond_6
    new-instance p0, Landroid/graphics/Rect;

    aget p2, p1, v2

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr p2, p3

    aget p3, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p3, p4

    aget p4, p1, v2

    .line 1828
    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p4, p5

    aget p1, p1, v3

    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p5

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_7
    return-object p7
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 6

    .line 861
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 867
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ge v0, p0, :cond_3

    .line 870
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 871
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 872
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 874
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_2

    .line 875
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v4, p3, v5

    if-gtz v4, :cond_2

    .line 876
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v3, p2, v4

    if-gez v3, :cond_2

    .line 877
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move-object v1, v2

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDrag, mLastItemPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemDragHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    const v1, 0x7f090396

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/k;

    .line 362
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$nn3_UedtgcXhr12iuvuOG8tLijA;

    invoke-direct {v2, p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$nn3_UedtgcXhr12iuvuOG8tLijA;-><init>(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    new-instance v3, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$dniMN-FK4i6uMMThUVP9jwrTQTc;

    invoke-direct {v3, p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$dniMN-FK4i6uMMThUVP9jwrTQTc;-><init>(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/screen/b/a;->d(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    :cond_0
    const/4 p1, 0x0

    .line 368
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    .line 369
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    const/4 p1, -0x1

    .line 370
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    .line 371
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V
    .locals 15

    move-object v6, p0

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, v6, Lcom/oplus/camera/ui/modepanel/f;->l:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v10, "ItemDragHelper"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 385
    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 386
    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v12

    .line 387
    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    move-object v0, p0

    move v4, v12

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iput v11, v6, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 391
    iget-object v9, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v9, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 392
    iput v12, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 395
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v11

    .line 396
    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 397
    iget v2, v6, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v3, v6, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 398
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v3

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    .line 399
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v2, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    move v12, v8

    move-object v3, v9

    :goto_0
    move v2, v0

    move v5, v12

    goto/16 :goto_3

    :cond_1
    move-object/from16 v0, p1

    .line 401
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    iget v0, v6, Lcom/oplus/camera/ui/modepanel/f;->l:I

    if-gt v1, v0, :cond_5

    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_5

    .line 403
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v13

    .line 404
    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    move-object v0, p0

    move v4, v13

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adsorpt, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fItemToPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 409
    iput v12, v6, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 410
    iget-object v9, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v9, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 411
    iput v13, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 414
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 416
    sget v2, Lcom/oplus/camera/ui/modepanel/p;->a:I

    rem-int v2, v1, v2

    if-nez v2, :cond_3

    .line 417
    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    sget v3, Lcom/oplus/camera/ui/modepanel/p;->a:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 420
    iget v2, v6, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v3, v6, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 421
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v3, v3, v12

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v5, v5, v12

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v12

    add-int/2addr v5, v12

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 422
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v12, v1

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    goto :goto_1

    .line 424
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v2, v2, v12

    iget-object v3, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v3

    iget-object v4, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v4, v4, v12

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v5

    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v12

    add-int/2addr v5, v12

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_2

    .line 428
    :cond_3
    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    iget v3, v6, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v4, v6, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 430
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    .line 431
    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v12, v14

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    sget v4, Lcom/oplus/camera/ui/modepanel/p;->a:I

    rem-int v4, v1, v4

    aget v2, v2, v4

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 433
    iget-object v2, v6, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    sget v4, Lcom/oplus/camera/ui/modepanel/p;->a:I

    rem-int/2addr v1, v4

    aget v1, v2, v1

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    move v2, v0

    :goto_2
    move v5, v13

    goto :goto_3

    :cond_4
    move v2, v0

    move v5, v8

    move-object v3, v9

    goto :goto_3

    :cond_5
    move v5, v8

    move-object v3, v9

    move v2, v12

    :goto_3
    const-string v0, ", targetRect: "

    if-nez v2, :cond_8

    .line 439
    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 441
    iget v3, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    if-eq v3, v8, :cond_7

    .line 444
    iget-object v4, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v4, :cond_6

    .line 445
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 446
    iget v4, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    sub-int v3, v4, v3

    .line 447
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/modepanel/f;->b(I)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_4

    .line 449
    :cond_6
    iget-object v4, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v4, v3}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object v4

    .line 452
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adsorpt, mLastItemPos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mLastHost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    move-object v3, v4

    goto :goto_5

    .line 455
    :cond_7
    iget-object v3, v6, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    iget v4, v6, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v8, v6, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v3, v4, v8}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v3

    move-object v9, v1

    .line 459
    :cond_8
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adsorpt, adsorpt: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mLastItemPos: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", addTargetView: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v6, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_9

    goto :goto_6

    :cond_9
    move v7, v11

    .line 467
    :goto_6
    iget-object v0, v6, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0, v3, v7}, Lcom/oplus/camera/ui/modepanel/e;->a(Landroid/graphics/Rect;I)V

    .line 470
    iget-object v7, v6, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$cRNhDfJfRzUlvcwVuliDw_CQ80M;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v9

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$cRNhDfJfRzUlvcwVuliDw_CQ80M;-><init>(Lcom/oplus/camera/ui/modepanel/f;ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v7, v8, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic a(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->e(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    return-void
.end method

.method private static synthetic a(Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1399
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1400
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 1401
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 954
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    .line 956
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 957
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/oplus/camera/ui/modepanel/a;)V
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/e;->b()V

    .line 610
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/a;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_3

    .line 231
    :cond_0
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    .line 233
    :goto_0
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    if-ge v1, v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    .line 237
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v2, v3, :cond_1

    .line 238
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, v3, v4}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aput v0, v2, v1

    goto :goto_1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, v3, v4}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, v2, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 246
    :goto_2
    sget v1, Lcom/oplus/camera/ui/modepanel/p;->a:I

    if-ge v0, v1, :cond_6

    .line 247
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v2, v1, v0

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    add-int/lit8 v2, v0, -0x1

    .line 252
    aget v2, v1, v2

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v0, -0x1

    .line 254
    aget v2, v1, v2

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private synthetic a(ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V
    .locals 3

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsorpt, finalAdsorpt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemDragHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    const v1, 0x7f0600a2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 594
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p1

    .line 595
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    .line 596
    iget-object p3, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    .line 597
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemChanged(I)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    .line 600
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    const/4 p1, 0x1

    .line 601
    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/modepanel/k;->e(Z)V

    .line 602
    invoke-virtual {v0, p4}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemChanged(I)V

    .line 605
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_1

    .line 606
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->b()V

    goto :goto_1

    .line 608
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$mYHulACzkUqhq_pXcWGrp9EiGK0;

    invoke-direct {p2, p0, v0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$mYHulACzkUqhq_pXcWGrp9EiGK0;-><init>(Lcom/oplus/camera/ui/modepanel/f;Lcom/oplus/camera/ui/modepanel/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 614
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private a(FF)Z
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 629
    iget v0, v7, Lcom/oplus/camera/ui/modepanel/f;->l:I

    invoke-static {}, Lcom/oplus/camera/k;->a()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-gtz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    .line 631
    :goto_0
    iget-object v1, v7, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, v7, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v8, v9}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;ZFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    move-object v12, v0

    move v13, v11

    goto :goto_1

    .line 638
    :cond_1
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    move-object v12, v0

    move v13, v10

    .line 641
    :goto_1
    invoke-direct {v7, v12, v8, v9}, Lcom/oplus/camera/ui/modepanel/f;->d(Landroidx/recyclerview/widget/RecyclerView;FF)[F

    move-result-object v0

    .line 642
    aget v14, v0, v11

    .line 643
    aget v15, v0, v10

    .line 646
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v12, v0, :cond_2

    .line 647
    invoke-direct {v7, v0, v14, v15}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object v0

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 649
    :cond_2
    iget v0, v7, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v10, v0, :cond_3

    .line 650
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v7, v0, v14, v15}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 652
    :cond_3
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v7, v0, v14, v15}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 656
    :goto_3
    iget v5, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move v3, v14

    move v4, v15

    move-object v10, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFII)I

    move-result v3

    .line 657
    iget v0, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    invoke-direct {v7, v0, v13}, Lcom/oplus/camera/ui/modepanel/f;->b(II)Z

    move-result v0

    .line 658
    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    invoke-direct {v7, v1, v13}, Lcom/oplus/camera/ui/modepanel/f;->a(II)Z

    move-result v1

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveIfNecessary, isSelect: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isChange: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", itemPos: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastRecyclerPos: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", recyclerPos: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isAnimating: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", touchRawX: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    const-string v4, ", touchRawY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", itemView: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ItemDragHelper"

    .line 660
    invoke-static {v4, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v2, v3, :cond_4

    const-string v0, "moveIfNecessary, find no position."

    .line 665
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16

    :cond_4
    const/16 v16, 0x0

    .line 670
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v0, "moveIfNecessary, recycle host is animating."

    .line 671
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_5
    if-eqz v0, :cond_6

    .line 679
    iput v13, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 680
    iput-object v12, v7, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    goto/16 :goto_6

    :cond_6
    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v18, v6

    move v6, v2

    move-object v2, v10

    move-object/from16 v20, v4

    move-object/from16 v19, v17

    move v4, v14

    move-object/from16 v21, v5

    move v5, v15

    .line 682
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IFF)I

    move-result v0

    if-eq v6, v0, :cond_b

    .line 685
    iget-object v1, v7, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    const v2, 0x7f090396

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/oplus/camera/ui/modepanel/k;

    .line 687
    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_7

    .line 688
    invoke-direct {v7, v12, v9, v0}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;FI)I

    move-result v0

    :goto_4
    move v9, v0

    goto :goto_5

    :cond_7
    const/4 v2, 0x4

    if-ne v2, v1, :cond_8

    .line 690
    invoke-direct {v7, v12, v9, v0}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroidx/recyclerview/widget/RecyclerView;FI)I

    move-result v0

    goto :goto_4

    .line 692
    :cond_8
    invoke-direct {v7, v12, v8, v0}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;FI)I

    move-result v0

    goto :goto_4

    .line 695
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveIfNecessary, itemPos: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", getId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v5}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v20

    .line 695
    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, v7, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    move-object/from16 v0, p0

    move-object v2, v12

    move-object v11, v4

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recyclerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_9
    const/4 v1, 0x0

    .line 707
    iput v13, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 708
    iput-object v12, v7, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 709
    iput v9, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 711
    iget-object v2, v7, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v12, v2, :cond_a

    if-nez v9, :cond_a

    .line 712
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_a
    move v11, v0

    goto :goto_8

    :cond_b
    move-object/from16 v8, v20

    move v9, v0

    goto :goto_7

    :cond_c
    :goto_6
    move-object v8, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v17

    move v6, v2

    move v9, v3

    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-ne v9, v6, :cond_d

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveIfNecessary, find none, itemPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 723
    :cond_d
    iget v3, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v10

    move v4, v9

    move v5, v14

    move-object/from16 v14, v18

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIFF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 726
    iget v0, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-direct {v7, v12, v0, v9}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 732
    :cond_e
    iget-object v0, v7, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v12, v0, :cond_f

    .line 733
    iget v0, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    iput v0, v7, Lcom/oplus/camera/ui/modepanel/f;->i:I

    .line 736
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveIfNecessary, mLastRecyclerPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastItemPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreHeadlineItemPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oplus/camera/ui/modepanel/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-direct {v7, v12, v10, v9}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    .line 740
    iput v9, v7, Lcom/oplus/camera/ui/modepanel/f;->h:I

    const/4 v0, 0x1

    return v0

    :cond_10
    return v11
.end method

.method private a(II)Z
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Landroid/view/View;Lcom/oplus/camera/ui/modepanel/k;)Z
    .locals 1

    .line 1323
    invoke-static {p2}, Lcom/oplus/camera/ui/modepanel/c;->b(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 1326
    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    .line 1327
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 9

    .line 1030
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1034
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1039
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return v1

    .line 1050
    :cond_3
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v5, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v4, v3, v5}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 1052
    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_e

    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_4

    goto/16 :goto_5

    .line 1061
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1062
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/c;->b(Landroid/view/View;II)I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v1

    .line 1065
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1066
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/c;->a(Landroid/view/View;II)I

    move-result p2

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    const/4 p3, 0x1

    if-eqz v3, :cond_9

    .line 1070
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1071
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    if-nez v0, :cond_7

    return v1

    .line 1077
    :cond_7
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/a;->getItemCount()I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    if-lez v3, :cond_8

    add-int/lit8 v6, v4, -0x1

    .line 1079
    invoke-virtual {v0, v6}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/modepanel/e;->a()I

    move-result v7

    if-ne v6, v7, :cond_8

    sub-int/2addr v2, p3

    .line 1080
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1081
    iget v6, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v7, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v2, v6, v7}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 1082
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1084
    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    add-int/lit8 v4, v4, -0x2

    if-ne v2, v4, :cond_8

    return v1

    :cond_8
    if-gez v3, :cond_9

    .line 1089
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/e;->a()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 1090
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    iget v2, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, v2, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 1092
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1094
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    cmpl-float p0, p0, v2

    if-lez p0, :cond_9

    if-nez v0, :cond_9

    return v1

    :cond_9
    if-nez v3, :cond_a

    if-eqz p2, :cond_b

    .line 1101
    :cond_a
    invoke-virtual {p1, v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_b
    if-nez v3, :cond_d

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    move p3, v1

    :cond_d
    :goto_4
    return p3

    .line 1053
    :cond_e
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scrollIfNecessary, mLastTouchRawY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rect: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemDragHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    if-eq p4, v1, :cond_7

    if-ne p3, p4, :cond_0

    goto/16 :goto_1

    .line 1187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 1189
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    sub-long v1, p3, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    return v0

    .line 1193
    :cond_1
    iput-wide p3, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    .line 1194
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->g()Landroid/graphics/Rect;

    move-result-object p1

    .line 1195
    iget p3, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p4, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x4

    .line 1201
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 p4, 0x1

    if-ne p3, p0, :cond_4

    .line 1202
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-gt p0, p3, :cond_3

    .line 1203
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p0, p1, :cond_5

    :cond_3
    return p4

    .line 1206
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-gt p0, p3, :cond_6

    .line 1207
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p0, p1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return p4

    :cond_7
    :goto_1
    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIF)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    if-eq p4, v1, :cond_7

    if-ne p3, p4, :cond_0

    goto/16 :goto_1

    .line 1222
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 1226
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1227
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->g()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x4

    .line 1233
    iget v4, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-eq v3, v4, :cond_4

    .line 1234
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/modepanel/e;->h()F

    move-result v4

    add-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr v3, p1

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->h()F

    move-result p1

    add-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    .line 1236
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    int-to-float v4, p1

    cmpg-float v4, v3, v4

    if-lez v4, :cond_3

    invoke-static {}, Lcom/oplus/camera/k;->n()I

    move-result v4

    add-int/2addr p1, v4

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_4

    :cond_3
    return v0

    .line 1242
    :cond_4
    iput-wide v1, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    const/4 p1, 0x1

    if-le p3, p4, :cond_6

    .line 1245
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->j:F

    mul-float/2addr p2, p0

    sub-float/2addr p3, p2

    cmpg-float p0, p5, p3

    if-gez p0, :cond_5

    goto :goto_0

    :cond_5
    move p1, v0

    goto :goto_0

    .line 1248
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->j:F

    mul-float/2addr p2, p0

    add-float/2addr p3, p2

    cmpl-float p0, p5, p3

    if-lez p0, :cond_5

    :goto_0
    return p1

    :cond_7
    :goto_1
    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIFF)Z
    .locals 8

    .line 1155
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1161
    iget-wide v4, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    sub-long v4, v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isItemNeedChange, time interval does not meet the requirements, no transposition is allowed, interval: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    sub-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemDragHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_2

    .line 1169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x1

    .line 1171
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 1172
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIF)Z

    move-result p0

    return p0

    .line 1174
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIF)Z

    move-result p0

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z
    .locals 4

    .line 1335
    invoke-static {p5}, Lcom/oplus/camera/ui/modepanel/c;->a(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ItemDragHelper"

    if-nez v0, :cond_0

    .line 1336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeRecycler, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " don\'t support change host."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-gez p3, :cond_1

    .line 1342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeRecycler, fItemFromPos: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1347
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    .line 1348
    invoke-virtual {v0, p4, p5}, Lcom/oplus/camera/ui/modepanel/a;->a(ILcom/oplus/camera/ui/modepanel/k;)V

    .line 1349
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/a;->c()Ljava/util/List;

    move-result-object v0

    .line 1350
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/modepanel/a;

    .line 1351
    invoke-virtual {v3, p3}, Lcom/oplus/camera/ui/modepanel/a;->a(I)V

    .line 1352
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 1353
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p0, :cond_2

    const-string p0, "position_headline"

    goto :goto_0

    :cond_2
    const-string p0, "position_mode_panel"

    .line 1354
    :goto_0
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object p1

    invoke-virtual {p5}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/ui/modepanel/b;->a(ILjava/lang/String;)V

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/modepanel/k;

    .line 1358
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p1

    invoke-virtual {v0, p1, v1, p2}, Lcom/oplus/camera/ui/modepanel/b;->a(IIZ)V

    add-int/2addr v1, p2

    goto :goto_1

    .line 1362
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeRecycler, id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fItemFromPos: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fItemToPos: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/f;FF)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/f;Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/f;Landroidx/recyclerview/widget/RecyclerView;FF)[F
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->d(Landroidx/recyclerview/widget/RecyclerView;FF)[F

    move-result-object p0

    return-object p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;FI)I
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_3

    .line 791
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/f;->d()Landroid/view/View;

    move-result-object v0

    .line 792
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/f;->e()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 795
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 796
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v1, v0, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 797
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 799
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 803
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regulateVerticalHeadlineIndex, middle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchRawY: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", videoRect: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", photoRect: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", itemPos: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemDragHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 808
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/modepanel/a;

    if-eqz p0, :cond_2

    .line 809
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p1, 0x14

    .line 810
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :cond_3
    :goto_1
    return p3
.end method

.method static synthetic b(Lcom/oplus/camera/ui/modepanel/f;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->q:I

    return p0
.end method

.method private b(I)Landroid/graphics/Rect;
    .locals 9

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1533
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1534
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x4

    .line 1537
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v0, v1, :cond_1

    .line 1538
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1539
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v2, v0, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 1541
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1542
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v1

    .line 1548
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1549
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v7, p1, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1552
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 1554
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1555
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1556
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1557
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v3, p1, v0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 1558
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v4, p1, v0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 1561
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    if-ge p1, v0, :cond_4

    .line 1562
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result p1

    .line 1563
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v0, v1, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1565
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    move-object v1, p0

    .line 1566
    invoke-direct/range {v1 .. v8}, Lcom/oplus/camera/ui/modepanel/f;->a(ZLandroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    goto :goto_1

    .line 1569
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 1570
    new-instance v8, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p1

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, p1, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1572
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    move-object v1, p0

    .line 1573
    invoke-direct/range {v1 .. v8}, Lcom/oplus/camera/ui/modepanel/f;->a(ZLandroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    :cond_5
    :goto_1
    return-object v8

    .line 1580
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v7, p1, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;
    .locals 4

    .line 1749
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    rem-int v0, p2, v0

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-nez v0, :cond_2

    .line 1750
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1752
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v2, p0, :cond_0

    .line 1753
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 1754
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result p2

    sub-int p2, p0, p2

    .line 1755
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 1756
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_0
    if-ne v1, p0, :cond_1

    .line 1758
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 1759
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result p0

    add-int/2addr p0, p2

    .line 1760
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 1761
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1763
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 1764
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 1765
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1766
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result p1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1769
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1771
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v2, p0, :cond_3

    .line 1772
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 1773
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v0

    add-int/2addr v0, p0

    .line 1774
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 1775
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result p1

    :goto_0
    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    if-ne v1, p0, :cond_4

    .line 1777
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 1778
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result v0

    sub-int/2addr p0, v0

    .line 1779
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 1780
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v0

    sub-int v0, p0, v0

    move v3, p1

    move p1, p0

    move p0, v3

    goto :goto_1

    .line 1782
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result p2

    add-int/2addr p2, p0

    .line 1783
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 1784
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result p0

    add-int/2addr p0, p2

    .line 1785
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1789
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v0, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 3

    .line 885
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 891
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    move p3, p0

    :goto_0
    if-ltz p3, :cond_3

    .line 894
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    if-nez p3, :cond_1

    .line 897
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    return-object v0

    .line 901
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    .line 902
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 910
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p1

    cmpl-float p1, p2, p3

    if-lez p1, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V
    .locals 13

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "ItemDragHelper"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v7, :cond_2

    .line 512
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    .line 513
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p1

    .line 514
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    move-object v6, p0

    move v10, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    iput v5, p0, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 518
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 519
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    const/4 v0, 0x4

    .line 523
    iget v7, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne v0, v7, :cond_0

    .line 524
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v5

    .line 525
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    iget v7, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v0, v7, v8}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v7

    .line 527
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v9

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    .line 528
    new-instance v9, Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    invoke-direct {v9, v10, v8, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v9

    goto :goto_0

    .line 530
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/modepanel/f;->c(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    move p1, v2

    move-object v0, v3

    :goto_0
    move v12, p1

    goto/16 :goto_1

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v7, p1}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p1, v0, :cond_5

    .line 535
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p1

    .line 536
    iget-object v8, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v10, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    move-object v7, p0

    move v11, p1

    move-object v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;IILcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adsorpt, count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", fItemToPos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 541
    iput v6, p0, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 542
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 543
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 546
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 549
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v9, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v7, v8, v9}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v7

    .line 550
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v9, v9, v6

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/oplus/camera/ui/modepanel/f;->z:[I

    aget v6, v11, v6

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v11

    add-int/2addr v6, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 551
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v11

    add-int/2addr v7, v11

    invoke-direct {v8, v9, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move v12, p1

    move v9, v0

    move-object v0, v8

    goto :goto_2

    .line 553
    :cond_3
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v7, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object v6

    move v12, p1

    move v9, v0

    move-object v0, v6

    goto :goto_2

    :cond_4
    move v9, v0

    move v12, v2

    move-object v0, v3

    goto :goto_2

    :cond_5
    move v12, v2

    move-object v0, v3

    :goto_1
    move v9, v6

    :goto_2
    const-string p1, ", targetRect: "

    if-nez v9, :cond_8

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 561
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    if-eq v3, v2, :cond_7

    .line 564
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v2, :cond_6

    .line 565
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/modepanel/f;->c(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_3

    .line 567
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/graphics/Rect;

    move-result-object v2

    .line 570
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adsorpt, mLastItemPos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mLastHost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 573
    :cond_7
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v6, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {v2, v3, v6}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v2

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_8
    move-object v2, v0

    move-object v10, v3

    .line 577
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adsorpt, adsorpt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLastItemPos: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", addTargetView: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_9

    goto :goto_6

    :cond_9
    move v1, v5

    .line 585
    :goto_6
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ui/modepanel/e;->a(Landroid/graphics/Rect;I)V

    .line 588
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$QA_oYZvvZpoWZ_F10djWr-9q4JI;

    move-object v7, v0

    move-object v8, p0

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$QA_oYZvvZpoWZ_F10djWr-9q4JI;-><init>(Lcom/oplus/camera/ui/modepanel/f;ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic b(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    .line 1452
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->d(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    return-void
.end method

.method private synthetic b(Lcom/oplus/camera/ui/modepanel/a;)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/e;->b()V

    .line 492
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/a;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic b(ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V
    .locals 3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsorpt, finalAdsorpt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemDragHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    const v1, 0x7f0600a2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 476
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    .line 478
    iget-object p3, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    .line 479
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemChanged(I)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/modepanel/k;->b(I)V

    .line 482
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/modepanel/k;->c(I)V

    const/4 p1, 0x1

    .line 483
    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/modepanel/k;->e(Z)V

    .line 484
    invoke-virtual {v0, p4}, Lcom/oplus/camera/ui/modepanel/a;->notifyItemChanged(I)V

    .line 487
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_1

    .line 488
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->b()V

    goto :goto_1

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$NymiioZp384awSCQNl6vsgJeMiw;

    invoke-direct {p2, p0, v0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$NymiioZp384awSCQNl6vsgJeMiw;-><init>(Lcom/oplus/camera/ui/modepanel/f;Lcom/oplus/camera/ui/modepanel/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 496
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private b(II)Z
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 7

    .line 1408
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/a;

    .line 1410
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, ", toPos: "

    const-string v2, "ItemDragHelper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, p0, :cond_2

    if-ge p2, p3, :cond_1

    .line 1414
    invoke-virtual {v0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p0

    const/16 v5, 0x15

    if-ne p0, v5, :cond_0

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_0
    move p0, v3

    goto :goto_1

    .line 1416
    :cond_1
    invoke-virtual {v0, p3}, Lcom/oplus/camera/ui/modepanel/a;->b(I)Lcom/oplus/camera/ui/modepanel/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p0

    const/16 v5, 0x14

    if-ne p0, v5, :cond_0

    goto :goto_0

    .line 1419
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeItem, no mode are allowed to be inserted between the video and capture mode, fromPos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    return v3

    .line 1427
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeItem, fromPos: "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v0, p2, p3}, Lcom/oplus/camera/ui/modepanel/a;->a(II)V

    .line 1430
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 1431
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/a;->c()Ljava/util/List;

    move-result-object p0

    .line 1434
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/modepanel/k;

    .line 1435
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p1

    invoke-virtual {p2, p1, v3, v4}, Lcom/oplus/camera/ui/modepanel/b;->a(IIZ)V

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    return v4
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIF)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    if-eq p4, v1, :cond_5

    if-ne p3, p4, :cond_0

    goto :goto_1

    .line 1263
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 1267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1268
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/e;->g()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1275
    :cond_2
    iput-wide v1, p0, Lcom/oplus/camera/ui/modepanel/f;->y:J

    const/4 p1, 0x1

    if-le p3, p4, :cond_4

    .line 1278
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->j:F

    mul-float/2addr p2, p0

    sub-float/2addr p3, p2

    cmpg-float p0, p5, p3

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_0

    .line 1281
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->j:F

    mul-float/2addr p2, p0

    add-float/2addr p3, p2

    cmpl-float p0, p5, p3

    if-lez p0, :cond_3

    :goto_0
    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;FI)I
    .locals 2

    .line 825
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 826
    sget v0, Lcom/oplus/camera/screen/f;->b:I

    int-to-float v0, v0

    sub-float p2, v0, p2

    .line 829
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;FI)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/modepanel/f;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    return p0
.end method

.method private c(I)Landroid/graphics/Rect;
    .locals 7

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeadlineTargetVertical, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemDragHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    .line 1598
    new-array v2, v2, [I

    .line 1599
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1601
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    const/4 v5, 0x4

    if-ne v5, v3, :cond_1

    goto :goto_2

    .line 1620
    :cond_1
    aget v3, v2, v4

    .line 1621
    aget v1, v2, v1

    .line 1622
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1623
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v3, 0x5a

    .line 1603
    iget v5, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v3, v5, :cond_3

    .line 1604
    aget v1, v2, v1

    .line 1605
    aget v2, v2, v4

    .line 1606
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    .line 1607
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    move v6, v2

    move v2, v1

    move v1, v3

    move v3, v6

    goto :goto_3

    :cond_3
    const/16 v3, 0x10e

    if-ne v3, v5, :cond_4

    .line 1609
    aget v1, v2, v1

    .line 1610
    aget v2, v2, v4

    .line 1611
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v2, v3

    .line 1612
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_3

    .line 1614
    :cond_4
    aget v3, v2, v4

    .line 1615
    aget v1, v2, v1

    .line 1616
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1617
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_5
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_3
    if-nez v0, :cond_6

    .line 1628
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->d(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1631
    :cond_6
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 3

    .line 921
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 927
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    move p2, p0

    :goto_0
    if-ltz p2, :cond_3

    .line 930
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    if-nez p2, :cond_1

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_1

    return-object v0

    .line 937
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v1, p3, v2

    if-gtz v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 943
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 944
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    .line 946
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->B:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1444
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1445
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$hmiAkvk-CI-Zs-hS4rbHeZj-v_Q;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$hmiAkvk-CI-Zs-hS4rbHeZj-v_Q;-><init>(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    new-instance v2, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$99Lpj3Rv3guSo9zVFsK-zG8Xc-0;

    invoke-direct {v2, p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$99Lpj3Rv3guSo9zVFsK-zG8Xc-0;-><init>(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/screen/b/a;->c(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    return-void

    .line 1446
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleDragUI, floatRect: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemDragHelper"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1369
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    .line 1372
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    const/4 v1, 0x1

    mul-int/2addr v0, v1

    const/4 v2, 0x2

    if-gt p0, v0, :cond_0

    .line 1373
    invoke-static {}, Lcom/oplus/camera/k;->h()I

    move-result p0

    goto :goto_0

    .line 1374
    :cond_0
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/2addr v0, v1

    if-le p0, v0, :cond_1

    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/2addr v0, v2

    if-gt p0, v0, :cond_1

    .line 1375
    invoke-static {}, Lcom/oplus/camera/k;->i()I

    move-result p0

    goto :goto_0

    .line 1376
    :cond_1
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/2addr v0, v2

    if-le p0, v0, :cond_2

    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v0, v0, 0x3

    if-gt p0, v0, :cond_2

    .line 1377
    invoke-static {}, Lcom/oplus/camera/k;->j()I

    move-result p0

    goto :goto_0

    .line 1378
    :cond_2
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v0, v0, 0x3

    if-le p0, v0, :cond_3

    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v0, v0, 0x4

    if-gt p0, v0, :cond_3

    .line 1379
    invoke-static {}, Lcom/oplus/camera/k;->k()I

    move-result p0

    goto :goto_0

    .line 1380
    :cond_3
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v0, v0, 0x4

    if-le p0, v0, :cond_4

    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v0, v0, 0x5

    if-gt p0, v0, :cond_4

    .line 1381
    invoke-static {}, Lcom/oplus/camera/k;->l()I

    move-result p0

    goto :goto_0

    .line 1383
    :cond_4
    invoke-static {}, Lcom/oplus/camera/k;->l()I

    move-result p0

    .line 1386
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1388
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    if-ne v3, p0, :cond_5

    return-void

    .line 1392
    :cond_5
    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    aput v4, v2, v3

    aput p0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1397
    invoke-static {v1, v2, v3, v4}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1398
    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$diUbNxd1Axia-04if1v_mBDIMk4;

    invoke-direct {v1, v0, p1}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$f$diUbNxd1Axia-04if1v_mBDIMk4;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 1403
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1404
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private d(I)Landroid/graphics/Rect;
    .locals 7

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeadlineNextTarget, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemDragHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1645
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 1648
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    sub-int/2addr p1, v3

    goto :goto_0

    .line 1650
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 1651
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    move p1, v1

    .line 1654
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/4 v2, 0x4

    if-ne v2, v0, :cond_3

    .line 1655
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 1658
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->c(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1660
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-ne v3, v0, :cond_6

    .line 1661
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v5, v0, :cond_4

    .line 1662
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 1663
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 1664
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 1665
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, p1

    move v6, v0

    move v0, p0

    move p0, v6

    goto/16 :goto_3

    :cond_4
    if-ne v4, v0, :cond_5

    .line 1667
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 1668
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    .line 1669
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 1670
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_1

    .line 1672
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 1673
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v0

    add-int/2addr p1, v0

    .line 1674
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    .line 1675
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto/16 :goto_2

    :cond_6
    if-ne v2, v0, :cond_9

    .line 1678
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    if-ne v5, v0, :cond_7

    .line 1679
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 1680
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1681
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v2

    add-int/2addr p1, v2

    .line 1682
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_1
    add-int/2addr p0, p1

    move v6, v0

    move v0, p0

    move p0, v1

    move v1, v6

    goto :goto_3

    :cond_7
    if-ne v4, v0, :cond_8

    .line 1684
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 1685
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1686
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v2

    sub-int/2addr p1, v2

    .line 1687
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int p0, p1, p0

    move v6, p1

    move p1, p0

    move p0, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_8
    move p0, v1

    move p1, p0

    move v0, p1

    goto :goto_3

    .line 1690
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 1691
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/k;->b()I

    move-result v0

    add-int/2addr p1, v0

    .line 1692
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    .line 1693
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_2
    add-int/2addr p0, v1

    move v6, v0

    move v0, p1

    move p1, v6

    .line 1696
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, p1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private d()Landroid/view/View;
    .locals 5

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 836
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090396

    .line 838
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/modepanel/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private d(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V
    .locals 2

    .line 1458
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Lcom/oplus/camera/ui/modepanel/c;->a(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->e()V

    goto :goto_0

    .line 1460
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    if-gt v0, v1, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->f()V

    .line 1464
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    if-lt p1, v0, :cond_2

    invoke-static {p2}, Lcom/oplus/camera/ui/modepanel/c;->a(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1465
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    .line 1466
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    const p2, 0x7f100248

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1468
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_2

    const-string p1, "disable_code"

    const-string p2, "immovable_mode"

    .line 1469
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic d(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;FF)[F
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/a;->a(Landroid/view/View;FF)[F

    move-result-object p0

    return-object p0
.end method

.method private e()Landroid/view/View;
    .locals 5

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 850
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090396

    .line 852
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/modepanel/f;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->B:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V
    .locals 4

    .line 1475
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result v0

    .line 1476
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1478
    invoke-static {p2}, Lcom/oplus/camera/ui/modepanel/c;->a(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->e()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->f()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    .line 1484
    invoke-static {p2}, Lcom/oplus/camera/ui/modepanel/c;->a(Lcom/oplus/camera/ui/modepanel/k;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 1485
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    .line 1487
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    const v0, 0x7f100248

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 1489
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-eq p1, v0, :cond_2

    const/4 p1, 0x4

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1491
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1492
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    const/16 v0, 0x5a

    const/high16 v2, 0x43960000    # 300.0f

    const v3, 0x7f07012f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const p1, 0x800015

    .line 1506
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    neg-int v0, v0

    .line 1505
    invoke-virtual {p2, p1, v1, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 1507
    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x43870000    # 270.0f

    .line 1508
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1509
    invoke-virtual {p1, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    :cond_4
    const p1, 0x800013

    .line 1498
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    neg-int v0, v0

    .line 1497
    invoke-virtual {p2, p1, v1, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 1499
    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x42b40000    # 90.0f

    .line 1500
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1501
    invoke-virtual {p1, v2}, Landroid/view/View;->setElevation(F)V

    .line 1517
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1519
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_6

    const-string p1, "disable_code"

    const-string p2, "immovable_mode"

    .line 1520
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static synthetic lambda$99Lpj3Rv3guSo9zVFsK-zG8Xc-0(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$NymiioZp384awSCQNl6vsgJeMiw(Lcom/oplus/camera/ui/modepanel/f;Lcom/oplus/camera/ui/modepanel/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->b(Lcom/oplus/camera/ui/modepanel/a;)V

    return-void
.end method

.method public static synthetic lambda$QA_oYZvvZpoWZ_F10djWr-9q4JI(Lcom/oplus/camera/ui/modepanel/f;ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/f;->a(ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V

    return-void
.end method

.method public static synthetic lambda$cRNhDfJfRzUlvcwVuliDw_CQ80M(Lcom/oplus/camera/ui/modepanel/f;ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/f;->b(ZLandroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/modepanel/k;I)V

    return-void
.end method

.method public static synthetic lambda$diUbNxd1Axia-04if1v_mBDIMk4(Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$dniMN-FK4i6uMMThUVP9jwrTQTc(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$hmiAkvk-CI-Zs-hS4rbHeZj-v_Q(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$mYHulACzkUqhq_pXcWGrp9EiGK0(Lcom/oplus/camera/ui/modepanel/f;Lcom/oplus/camera/ui/modepanel/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->a(Lcom/oplus/camera/ui/modepanel/a;)V

    return-void
.end method

.method public static synthetic lambda$nn3_UedtgcXhr12iuvuOG8tLijA(Lcom/oplus/camera/ui/modepanel/f;Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/f;->d(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 126
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->A:Lcom/oplus/camera/screen/g;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/e;->a(I)V

    :cond_0
    const/4 p1, 0x3

    .line 133
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne p1, v0, :cond_1

    .line 134
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    const v0, 0x7f070545

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "ItemDragHelper"

    if-gez v3, :cond_1

    if-eq v6, v1, :cond_1

    if-eq v5, v1, :cond_1

    if-eq v4, v1, :cond_1

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDrag, time interval is too short, action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x6

    if-le v0, v6, :cond_2

    if-eq v6, v1, :cond_2

    if-eq v3, v1, :cond_2

    if-eq v5, v1, :cond_2

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDrag, can\'t process multi-touch events, count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x5

    if-eq v0, v1, :cond_d

    if-ne v3, v1, :cond_3

    .line 296
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    if-eq v0, v8, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    if-nez v1, :cond_5

    const/4 v2, -0x1

    .line 304
    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    if-eq v2, v8, :cond_4

    return-void

    .line 308
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    .line 311
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    if-eq v0, v2, :cond_6

    return-void

    .line 315
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/f;->q:I

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/e;->a(Landroid/view/MotionEvent;)V

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    goto :goto_1

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/e;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const-string p0, "onDrag, can\'t process event when float view is not shown."

    .line 327
    invoke-static {v7, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    const v2, 0x7f090396

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/k;

    .line 333
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/e;->g()Landroid/graphics/Rect;

    move-result-object v2

    .line 334
    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/ui/modepanel/f;->c(Landroid/graphics/Rect;Lcom/oplus/camera/ui/modepanel/k;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDrag, mDividY: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->l:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mLastTouchX: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", event: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p1, v1, :cond_9

    .line 338
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->q:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->r:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/f;->a(FF)Z

    .line 339
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/f;->c()V

    goto :goto_0

    :cond_9
    if-eq v6, v1, :cond_a

    if-eq v3, v1, :cond_a

    if-eq v5, v1, :cond_a

    if-ne v4, v1, :cond_b

    .line 344
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    .line 345
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/graphics/Rect;)V

    :cond_b
    :goto_0
    return-void

    .line 321
    :cond_c
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrag, host is null, mModelistHost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mHeadlineHost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 297
    :cond_d
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag, can\'t process action: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mActivePointerId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/f;->w:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {v7, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p1, v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 9

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/modepanel/f;->v:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const-string v1, "ItemDragHelper"

    if-gez v0, :cond_0

    const-string p0, "startDrag, time interval is too short."

    .line 142
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 154
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    if-nez v0, :cond_2

    const-string p0, "startDrag, mLastTouchX is invalid."

    .line 160
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v2, v0, :cond_3

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startDrag, can\'t process multi-touch events, count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x5

    .line 173
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v0, v3, :cond_e

    const/4 v0, 0x6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v0, v3, :cond_4

    goto/16 :goto_6

    .line 177
    :cond_4
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Lcom/oplus/camera/ui/modepanel/f;->p:I

    .line 178
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    const/4 p4, 0x0

    .line 180
    iput-boolean p4, p0, Lcom/oplus/camera/ui/modepanel/f;->n:Z

    .line 181
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    move p3, v0

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    const v4, 0x7f090396

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/modepanel/k;

    if-eqz v0, :cond_d

    .line 185
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/k;->g()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_5

    .line 191
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/view/View;Lcom/oplus/camera/ui/modepanel/k;)Z

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_7

    move v0, p4

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/f;->c:I

    .line 193
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/f;->h:I

    .line 195
    iput v3, p0, Lcom/oplus/camera/ui/modepanel/f;->i:I

    .line 196
    iget-object p3, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {p3, v0, v1}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p3

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/oplus/camera/ui/modepanel/k;

    .line 199
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/f;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-ne v2, p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, p4

    :goto_1
    const/4 p1, 0x4

    .line 202
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    if-ne p1, v0, :cond_a

    .line 203
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_9

    .line 204
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 205
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 207
    :cond_9
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 208
    sget v0, Lcom/oplus/camera/screen/f;->a:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 209
    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 210
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 214
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_b
    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_3
    move v6, p1

    iget v7, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/modepanel/e;->a(Lcom/oplus/camera/ui/modepanel/k;IIII)V

    .line 215
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 216
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->o:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p1, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr p2, p3

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/modepanel/f;->s:I

    .line 218
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 219
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p3, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->x:Landroid/graphics/Rect;

    goto :goto_4

    .line 221
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, Lcom/oplus/camera/ui/modepanel/f;->t:I

    iget p3, p0, Lcom/oplus/camera/ui/modepanel/f;->u:I

    invoke-static {p1, p2, p3}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->x:Landroid/graphics/Rect;

    .line 222
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->x:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 225
    :goto_4
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1, p4}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    .line 226
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/modepanel/f;->a(Z)V

    return-void

    .line 186
    :cond_d
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startDrag, mDragModeInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be selected."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    return-void

    .line 148
    :cond_f
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startDrag, float view is shown, parent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isAnimationRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/f;->b()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p1, v0, :cond_0

    .line 117
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    if-eq p2, p1, :cond_1

    .line 121
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/f;->g:Lcom/oplus/camera/ui/CameraUIListener;

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/e;->c()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    .line 1319
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/f;->b:Lcom/oplus/camera/ui/modepanel/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/e;->d()Z

    move-result p0

    return p0
.end method
