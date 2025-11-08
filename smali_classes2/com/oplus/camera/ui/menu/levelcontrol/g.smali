.class public Lcom/oplus/camera/ui/menu/levelcontrol/g;
.super Lcom/oplus/camera/ui/menu/setting/q;
.source "FilterEffectMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/g$a;,
        Lcom/oplus/camera/ui/menu/levelcontrol/g$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/oplus/camera/ui/preview/a/l$a;

.field private a:I

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private f:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

.field private h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

.field private i:Landroid/os/Handler;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/animation/AnimatorSet;

.field private w:Landroid/animation/AnimatorSet;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/view/animation/PathInterpolator;

.field private z:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 426
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/q;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    .line 36
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 39
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->f:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 40
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    .line 41
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    .line 42
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    .line 43
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->j:Landroid/animation/AnimatorSet;

    .line 44
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    .line 45
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    .line 46
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->n:Z

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    const/4 v2, 0x1

    .line 50
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->q:I

    .line 51
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->r:I

    const v2, 0x7f0c00b8

    .line 52
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    .line 53
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->t:I

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->u:I

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    .line 58
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    .line 59
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->y:Landroid/view/animation/PathInterpolator;

    .line 60
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->z:Landroid/view/animation/PathInterpolator;

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->A:I

    .line 63
    sget-object v0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->B:Lcom/oplus/camera/ui/preview/a/l$a;

    .line 428
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/levelcontrol/g;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/g$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->j:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/levelcontrol/g;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    return p0
.end method

.method private j()V
    .locals 0

    .line 622
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k()V

    return-void
.end method

