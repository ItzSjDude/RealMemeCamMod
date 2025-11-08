.class public Lcom/oplus/camera/filmvideomode/k;
.super Landroid/widget/RelativeLayout;
.source "FilmParamsContainer.java"

# interfaces
.implements Lcom/oplus/camera/filmvideomode/l$a;
.implements Lcom/oplus/camera/professional/p$b;
.implements Lcom/oplus/camera/professional/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/k$a;,
        Lcom/oplus/camera/filmvideomode/k$c;,
        Lcom/oplus/camera/filmvideomode/k$b;,
        Lcom/oplus/camera/filmvideomode/k$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "k"


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/oplus/camera/e/h;

.field private d:Lcom/oplus/camera/filmvideomode/i;

.field private e:Lcom/oplus/camera/filmvideomode/h;

.field private f:Lcom/oplus/camera/filmvideomode/l;

.field private g:Z

.field private h:Lcom/oplus/camera/capmode/a;

.field private i:Lcom/oplus/camera/filmvideomode/k$b;

.field private j:Landroid/app/Activity;

.field private k:Lcom/oplus/camera/filmvideomode/k$c;

.field private l:Lcom/oplus/camera/filmvideomode/k$a;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/filmvideomode/k$b;Lcom/oplus/camera/e/h;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->b:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->c:Lcom/oplus/camera/e/h;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/k;->g:Z

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->h:Lcom/oplus/camera/capmode/a;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->i:Lcom/oplus/camera/filmvideomode/k$b;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->j:Landroid/app/Activity;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->k:Lcom/oplus/camera/filmvideomode/k$c;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->l:Lcom/oplus/camera/filmvideomode/k$a;

    .line 64
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/k;->m:Z

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->j:Landroid/app/Activity;

    .line 70
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/k;->h:Lcom/oplus/camera/capmode/a;

    .line 71
    iput-object p4, p0, Lcom/oplus/camera/filmvideomode/k;->c:Lcom/oplus/camera/e/h;

    .line 72
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->b:Landroid/content/SharedPreferences;

    .line 73
    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/k;->i:Lcom/oplus/camera/filmvideomode/k$b;

    .line 74
    invoke-static {}, Lcom/oplus/camera/professional/LevelPanel;->c()V

    .line 75
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/k;->k()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/h;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/l;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/k$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->l:Lcom/oplus/camera/filmvideomode/k$a;

    return-object p0
.end method

