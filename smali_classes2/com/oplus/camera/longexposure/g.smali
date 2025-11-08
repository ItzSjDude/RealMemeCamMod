.class public Lcom/oplus/camera/longexposure/g;
.super Ljava/lang/Object;
.source "LongExposureMenu.java"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/oplus/camera/longexposure/c$a;

.field private c:Lcom/oplus/camera/longexposure/c;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/oplus/camera/longexposure/f;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/AnimatorSet;

.field private j:I

.field private k:Landroid/view/animation/PathInterpolator;

.field private l:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->b:Lcom/oplus/camera/longexposure/c$a;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->d:Landroid/content/SharedPreferences;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->f:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->g:Lcom/oplus/camera/longexposure/f;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/oplus/camera/longexposure/g;->j:I

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->k:Landroid/view/animation/PathInterpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->l:Landroid/view/animation/PathInterpolator;

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/oplus/camera/longexposure/g;->d:Landroid/content/SharedPreferences;

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->a()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/g;)Lcom/oplus/camera/longexposure/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->g:Lcom/oplus/camera/longexposure/f;

    return-object p0
.end method

.method private a(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/j;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v1, Lcom/oplus/camera/longexposure/j;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v3, 0x7f100225

    .line 111
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, p1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const v7, 0x7f080537

    invoke-direct {v1, v3, v2, v7, v6}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/oplus/camera/longexposure/j;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v3, 0x7f100226

    .line 115
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080538

    const/4 v6, 0x3

    if-ne v6, p1, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    invoke-direct {v1, v6, v2, v3, v7}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/oplus/camera/longexposure/j;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v2, 0x7f100227

    .line 119
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f080539

    const/4 v3, 0x4

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-direct {v1, v3, p0, v2, v4}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/g;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private b(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/j;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/oplus/camera/longexposure/g;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "com.oplus.long.exposure.scene.type.array"

    .line 128
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_b

    .line 131
    array-length v2, v1

    if-lez v2, :cond_b

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_b

    aget v5, v1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7

    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    goto/16 :goto_6

    .line 167
    :cond_1
    new-instance v5, Lcom/oplus/camera/longexposure/j;

    iget-object v8, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v9, 0x7f10022b

    .line 168
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08053a

    if-ne v7, p1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    invoke-direct {v5, v7, v8, v9, v6}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 167
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 160
    :cond_3
    new-instance v5, Lcom/oplus/camera/longexposure/j;

    iget-object v8, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v9, 0x7f100227

    .line 161
    invoke-static {v9}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080539

    if-ne v7, p1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    invoke-direct {v5, v7, v8, v9, v6}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 160
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 153
    :cond_5
    new-instance v5, Lcom/oplus/camera/longexposure/j;

    iget-object v8, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v9, 0x7f100226

    .line 154
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080538

    if-ne v7, p1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    invoke-direct {v5, v7, v8, v9, v6}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 153
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 146
    :cond_7
    new-instance v5, Lcom/oplus/camera/longexposure/j;

    iget-object v8, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v9, 0x7f100225

    .line 147
    invoke-static {v9}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080537

    if-ne v7, p1, :cond_8

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    invoke-direct {v5, v7, v8, v9, v6}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 146
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 139
    :cond_9
    new-instance v5, Lcom/oplus/camera/longexposure/j;

    iget-object v7, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v8, 0x7f100229

    .line 140
    invoke-static {v8}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08053b

    if-ne v6, p1, :cond_a

    move v9, v6

    goto :goto_5

    :cond_a
    move v9, v3

    :goto_5
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/oplus/camera/longexposure/j;-><init>(ILjava/lang/String;IZ)V

    .line 139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->f:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/longexposure/g;->j:I

    .line 59
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    const-string v2, "pref_long_exposure_effect_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 65
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    .line 71
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 74
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipChildren(Z)V

    .line 75
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    invoke-direct {v2, v4, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 78
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 79
    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oplus/camera/longexposure/g$1;

    invoke-direct {v3, p0, v1}, Lcom/oplus/camera/longexposure/g$1;-><init>(Lcom/oplus/camera/longexposure/g;F)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/oplus/camera/longexposure/g;->b(I)Ljava/util/List;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/oplus/camera/longexposure/c;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/g;->e:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/oplus/camera/longexposure/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    .line 96
    :cond_0
    new-instance v0, Lcom/oplus/camera/longexposure/g$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/longexposure/g$2;-><init>(Lcom/oplus/camera/longexposure/g;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/g;->b:Lcom/oplus/camera/longexposure/c$a;

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->b:Lcom/oplus/camera/longexposure/c$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/c;->a(Lcom/oplus/camera/longexposure/c$a;)V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/longexposure/f;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/longexposure/g;->g:Lcom/oplus/camera/longexposure/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->c:Lcom/oplus/camera/longexposure/c;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    const-string v0, "LongExposureMenu"

    const-string v1, "hideMenu"

    .line 189
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    const-string p0, "EffectMenuRv is null, so return!"

    .line 192
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "hideMenu, view is showing, just invisible and return!"

    .line 199
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->k:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 213
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/camera/longexposure/g;->j:I

    int-to-float v3, v3

    aput v3, v0, v2

    const-string v2, "translationY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    .line 221
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oplus/camera/longexposure/g$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/longexposure/g$3;-><init>(Lcom/oplus/camera/longexposure/g;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 231
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b()Z
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()I
    .locals 2

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->d:Landroid/content/SharedPreferences;

    const-string v0, "pref_long_exposure_effect_type"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 7

    const-string v0, "LongExposureMenu"

    const-string v1, "showMenu"

    .line 236
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->a()V

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->i:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 253
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 255
    iget-object v3, p0, Lcom/oplus/camera/longexposure/g;->k:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    .line 256
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v5, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-array v2, v2, [F

    iget v6, p0, Lcom/oplus/camera/longexposure/g;->j:I

    int-to-float v6, v6

    aput v6, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v0, "translationY"

    invoke-static {v5, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->l:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    .line 264
    iget-object v1, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 265
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 266
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d()I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f10022b

    return p0

    :cond_1
    const p0, 0x7f100227

    .line 293
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7f100226

    return p0

    :cond_3
    const p0, 0x7f100225

    .line 289
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_4
    const p0, 0x7f100229

    .line 287
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0
.end method
