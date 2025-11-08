.class public Lcom/oplus/camera/ui/menu/BasicOptionItemList;
.super Landroid/widget/RelativeLayout;
.source "BasicOptionItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;,
        Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;,
        Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;,
        Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;,
        Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;
    }
.end annotation


# instance fields
.field protected A:Landroid/view/animation/Animation$AnimationListener;

.field private B:Z

.field private C:Z

.field private D:Z

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Landroid/content/Context;

.field protected r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field protected s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

.field protected t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

.field protected u:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;

.field protected v:Landroid/view/ViewGroup;

.field protected w:Landroid/view/animation/AnimationSet;

.field protected x:Landroid/view/animation/AnimationSet;

.field protected y:Landroid/view/animation/AnimationSet;

.field protected z:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b:I

    .line 36
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->c:I

    .line 37
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->d:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->e:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->f:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->g:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->i:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->j:I

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->k:I

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->l:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->m:I

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->n:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->o:I

    .line 50
    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->p:I

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->v:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->w:Landroid/view/animation/AnimationSet;

    .line 60
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->x:Landroid/view/animation/AnimationSet;

    .line 61
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->y:Landroid/view/animation/AnimationSet;

    .line 62
    new-instance v2, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->z:Landroid/view/animation/Animation$AnimationListener;

    .line 63
    new-instance v2, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->A:Landroid/view/animation/Animation$AnimationListener;

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    .line 70
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->D:Z

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    .line 77
    new-instance p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-direct {p1, p0, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Lcom/oplus/camera/ui/menu/BasicOptionItemList$1;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07075e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a:I

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07069b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->e:I

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07069d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->f:I

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07069f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->g:I

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07069c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    .line 87
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0706a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->i:I

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07069e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->j:I

    .line 90
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    .line 91
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    .line 93
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07069a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->o:I

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->p:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->D:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->getItemsMeasureWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->j:I

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 108
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->e:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b:I

    .line 109
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->d:I

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->getItemsMeasureWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->j:I

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    .line 113
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->f:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b:I

    .line 114
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->d:I

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->g:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b:I

    .line 117
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->i:I

    iput v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->d:I

    .line 121
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 123
    iget v3, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->m:I

    if-eq v2, v3, :cond_3

    if-eq v1, v3, :cond_3

    .line 126
    iget v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->o:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 127
    iget v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->p:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 128
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->n:I

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 248
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->l:I

    if-eq v0, p1, :cond_1

    .line 249
    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->l:I

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->v:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->y:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->c()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->y:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->y:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    :cond_1
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->D:Z

    .line 292
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->clearAnimation()V

    .line 293
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->y:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(ZZI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gez p2, :cond_0

    move p2, v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 183
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    .line 188
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n()V

    return-void

    .line 197
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeOptionItem(), exception: the index is error, index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasicOptionItemList"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(ZZI)V
    .locals 0

    return-void
.end method

.method public c(I)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
    .locals 1

    if-ltz p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    return-object p0

    .line 210
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOptionItem(), exception: the index is error, index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasicOptionItemList"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a()V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->clearAnimation()V

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->w:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->c()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->w:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->clearAnimation()V

    const/16 v0, 0x8

    .line 300
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/g;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    .line 307
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->clearAnimation()V

    const/16 v0, 0x8

    .line 371
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->B:Z

    .line 375
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->C:Z

    return-void
.end method

.method public getItemsMeasureHeight()I
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 340
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/2addr v1, p0

    :cond_3
    return v1
.end method

.method public getItemsMeasureWidth()I
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 318
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMarginLeft()I
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070554

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070755

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr v2, v0

    mul-int/2addr p0, v2

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getPopUpWindowState()Z
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result p0

    return p0
.end method

.method public h()V
    .locals 3

    const-string v0, "BasicOptionItemList"

    const-string v1, "release()"

    .line 379
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->removeAllViews()V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->v:Landroid/view/ViewGroup;

    .line 402
    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->q:Landroid/content/Context;

    .line 403
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    .line 404
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    .line 405
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->z:Landroid/view/animation/Animation$AnimationListener;

    .line 406
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->A:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 357
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p3, :cond_0

    .line 359
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result p4

    .line 360
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result p5

    add-int/2addr p5, p2

    .line 361
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    move p2, p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setDrawShadow(Z)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 171
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnPopUpFadeOutAnimationStartListener(Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->u:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;

    return-void
.end method

.method public setOptionItemIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setOptionItemListListener(Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 0

    .line 410
    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->m:I

    return-void
.end method

.method public setSelectItemIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 234
    iget v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->k:I

    if-eq p1, v0, :cond_0

    .line 235
    iput p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->k:I

    :cond_0
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
