.class public Lcom/oplus/camera/filmvideomode/h;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FilmModeBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/filmvideomode/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "h"


# instance fields
.field private b:Lcom/oplus/camera/filmvideomode/i;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oplus/camera/professional/q;

.field private f:Lcom/oplus/camera/filmvideomode/k$d;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/filmvideomode/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/oplus/camera/filmvideomode/i;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/j;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->b:Lcom/oplus/camera/filmvideomode/i;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->c:Landroid/app/Activity;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->e:Lcom/oplus/camera/professional/q;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/h;->c:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/h;->b:Lcom/oplus/camera/filmvideomode/i;

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/filmvideomode/k$d;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/View;)I

    move-result v0

    .line 119
    sget-object v1, Lcom/oplus/camera/filmvideomode/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder, onclick view index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 123
    move-object v1, p1

    check-cast v1, Lcom/oplus/camera/filmvideomode/d;

    invoke-virtual {v1, v7, v7}, Lcom/oplus/camera/filmvideomode/d;->a(ZZ)V

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    const/4 v2, 0x0

    int-to-long v5, v0

    move-object v3, p1

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/filmvideomode/k$d;->a(Landroid/view/View;Landroid/view/View;IJ)V

    .line 125
    sget-object p0, Lcom/oplus/camera/filmvideomode/h;->a:Ljava/lang/String;

    const-string p1, "onBindViewHolder, reset item click."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 130
    iget v2, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    if-eq v1, v2, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/h;->c()V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    if-eqz v1, :cond_5

    .line 135
    iget v2, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    if-eq v2, v0, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    invoke-virtual {v1, v7}, Lcom/oplus/camera/filmvideomode/j;->b(Z)V

    .line 142
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/oplus/camera/filmvideomode/d;

    invoke-virtual {v1, v7, v7}, Lcom/oplus/camera/filmvideomode/d;->a(ZZ)V

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    const/4 v2, 0x0

    int-to-long v5, v0

    move-object v3, p1

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/filmvideomode/k$d;->a(Landroid/view/View;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 145
    invoke-interface {v1, v2, p1, v0}, Lcom/oplus/camera/filmvideomode/k$d;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 149
    :cond_5
    :goto_0
    iget v1, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    if-eq v1, v0, :cond_6

    if-eqz p1, :cond_6

    .line 150
    iput v0, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    .line 151
    invoke-virtual {p1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/h;->a()V

    :goto_1
    return-void
.end method

.method private c()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/filmvideomode/j;

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/j;->b(Z)V

    .line 161
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/h;->b:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/filmvideomode/i;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/filmvideomode/d;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v3, v2, v1}, Lcom/oplus/camera/filmvideomode/d;->a(ZZ)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/h;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/h;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$O2cG4OBzV6V1bSYg5ehKQ1Mexu8(Lcom/oplus/camera/filmvideomode/h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0902d7

    .line 236
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/filmvideomode/h$a;
    .locals 2

    .line 65
    new-instance p1, Lcom/oplus/camera/filmvideomode/d;

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/h;->c:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/filmvideomode/d;-><init>(Landroid/app/Activity;)V

    .line 66
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/h;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0707ce

    goto :goto_0

    :cond_0
    const v0, 0x7f0707cd

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0707c9

    goto :goto_1

    :cond_1
    const v1, 0x7f0707c8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x66

    .line 71
    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/d;->setId(I)V

    .line 72
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const/high16 p2, 0x42b40000    # 90.0f

    :goto_2
    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/d;->setRotation(F)V

    .line 73
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/16 p2, 0x10

    :goto_3
    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/d;->setGravity(I)V

    .line 74
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance p2, Lcom/oplus/camera/filmvideomode/h$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/filmvideomode/h$a;-><init>(Lcom/oplus/camera/filmvideomode/h;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)Lcom/oplus/camera/filmvideomode/j;
    .locals 2

    .line 190
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/j;

    .line 191
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/h;->c()V

    const/4 v0, -0x1

    .line 185
    iput v0, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/j;->a(Z)Lcom/oplus/camera/filmvideomode/j;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 0

    .line 220
    check-cast p1, Lcom/oplus/camera/filmvideomode/d;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/filmvideomode/d;->a(IZ)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 208
    check-cast p1, Lcom/oplus/camera/filmvideomode/d;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/d;->setItemValueText(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/h$a;I)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 82
    sget-object p0, Lcom/oplus/camera/filmvideomode/h;->a:Ljava/lang/String;

    const-string p1, "onBindViewHolder, invalid position."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/filmvideomode/j;

    .line 88
    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/h$a;->itemView:Landroid/view/View;

    check-cast p1, Lcom/oplus/camera/filmvideomode/d;

    .line 90
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/d;->setItemIndex(I)V

    .line 91
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/d;->setItemTitleImage(I)V

    .line 92
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/d;->setItemValueText(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/d;->setItemAnimation(I)V

    .line 94
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/d;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->e:Lcom/oplus/camera/professional/q;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/professional/q;->b(I)Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/filmvideomode/d;->b(ZZ)V

    .line 99
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/h;->e:Lcom/oplus/camera/professional/q;

    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/professional/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1, v2, v2}, Lcom/oplus/camera/filmvideomode/d;->a(IZ)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 102
    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/filmvideomode/d;->a(IZ)V

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v0

    iget v2, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    if-ne v0, v2, :cond_3

    .line 107
    invoke-virtual {p2, v1}, Lcom/oplus/camera/filmvideomode/j;->b(Z)V

    .line 110
    :cond_3
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/d;->setSelected(Z)V

    const v0, 0x7f0902d7

    .line 111
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/filmvideomode/d;->setTag(ILjava/lang/Object;)V

    .line 113
    new-instance p2, Lcom/oplus/camera/filmvideomode/-$$Lambda$h$O2cG4OBzV6V1bSYg5ehKQ1Mexu8;

    invoke-direct {p2, p0}, Lcom/oplus/camera/filmvideomode/-$$Lambda$h$O2cG4OBzV6V1bSYg5ehKQ1Mexu8;-><init>(Lcom/oplus/camera/filmvideomode/h;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/k$d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/h;->f:Lcom/oplus/camera/filmvideomode/k$d;

    return-void
.end method

.method public a(Lcom/oplus/camera/professional/q;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/h;->e:Lcom/oplus/camera/professional/q;

    return-void
.end method

.method public b()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/oplus/camera/filmvideomode/h;->g:I

    return p0
.end method

.method public b(I)I
    .locals 2

    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/filmvideomode/j;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/h;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/j;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/j;->e()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/oplus/camera/filmvideomode/h$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/h;->a(Lcom/oplus/camera/filmvideomode/h$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/filmvideomode/h$a;

    move-result-object p0

    return-object p0
.end method
