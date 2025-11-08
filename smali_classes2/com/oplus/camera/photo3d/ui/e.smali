.class public Lcom/oplus/camera/photo3d/ui/e;
.super Ljava/lang/Object;
.source "SceneMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/ui/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout$LayoutParams;

.field private f:Lcom/oplus/camera/photo3d/ui/f;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/view/animation/PathInterpolator;

.field private j:Landroid/view/animation/PathInterpolator;

.field private k:I

.field private l:Lcom/oplus/camera/photo3d/ui/e$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->i:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->j:Landroid/view/animation/PathInterpolator;

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/e;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/e;)Lcom/oplus/camera/photo3d/ui/e$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->l:Lcom/oplus/camera/photo3d/ui/e$a;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/ui/e;)Landroid/content/SharedPreferences;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/ui/e;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/photo3d/ui/e;->k:I

    .line 62
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 64
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipChildren(Z)V

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/e;->d()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/e;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 71
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oplus/camera/photo3d/ui/e$1;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/photo3d/ui/e$1;-><init>(Lcom/oplus/camera/photo3d/ui/e;F)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/e;->f()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method private d()Landroid/widget/RelativeLayout;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->d:Landroid/widget/RelativeLayout;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    .line 100
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->e:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private f()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->f:Lcom/oplus/camera/photo3d/ui/f;

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "pref_3d_photo_scene_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v3, Lcom/oplus/camera/photo3d/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    const v5, 0x7f10066d

    .line 112
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0030

    const/4 v6, 0x0

    if-ne v1, v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-direct {v3, v1, v4, v5, v7}, Lcom/oplus/camera/photo3d/ui/d;-><init>(ILjava/lang/String;IZ)V

    .line 111
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v3, Lcom/oplus/camera/photo3d/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    const v5, 0x7f10066b

    .line 116
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f002f

    const/4 v7, 0x2

    if-ne v7, v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-direct {v3, v7, v4, v5, v8}, Lcom/oplus/camera/photo3d/ui/d;-><init>(ILjava/lang/String;IZ)V

    .line 115
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/oplus/camera/photo3d/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    const v5, 0x7f100671

    .line 120
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0032

    const/4 v7, 0x3

    if-ne v7, v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-direct {v3, v7, v4, v5, v8}, Lcom/oplus/camera/photo3d/ui/d;-><init>(ILjava/lang/String;IZ)V

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v3, Lcom/oplus/camera/photo3d/ui/d;

    iget-object v4, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    const v5, 0x7f10066f

    .line 124
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0031

    const/4 v7, 0x4

    if-ne v7, v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v6

    :goto_3
    invoke-direct {v3, v7, v4, v5, v1}, Lcom/oplus/camera/photo3d/ui/d;-><init>(ILjava/lang/String;IZ)V

    .line 123
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/oplus/camera/photo3d/ui/f;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/photo3d/ui/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->f:Lcom/oplus/camera/photo3d/ui/f;

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->f:Lcom/oplus/camera/photo3d/ui/f;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/e$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/ui/e$2;-><init>(Lcom/oplus/camera/photo3d/ui/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/f;->a(Lcom/oplus/camera/photo3d/ui/f$a;)V

    .line 141
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->f:Lcom/oplus/camera/photo3d/ui/f;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/oplus/camera/photo3d/ui/e$a;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->l:Lcom/oplus/camera/photo3d/ui/e$a;

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 145
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/e;->c()V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void

    .line 164
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 169
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/e;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    .line 170
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    iget-object v5, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-array v2, v2, [F

    iget v6, p0, Lcom/oplus/camera/photo3d/ui/e;->k:I

    int-to-float v6, v6

    aput v6, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v0, "translationY"

    invoke-static {v5, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->j:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    .line 178
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 179
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a()Z
    .locals 1

    .line 236
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/e;->d()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "SceneMenu"

    if-nez v0, :cond_0

    const-string p0, "hideMenu, return for not init"

    .line 185
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x4

    .line 191
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "hideMenu, view is showing, just invisible and return!"

    .line 197
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 207
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 209
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/camera/photo3d/ui/e;->k:I

    int-to-float v3, v3

    aput v3, v0, v2

    const-string v2, "translationY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->j:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    .line 219
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oplus/camera/photo3d/ui/e$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/photo3d/ui/e$3;-><init>(Lcom/oplus/camera/photo3d/ui/e;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/e;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
