.class public Lcom/oplus/camera/professional/LevelPanel;
.super Landroid/widget/RelativeLayout;
.source "LevelPanel.java"

# interfaces
.implements Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;
    }
.end annotation


# static fields
.field protected static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/oplus/camera/professional/z;

.field protected c:Lcom/oplus/camera/professional/w;

.field protected d:Landroid/widget/TextView;

.field protected e:Lcom/oplus/camera/professional/a;

.field protected f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/OplusTextView;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Landroid/content/SharedPreferences;

.field private n:Ljava/util/regex/Pattern;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;ZZIILcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const-string v1, "[\u4e00-\u9fa5]"

    .line 63
    iput-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->h:I

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->k:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    .line 70
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->n:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    .line 71
    iput-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->o:Z

    .line 72
    iput-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    .line 73
    iput-boolean v1, p0, Lcom/oplus/camera/professional/LevelPanel;->q:Z

    .line 74
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    .line 75
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    .line 97
    iput p6, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    .line 98
    iput p7, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 100
    iput-object p9, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    .line 101
    iput-object p8, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    .line 102
    iput-boolean p2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    .line 103
    iput-boolean p5, p0, Lcom/oplus/camera/professional/LevelPanel;->q:Z

    .line 104
    iput-boolean p4, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    .line 105
    invoke-direct {p0, p3}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const-string v1, "[\u4e00-\u9fa5]"

    .line 63
    iput-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->h:I

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->k:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    .line 70
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->n:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    .line 71
    iput-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->o:Z

    .line 72
    iput-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    .line 73
    iput-boolean v1, p0, Lcom/oplus/camera/professional/LevelPanel;->q:Z

    .line 74
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    .line 75
    iput v1, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    .line 83
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 84
    iput-object p7, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    .line 85
    iput-object p6, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    .line 86
    iput-boolean p2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    .line 87
    iput-boolean p5, p0, Lcom/oplus/camera/professional/LevelPanel;->q:Z

    .line 88
    iput-boolean p4, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    .line 89
    invoke-direct {p0, p3}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 167
    sget-object p0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 682
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/w;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 684
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 685
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 686
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    .line 687
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/professional/LevelPanel$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/LevelPanel$6;-><init>(Lcom/oplus/camera/professional/LevelPanel;)V

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 706
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 5

    .line 557
    new-instance v0, Lcom/oplus/camera/professional/w;

    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    .line 558
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->setItemValueText(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/widget/TextView;)V

    .line 562
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->addView(Landroid/view/View;)V

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 565
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    .line 566
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/widget/TextView;)V

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->addView(Landroid/view/View;)V

    .line 573
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    const v3, 0x7f0706a5

    invoke-static {v0, v3, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 574
    new-instance v2, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    iget-object v3, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    .line 575
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setId(I)V

    .line 576
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setScaleBarValueChangeListener(Lcom/oplus/camera/ui/CommonComponent/ScaleBar$ScaleBarValueChangeListener;)V

    .line 577
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    iget-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setAuto(ZZ)V

    .line 578
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setShadowLayer()V

    .line 580
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    float-to-int v0, v0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setPadding(IIII)V

    .line 581
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-static {}, Lcom/oplus/camera/professional/LevelPanel;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setId(I)V

    .line 582
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->addView(Landroid/view/View;)V

    .line 584
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 586
    new-instance v0, Lcom/oplus/camera/professional/a;

    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oplus/camera/professional/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    .line 587
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    iget-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/a;->setAuto(Z)V

    .line 588
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    invoke-static {}, Lcom/oplus/camera/professional/LevelPanel;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/a;->setId(I)V

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/a;->setIncludeFontPadding(Z)V

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const v2, 0x7f070703

    .line 592
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 591
    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/professional/a;->setTextSize(IF)V

    .line 593
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/a;->setTypeface(Landroid/graphics/Typeface;)V

    .line 594
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/a;->setGravity(I)V

    .line 595
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    iget-boolean v0, p0, Lcom/oplus/camera/professional/LevelPanel;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/a;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const v0, 0x7f0805ca

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/a;->setBackgroundResource(I)V

    .line 597
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    new-instance v0, Lcom/oplus/camera/professional/LevelPanel$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/LevelPanel$4;-><init>(Lcom/oplus/camera/professional/LevelPanel;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->addView(Landroid/view/View;)V

    .line 607
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->e()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070716

    .line 613
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHeight(I)V

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v1, 0x7f070718

    .line 616
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 615
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 617
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f060470

    .line 618
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    .line 620
    invoke-static {}, Lcom/oplus/camera/professional/LevelPanel;->generateViewId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setId(I)V

    .line 622
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 623
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 624
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 625
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(ZZ)V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 630
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 631
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    .line 633
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 636
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/professional/LevelPanel$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/LevelPanel$5;-><init>(Lcom/oplus/camera/professional/LevelPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0xbb8

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p2, :cond_2

    int-to-long v1, p1

    .line 662
    iget-object p2, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    const-string p0, "LevelPanel"

    const-string p1, "animateHintTextView, abort duplicate animation."

    .line 663
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 668
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 669
    iget-object p2, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 670
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 671
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 672
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    .line 675
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Lcom/oplus/camera/professional/LevelPanel;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/professional/LevelPanel;->a()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->setItemValueText(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_professional_exposure_time_key"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    const p1, 0x7f10013e

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static c()V
    .locals 6

    .line 138
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v1, "2000"

    const-string v2, "pref_professional_whitebalance_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v2, "100"

    const-string v3, "pref_professional_iso_key"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v3, "0.00"

    const-string v4, "pref_professional_exposure_compensation_key"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v4, "1/50s"

    const-string v5, "pref_professional_exposure_time_key"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v5, "pref_professional_focus_mode_key"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v5, "pref_film_mode_white_balance"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_iso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_exposure"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_shutter"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_focus"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setAutoValueMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 163
    sput-object p0, Lcom/oplus/camera/professional/LevelPanel;->a:Ljava/util/HashMap;

    return-void
.end method

.method private setItemValueText(Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pref_professional_exposure_compensation_key"

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 189
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/z;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/z;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v3}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    .line 203
    invoke-virtual {v3}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/LevelPanel;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 205
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 206
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move-object p0, v2

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method protected a(Lcom/oplus/camera/professional/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(II)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    .line 377
    iput p2, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    return-void
.end method

.method public a(ILandroid/app/Activity;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getCurrentIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setCurrentIndex(I)V

    if-eqz p2, :cond_1

    .line 257
    new-instance v0, Lcom/oplus/camera/professional/LevelPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/professional/LevelPanel$1;-><init>(Lcom/oplus/camera/professional/LevelPanel;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setCurrentIndex(I)V

    if-eqz p2, :cond_0

    .line 286
    new-instance v0, Lcom/oplus/camera/professional/LevelPanel$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/oplus/camera/professional/LevelPanel$3;-><init>(Lcom/oplus/camera/professional/LevelPanel;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getCurrentIndex()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Landroid/content/SharedPreferences;)I
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 713
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 716
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz p0, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->initDataIndex(I)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/app/Activity;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 273
    new-instance v0, Lcom/oplus/camera/professional/LevelPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/professional/LevelPanel$2;-><init>(Lcom/oplus/camera/professional/LevelPanel;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/LevelPanel;->setItemValueText(Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    if-eqz p0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setLevelNum(I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget v1, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    const/16 v0, 0x10e

    .line 386
    iget v1, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    if-ne v0, v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setRotation(F)V

    .line 389
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTranslationX(F)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setRotation(F)V

    .line 393
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 396
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTranslationX(F)V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setRotation(F)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getScaleBarLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getAutoTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget v0, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    if-ne v2, v0, :cond_3

    const v0, 0x7f0704e0

    .line 406
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 407
    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/a;->setTranslationY(F)V

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const v2, 0x7f0805ca

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/a;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    const v2, 0x7f0805cb

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/a;->setBackgroundResource(I)V

    .line 414
    :cond_4
    :goto_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_6

    .line 419
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getValueTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/w;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setTextAlignment(I)V

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 424
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getHintTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public getAutoTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .line 462
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070706

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 463
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 465
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 467
    iget v0, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    const/16 v2, 0xb

    const/4 v5, 0x1

    if-ne v5, v0, :cond_1

    const/16 v0, 0xc

    .line 468
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 469
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/16 v1, 0x10e

    .line 472
    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    if-ne v1, p0, :cond_0

    const/16 p0, 0x9

    .line 473
    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 474
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 477
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v4, v0, :cond_2

    .line 480
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 481
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 482
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getId()I

    move-result p0

    invoke-virtual {v4, v5, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const p0, 0x7f070521

    .line 484
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const p0, 0x7f070522

    .line 485
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 487
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 488
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 489
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getId()I

    move-result p0

    invoke-virtual {v4, v5, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const p0, 0x7f070700

    .line 491
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const p0, 0x7f070701

    .line 492
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_0
    return-object v4
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->getCurrentIndex()I

    move-result p0

    return p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHintTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 535
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 538
    iget v1, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 540
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x10e

    .line 542
    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    const/4 v4, 0x0

    if-ne v3, p0, :cond_0

    const/16 p0, 0x9

    .line 543
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 544
    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    .line 546
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 547
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 p0, 0xe

    .line 550
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    return-object v0
.end method

.method public getParameterNamesList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getParameterValueList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getScaleBarLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 10

    .line 431
    iget v0, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 433
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704e2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 434
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x9

    .line 435
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x3

    const/16 v3, 0xc

    const v4, 0x7f0709ad

    const v5, 0x7f0709b0

    const/4 v6, 0x2

    const v7, 0x7f0709b7

    if-ne v2, v0, :cond_2

    .line 437
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/2addr v0, v6

    iget-boolean v2, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    if-eqz v2, :cond_1

    move v1, v6

    :cond_1
    div-int/2addr v0, v1

    .line 438
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 439
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 440
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 443
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 445
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0706a5

    sget v8, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v0, v2, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 448
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v8

    iget-boolean v9, p0, Lcom/oplus/camera/professional/LevelPanel;->l:Z

    if-eqz v9, :cond_3

    move v1, v6

    :cond_3
    div-int/2addr v8, v1

    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 450
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    .line 451
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v1, v0

    invoke-direct {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 454
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 455
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public getSubModeBarData()Lcom/oplus/camera/professional/z;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    return-object p0
.end method

.method public getValueTextLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .line 501
    iget v0, p0, Lcom/oplus/camera/professional/LevelPanel;->r:I

    const/16 v1, 0xa

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 502
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 506
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x10e

    .line 508
    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel;->s:I

    const/4 v4, 0x0

    if-ne v3, p0, :cond_0

    const/16 p0, 0x9

    .line 509
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 510
    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    .line 512
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 513
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xe

    if-nez v0, :cond_2

    .line 516
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 518
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    const v5, 0x7f070519

    if-ne v4, v0, :cond_3

    .line 520
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 521
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 522
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 523
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 524
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07052c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 526
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 527
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .line 338
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 340
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz p0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onActionUp()V
    .locals 0

    .line 836
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    if-eqz p0, :cond_0

    .line 837
    invoke-interface {p0}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onActionUp()V

    :cond_0
    return-void
.end method

.method public onBarMoving()V
    .locals 2

    .line 818
    iget-boolean v0, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/LevelPanel;->setBarAuto(Z)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 822
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBarScrolling(Z)V
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    if-eqz p0, :cond_0

    .line 830
    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onBarScrolling(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/oplus/camera/professional/LevelPanel;->o:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 333
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onValueChange(I)V
    .locals 2

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LevelPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    if-eqz v0, :cond_0

    .line 811
    invoke-interface {v0, p1}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onManualValueChange(I)V

    .line 812
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->m:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->setItemValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAlign(I)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setAlign(I)V

    :cond_0
    return-void
.end method

.method public setBarAuto(Z)V
    .locals 2

    .line 306
    iput-boolean p1, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(ZZ)V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz p1, :cond_1

    .line 313
    iget-boolean v1, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setAuto(ZZ)V

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->e:Lcom/oplus/camera/professional/a;

    if-eqz p1, :cond_2

    .line 317
    iget-boolean p0, p0, Lcom/oplus/camera/professional/LevelPanel;->p:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/a;->setAuto(Z)V

    :cond_2
    return-void
.end method

.method public setScaleBarTouchable(Z)V
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    if-eqz p0, :cond_0

    .line 858
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public setValueChangeListener(Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->j:Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 348
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v3, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(ZZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    const/16 v0, 0x8

    if-ne v0, p1, :cond_4

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 358
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    if-eqz p0, :cond_4

    .line 359
    invoke-virtual {p0}, Lcom/oplus/camera/professional/w;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_4
    :goto_1
    return-void
.end method