.method private k()V
    .locals 5

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 628
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    .line 629
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v1, :cond_0

    .line 632
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->f()I

    move-result v1

    invoke-virtual {v3, v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    :goto_0
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    .line 639
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->q:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setCameraEntryType(I)V

    .line 640
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;Lcom/oplus/camera/ui/menu/levelcontrol/g$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrollBarTextureViewCallback(Lcom/oplus/camera/ui/menu/levelcontrol/b$a;)V

    .line 642
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    instance-of v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    if-eqz v1, :cond_2

    .line 643
    check-cast p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->setRearMirrorEnable(Z)V

    goto :goto_1

    .line 645
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 646
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz p0, :cond_2

    const-string v0, "filter"

    .line 647
    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private l()Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .line 655
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const v2, 0x7f070436

    const/4 v3, -0x2

    const/16 v4, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 687
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    .line 688
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 689
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 690
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 672
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    .line 673
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 674
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 675
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 676
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0709da

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 680
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    .line 681
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 682
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 683
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070547

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 658
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    .line 659
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c73

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 660
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c76

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x10e

    .line 662
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->u:I

    const v3, 0x7f070c74

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    .line 663
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 664
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    .line 666
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 667
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    return-object v0
.end method

.method private m()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 703
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    .line 704
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v1, :cond_1

    .line 707
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->f()I

    move-result v1

    invoke-virtual {v3, v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    :goto_0
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    .line 713
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->q:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setCameraEntryType(I)V

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/g$b;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;Lcom/oplus/camera/ui/menu/levelcontrol/g$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrollBarTextureViewCallback(Lcom/oplus/camera/ui/menu/levelcontrol/b$a;)V

    .line 717
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    instance-of v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    if-eqz v1, :cond_2

    .line 718
    check-cast p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->setRearMirrorEnable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b()V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    instance-of v2, v1, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    if-eqz v2, :cond_0

    .line 93
    check-cast v1, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->setRearMirrorEnable(Z)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->r:I

    .line 106
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v1, :cond_3

    const-string v2, "filter"

    .line 107
    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->b(Ljava/lang/String;)V

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    if-nez v1, :cond_4

    const-string p0, "FilterEffectMenu"

    const-string v0, "showBeautyFilterPanel, mCurrMenuNames is null."

    .line 111
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_4
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 118
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->j()V

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->B:Lcom/oplus/camera/ui/preview/a/l$a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setFilterCategory(Lcom/oplus/camera/ui/preview/a/l$a;)V

    .line 120
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setAlpha(F)V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 126
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x190

    .line 127
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [F

    .line 130
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->getAnimationTranslateDistance()I

    move-result v9

    int-to-float v9, v9

    aput v9, v4, v2

    aput v3, v4, v0

    .line 129
    invoke-static {v7, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    .line 135
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/g$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->A:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 146
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(I)V
    .locals 1

    .line 501
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a:I

    .line 502
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b:Landroid/app/Activity;

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    .line 504
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutMode, layoutMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->t:I

    .line 435
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->u:I

    .line 436
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/a/j;->a(II)V

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x5a

    if-ne p1, p2, :cond_1

    const p1, 0x7f0c00ba

    goto :goto_0

    :cond_1
    const p1, 0x7f0c00bb

    .line 464
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_2
    const p1, 0x7f0c00bc

    .line 459
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_3
    const p1, 0x7f0c00b9

    .line 455
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    const p1, 0x7f0c00bd

    .line 442
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_5
    const/16 p1, 0x10e

    if-ne p1, p2, :cond_6

    const p1, 0x7f0c00be

    .line 444
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_6
    const p1, 0x7f0c00bf

    .line 446
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    goto :goto_1

    :cond_7
    const p1, 0x7f0c00b8

    .line 451
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->s:I

    .line 468
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    .line 469
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 470
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 473
    :cond_8
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    .line 476
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_b

    .line 477
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 478
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 481
    :cond_a
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    .line 484
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_c

    .line 485
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 486
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    .line 489
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p1, :cond_d

    .line 490
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 491
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j()V

    :cond_d
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEffectMenuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    .line 753
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 870
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b(I)V

    .line 871
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c(I)V

    .line 872
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g(F)V

    .line 873
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    .line 874
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 723
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    .line 724
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->c(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show, isAnim: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FilterEffectMenu"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    if-nez p2, :cond_0

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show failed, mCurrMenuNames: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 803
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 805
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->j()V

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->B:Lcom/oplus/camera/ui/preview/a/l$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setFilterCategory(Lcom/oplus/camera/ui/preview/a/l$a;)V

    .line 807
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setAlpha(F)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 810
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    .line 811
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    goto :goto_0

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    .line 814
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "FilterEffectMenu"

    const-string v1, "cancelAnimation."

    .line 282
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->clearAnimation()V

    :cond_1
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbEnterAnimationRunning:Z

    .line 293
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbExitAnimationRunning:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 729
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    .line 745
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    .line 747
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b()V

    .line 163
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d(Z)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 3

    const-string v0, "FilterEffectMenu"

    const-string v1, "hideAnimator"

    .line 823
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 826
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    const/4 v0, 0x0

    .line 830
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 831
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e()V

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v0, :cond_1

    .line 834
    invoke-interface {v0, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->a(Z)V

    .line 837
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 886
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFilterEffectMenu, needAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    .line 189
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 191
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 196
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    const-string v5, "scaleY"

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 200
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    .line 204
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 205
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/g$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScaleY(F)V

    .line 224
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScaleX(F)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public d()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c()V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbEnterAnimationRunning:Z

    .line 525
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbExitAnimationRunning:Z

    const/4 v2, 0x1

    .line 526
    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->hideWithoutAnim(ZZ)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Z)V

    .line 528
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public d(Z)V
    .locals 5

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeFaceBeautyAnimator, needAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 242
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->getAnimationTranslateProp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->getAnimationTranslateDistance()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    .line 250
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    .line 260
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/g$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$3;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 277
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public e()V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reShowFilterEffectMenu, isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reShowFilterEffectMenu failed, mCurrMenuNames: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->k:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e()V

    .line 778
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m()V

    .line 779
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->B:Lcom/oplus/camera/ui/preview/a/l$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setFilterCategory(Lcom/oplus/camera/ui/preview/a/l$a;)V

    .line 781
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    .line 786
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    return-void
.end method

.method public f()V
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->h()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 791
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(ZZ)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 763
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a()V

    :cond_0
    return-void
.end method

.method protected getAnimationTranslateDistance()I
    .locals 2

    .line 907
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->t:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10e

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->u:I

    if-eq v0, v1, :cond_0

    .line 908
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mMenuTranslateY:I

    neg-int p0, p0

    return p0

    .line 911
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mMenuTranslateY:I

    return p0
.end method

.method protected getAnimationTranslateProp()Ljava/lang/String;
    .locals 1

    .line 899
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->t:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "translationX"

    goto :goto_0

    :cond_0
    const-string p0, "translationY"

    :goto_0
    return-object p0
.end method

.method public getTextureHeight()I
    .locals 0

    .line 738
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->p:I

    return p0
.end method

.method public getTextureWidth()I
    .locals 0

    .line 734
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->o:I

    return p0
.end method

.method public h()Z
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideMenuPanel(ZZ)V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "FilterEffectMenu"

    const-string p1, "hideMenuPanel, anim isRunning, return."

    .line 300
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e()V

    return-void
.end method

.method public hideWithoutAnim(ZZ)V
    .locals 2

    const-string p2, "FilterEffectMenu"

    const-string v0, "hideWithoutAnim"

    .line 843
    invoke-static {p2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->i:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 846
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 853
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setExpandMenuAnimation(Landroid/view/View;IZ)V

    .line 854
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    .line 855
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->e()V

    .line 857
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->i()V

    :cond_0
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbEnterAnimationRunning:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbExitAnimationRunning:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->x:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    .line 575
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEffectMenuOpen()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbEnterAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->v:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

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

.method public isEffectOpen()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->c()Z

    move-result p0

    return p0

    .line 618
    :cond_0
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->l:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(ZZ)V

    return v0

    :cond_1
    :goto_0
    const-string p0, "FilterEffectMenu"

    const-string v0, "onBackPressed, onClick, anim isRunning."

    .line 541
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public onSingleTapUp(II)Z
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isEffectMenuOpen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->respondSingleTouchEventY()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 562
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(ZZ)V

    return p1

    :cond_1
    :goto_0
    const-string p0, "FilterEffectMenu"

    const-string p1, "onSingleTapUp, onClick, anim isRunning."

    .line 557
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public scrollToNext()V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f()V

    :cond_0
    return-void
.end method

.method public scrollToPrevious()V
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->g:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->g()V

    :cond_0
    return-void
.end method

.method public setBeautyShowDelay(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->A:I

    return-void
.end method

.method public setCameraEntryType(I)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->q:I

    return-void
.end method

.method public setFilterCategory(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->B:Lcom/oplus/camera/ui/preview/a/l$a;

    return-void
.end method

.method public setFilterEffectMenuListener(Lcom/oplus/camera/ui/menu/levelcontrol/g$a;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMenuOpen, menuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->n:Z

    return-void
.end method

.method public showMenuPanel(Ljava/lang/String;ZZ)V
    .locals 2

    .line 67
    iget-boolean p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->mbExitAnimationRunning:Z

    const-string v0, "FilterEffectMenu"

    if-eqz p3, :cond_0

    const-string p0, "showMenuPanel, ExitAnimatorSet.isRunning, return"

    .line 68
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    if-eqz p3, :cond_4

    .line 74
    invoke-interface {p3}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->d()Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    invoke-interface {p3}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->b()Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p3, 0x1

    .line 81
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->r:I

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h:Lcom/oplus/camera/ui/menu/levelcontrol/g$a;

    const-string v1, "filter"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/g$a;->b(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->f(Z)V

    :cond_3
    const/4 p3, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/q;->showMenuPanel(Ljava/lang/String;ZZ)V

    return-void

    :cond_4
    :goto_0
    const-string p0, "showMenuPanel, mMenuListener null, return!"

    .line 75
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