.method private getItemData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/filmvideomode/j;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->h:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_0

    .line 359
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 362
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/l;->getPanelMap()Ljava/util/Map;

    move-result-object v1

    .line 366
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 368
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    .line 370
    new-instance v4, Lcom/oplus/camera/filmvideomode/j;

    invoke-direct {v4}, Lcom/oplus/camera/filmvideomode/j;-><init>()V

    .line 371
    invoke-virtual {v4, v3}, Lcom/oplus/camera/filmvideomode/j;->c(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v3

    .line 372
    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/filmvideomode/j;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/k;->b:Landroid/content/SharedPreferences;

    .line 373
    invoke-virtual {v2, v4}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v2

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 382
    :cond_2
    new-instance v1, Lcom/oplus/camera/filmvideomode/j;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/j;-><init>()V

    const v2, 0x7f0805da

    .line 383
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/j;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f100145

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    move-result-object p0

    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/j;->c(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object p0

    const v2, 0x7f0f003c

    .line 386
    invoke-virtual {p0, v2}, Lcom/oplus/camera/filmvideomode/j;->b(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object p0

    .line 388
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 389
    :goto_1
    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private k()V
    .locals 10

    .line 79
    new-instance v0, Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->h:Lcom/oplus/camera/capmode/a;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/filmvideomode/l;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->c:Lcom/oplus/camera/e/h;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;)V

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/l;->setMotionListener(Lcom/oplus/camera/professional/p$b;)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/l;->setValueListener(Lcom/oplus/camera/filmvideomode/l$a;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->setId(I)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    const v4, 0x7f0707c9

    const v5, 0x7f0707c8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    new-instance v3, Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/oplus/camera/filmvideomode/i;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    .line 91
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/oplus/camera/filmvideomode/i;->setClipChildren(Z)V

    .line 92
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v3, v6}, Lcom/oplus/camera/filmvideomode/i;->setClipToPadding(Z)V

    .line 93
    new-instance v3, Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    iget-object v8, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/k;->getItemData()Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v7, v8, v9}, Lcom/oplus/camera/filmvideomode/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/filmvideomode/i;Ljava/util/List;)V

    iput-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    .line 94
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v3, v7}, Lcom/oplus/camera/filmvideomode/i;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 95
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v3, p0}, Lcom/oplus/camera/filmvideomode/h;->a(Lcom/oplus/camera/professional/q;)V

    .line 96
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 97
    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v7, v3}, Lcom/oplus/camera/filmvideomode/i;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 98
    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/oplus/camera/filmvideomode/i;->setHasFixedSize(Z)V

    .line 99
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 102
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    .line 105
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 110
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    .line 114
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    move-object v2, v3

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/filmvideomode/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/filmvideomode/i;->setHorizontalFadingEdgeEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/filmvideomode/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private declared-synchronized l()V
    .locals 4

    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 558
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/l;->h(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 560
    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/l;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 561
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->scrollTo(II)V

    .line 562
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->b(II)V

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 565
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v2, v1, v0}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "auto"

    .line 495
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p3

    .line 499
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->f(I)Ljava/lang/String;

    move-result-object p0

    .line 500
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p0, p3

    :cond_2
    return-object p0
.end method

.method public a(IIZ)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/filmvideomode/l;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;Z)V

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->i:Lcom/oplus/camera/filmvideomode/k$b;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 521
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3}, Lcom/oplus/camera/filmvideomode/k$b;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->k:Lcom/oplus/camera/filmvideomode/k$c;

    if-eqz p0, :cond_0

    .line 541
    invoke-interface {p0, p1}, Lcom/oplus/camera/filmvideomode/k$c;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 149
    iput-boolean p2, p0, Lcom/oplus/camera/filmvideomode/k;->m:Z

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v1, Lcom/oplus/camera/filmvideomode/k$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/filmvideomode/k$2;-><init>(Lcom/oplus/camera/filmvideomode/k;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 614
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/i;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 622
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/l;->getTouchAreaRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getLeft()I

    move-result p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    long-to-int p1, p4

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/e/h;)V

    .line 350
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->f()V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    .line 329
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/l;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 330
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/l;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 332
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 333
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1, v2}, Lcom/oplus/camera/professional/x;->a(FLjava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 338
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref_film_mode_focus"

    .line 339
    invoke-static {v3, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, p1}, Lcom/oplus/camera/filmvideomode/l;->scrollTo(II)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    .line 265
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/l;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/l;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 268
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 269
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Lcom/oplus/camera/professional/x;->a(ILjava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 273
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 274
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref_film_mode_iso"

    .line 275
    invoke-static {v3, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, p1}, Lcom/oplus/camera/filmvideomode/l;->scrollTo(II)V

    .line 277
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    .line 278
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/l;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/l;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 290
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 291
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/oplus/camera/professional/x;->a(JLjava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 295
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 296
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref_film_mode_shutter"

    .line 297
    invoke-static {v3, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, p1}, Lcom/oplus/camera/filmvideomode/l;->scrollTo(II)V

    .line 299
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    .line 300
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/l;->getVisibility()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->l:Lcom/oplus/camera/filmvideomode/k$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1, v0}, Lcom/oplus/camera/filmvideomode/k$a;->e(Z)V

    .line 199
    :cond_1
    new-instance p1, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p1}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 200
    iput-boolean v0, p1, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v0, 0xfa

    .line 201
    iput v0, p1, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v0, 0x190

    .line 202
    iput v0, p1, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v0, 0x0

    .line 203
    iput v0, p1, Lcom/oplus/camera/professional/u$a;->d:F

    .line 204
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/oplus/camera/professional/u$a;->e:F

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/k;->g:Z

    return p0
.end method

.method public a(I)Z
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    return p0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "auto"

    .line 508
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p3

    .line 512
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->g(I)Ljava/lang/String;

    move-result-object p0

    .line 513
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "+"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/k;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0, v0}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/filmvideomode/k;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0, p2}, Lcom/oplus/camera/filmvideomode/j;->a(Z)Lcom/oplus/camera/filmvideomode/j;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->i:Lcom/oplus/camera/filmvideomode/k$b;

    if-eqz v0, :cond_1

    .line 534
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Lcom/oplus/camera/filmvideomode/k$b;->a(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/l;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/l;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 311
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 312
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Lcom/oplus/camera/professional/x;->a(ILjava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 315
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 316
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 317
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref_film_mode_white_balance"

    .line 318
    invoke-static {v3, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v3, v1, p1}, Lcom/oplus/camera/filmvideomode/l;->scrollTo(II)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/j;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/j;

    .line 321
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/filmvideomode/i;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->a(Z)V

    .line 215
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    if-eqz p1, :cond_0

    .line 216
    invoke-static {p0, p1}, Lcom/oplus/camera/filmvideomode/b;->b(Lcom/oplus/camera/filmvideomode/k;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 579
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 580
    invoke-virtual {p1, v3}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 581
    invoke-virtual {p1, v2}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const/4 p1, 0x5

    .line 582
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    return v0

    :cond_2
    if-ne v3, p1, :cond_5

    .line 584
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    .line 585
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v4

    :cond_4
    return v0

    :cond_5
    if-ne v2, p1, :cond_6

    .line 587
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/k;->m:Z

    return p0

    :cond_6
    return v4
.end method

.method public c(I)V
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 597
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    .line 598
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->b(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 599
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 597
    :goto_1
    invoke-virtual {v1, p1, v0, v3}, Lcom/oplus/camera/filmvideomode/i;->a(IZZ)V

    :cond_2
    return-void
.end method

.method public c(IZ)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/filmvideomode/l;->a(ZI)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/h;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->d()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->setPanelsBarAuto(I)V

    .line 551
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/l;->c()V

    .line 553
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/k;->l()V

    return-void
.end method

.method public getModeBarCount()I
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->e:Lcom/oplus/camera/filmvideomode/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/h;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStatisticDataWriter()Lcom/oplus/camera/filmvideomode/k$c;
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->k:Lcom/oplus/camera/filmvideomode/k$c;

    return-object p0
.end method

.method public h()V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    if-eqz p0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->e()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    if-eqz p0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->f()V

    :cond_0
    return-void
.end method

.method public isSelected()Z
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/i;->isSelected()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    if-eqz p0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAFEnable(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/k;->m:Z

    return-void
.end method

.method public setFilmParamsStateChangeListener(Lcom/oplus/camera/filmvideomode/k$a;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->l:Lcom/oplus/camera/filmvideomode/k$a;

    .line 126
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->setParamsStateListener(Lcom/oplus/camera/filmvideomode/k$a;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/oplus/camera/filmvideomode/k$d;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->setOnItemClickListener(Lcom/oplus/camera/filmvideomode/k$d;)V

    :cond_0
    return-void
.end method

.method public setParamsBarEnable(Z)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k;->d:Lcom/oplus/camera/filmvideomode/i;

    new-instance v1, Lcom/oplus/camera/filmvideomode/k$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/filmvideomode/k$1;-><init>(Lcom/oplus/camera/filmvideomode/k;Z)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/i;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSlideSelected(I)V
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k;->f:Lcom/oplus/camera/filmvideomode/l;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/filmvideomode/l;->a(IZ)V

    return-void
.end method

.method public setStatisticDataWriter(Lcom/oplus/camera/filmvideomode/k$c;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k;->k:Lcom/oplus/camera/filmvideomode/k$c;

    return-void
.end method
