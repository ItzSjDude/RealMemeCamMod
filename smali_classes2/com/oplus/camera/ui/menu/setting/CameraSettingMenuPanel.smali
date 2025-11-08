.class public Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;
.super Landroid/widget/LinearLayout;
.source "CameraSettingMenuPanel.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;
.implements Lcom/oplus/camera/ui/menu/setting/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;,
        Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/oplus/camera/ui/CameraUIListener;

.field public e:Lcom/oplus/camera/ComboPreferences;

.field public f:Landroid/content/Context;

.field public g:I

.field private final h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

.field private t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 70
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    .line 71
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    .line 72
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    .line 74
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    .line 75
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j:I

    .line 76
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Z

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Z

    .line 78
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    .line 79
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Z

    .line 80
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o:I

    .line 82
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    .line 85
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 86
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07075c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 70
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    .line 71
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    .line 74
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j:I

    .line 76
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Z

    .line 77
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Z

    .line 78
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    .line 79
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Z

    .line 80
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o:I

    .line 82
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    .line 85
    new-instance p2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 86
    new-instance p2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07075c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    return-void
.end method

.method private a(FF)V
    .locals 4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMenuLayoutLeftForFull, itemSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " firstLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 448
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v2

    float-to-int v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(FZ)V
    .locals 5

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMenuViewLeftVisibility, itemSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isRightToLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 426
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 427
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    :goto_1
    int-to-float v0, v0

    goto :goto_2

    .line 429
    :cond_0
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    add-int/2addr v0, v3

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 434
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v3

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V
    .locals 6

    .line 946
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 947
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x0

    .line 948
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 949
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 950
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 951
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 952
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 953
    invoke-virtual {v5, v0}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 954
    invoke-virtual {v5, v0}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 955
    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 956
    invoke-virtual {p0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 957
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 958
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;F)V
    .locals 11

    .line 809
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v0

    .line 810
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I()I

    move-result v1

    .line 811
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 812
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d()I

    move-result v3

    sub-int/2addr v2, v3

    .line 811
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 814
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a()F

    move-result v3

    sub-float/2addr v3, p2

    .line 815
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v4

    .line 816
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 817
    invoke-virtual {v6, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(I)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v6

    .line 816
    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v4, v6, v4

    const/16 v7, 0x8

    if-gez v4, :cond_0

    .line 820
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 821
    invoke-virtual {p1, v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto/16 :goto_3

    .line 822
    :cond_0
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d()I

    move-result v4

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v9, v4, :cond_a

    if-le v9, v2, :cond_a

    cmpl-float p2, v3, p2

    if-eqz p2, :cond_a

    cmpl-float p2, v3, v6

    if-eqz p2, :cond_a

    int-to-float p2, v1

    .line 828
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    if-eq v1, v2, :cond_6

    .line 829
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v2, v9

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v0

    if-le v2, v9, :cond_4

    cmpg-float v2, v6, v3

    if-gez v2, :cond_3

    .line 835
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, p2, v2

    .line 837
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move p2, v2

    goto :goto_2

    .line 841
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    goto :goto_2

    .line 843
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v2

    if-ge v2, v9, :cond_7

    cmpg-float v2, v6, v3

    if-gez v2, :cond_5

    .line 845
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, p2

    goto :goto_0

    .line 847
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, p2, v2

    .line 850
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    float-to-int v0, v2

    if-le v1, v0, :cond_2

    goto :goto_2

    :cond_6
    :goto_1
    cmpg-float v0, v6, v3

    if-gez v0, :cond_7

    .line 831
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v0

    .line 856
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 857
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 859
    invoke-virtual {v2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v2

    .line 858
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_9

    float-to-int p2, p2

    .line 860
    invoke-virtual {p1, v1, p2, v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(III)V

    goto :goto_3

    .line 862
    :cond_9
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result p2

    if-eqz p2, :cond_b

    cmpl-float p2, v6, v5

    if-nez p2, :cond_b

    .line 864
    invoke-virtual {p1, v7, v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    goto :goto_3

    .line 868
    :cond_a
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result p2

    if-eqz p2, :cond_b

    cmpl-float p2, v6, v5

    if-nez p2, :cond_b

    .line 870
    invoke-virtual {p1, v7, v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    .line 874
    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;IIIFF)V
    .locals 8

    .line 771
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a()F

    move-result v0

    sub-float/2addr v0, p5

    .line 774
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, p6, v2

    add-float/2addr v1, v3

    cmpl-float p5, p5, v1

    const/4 v3, 0x0

    if-lez p5, :cond_1

    cmpg-float p5, v3, v0

    if-gez p5, :cond_0

    .line 776
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    add-float/2addr p5, p6

    goto :goto_2

    .line 778
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    :goto_0
    sub-float p5, p6, p5

    goto :goto_2

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    cmpl-float p5, p5, v1

    if-nez p5, :cond_2

    cmpl-float p5, v3, v0

    if-lez p5, :cond_4

    .line 782
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    goto :goto_0

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    cmpg-float p5, p5, v1

    if-gez p5, :cond_4

    cmpg-float p5, v3, v0

    if-gez p5, :cond_3

    .line 786
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    sub-float p5, p6, p5

    goto :goto_1

    .line 788
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    add-float/2addr p5, p6

    .line 791
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v0, v0, p5

    if-ltz v0, :cond_5

    :cond_4
    move p5, p6

    :cond_5
    :goto_2
    float-to-int v0, p5

    float-to-int p6, p6

    if-eq v0, p6, :cond_7

    .line 796
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    float-to-double v4, p5

    .line 797
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 798
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 800
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p0

    .line 799
    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result p0

    cmpl-float p0, v3, p0

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 801
    invoke-virtual {p1, v0, p6, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(III)V

    goto :goto_3

    :cond_7
    add-int/2addr p2, p6

    add-int/2addr p3, p4

    .line 803
    invoke-virtual {p1, p6, p4, p2, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    :goto_3
    return-void
.end method

.method private a(ZIIII)V
    .locals 10

    sub-int/2addr p5, p3

    .line 497
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 502
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->e()V

    const/4 p2, 0x0

    move p3, p2

    move p4, p3

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 506
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->M()V

    .line 508
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p4, p4, 0x1

    .line 510
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    rsub-int/lit8 p4, p4, 0x5

    int-to-float p4, p4

    .line 514
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    mul-float/2addr p4, v0

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget v0, v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iput p1, v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 521
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 522
    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(FF)V

    :cond_3
    move v3, p2

    move v2, p4

    move p4, v3

    .line 529
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge p4, v4, :cond_b

    .line 530
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const/16 v5, 0x8

    if-eqz v4, :cond_8

    .line 532
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v6

    if-eq v5, v6, :cond_8

    .line 533
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v5

    .line 534
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredHeight()I

    move-result v6

    sub-int v7, p5, v6

    .line 535
    div-int/lit8 v7, v7, 0x2

    .line 537
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v8

    if-ne v1, v8, :cond_4

    return-void

    .line 541
    :cond_4
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 542
    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 543
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v8, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 549
    invoke-direct {p0, v8, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 550
    invoke-virtual {v4, p2, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 554
    invoke-virtual {v4, p2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    .line 557
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-ge v3, p3, :cond_a

    .line 560
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    float-to-int v8, v2

    add-int v9, v8, v5

    add-int/2addr v6, v7

    .line 561
    invoke-virtual {v4, v8, v7, v9, v6}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    int-to-float v4, v5

    add-float/2addr v2, v4

    add-float/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_a

    .line 567
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 568
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v6, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v6

    .line 569
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v7, v6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 572
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 575
    invoke-direct {p0, v6, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 576
    invoke-virtual {v4, v5, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    .line 580
    :cond_9
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_2

    :cond_b
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 3

    .line 2162
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    .line 2163
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    .line 2165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2169
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2173
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2174
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2175
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 1304
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    .line 1304
    invoke-static {v2, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getVisibility()I

    move-result v3

    .line 1306
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1307
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ac()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 1308
    invoke-virtual {p0, p2, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    .line 1303
    :goto_1
    invoke-virtual {p2, p1, v2, v3, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V
    .locals 2

    .line 1502
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->Q()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1503
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1511
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    .line 1512
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 1513
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1515
    instance-of p1, p0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    .line 1516
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 1518
    :cond_1
    instance-of p1, p0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    .line 1519
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    :goto_0
    return-void

    .line 1506
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCameraSubSettingMenuWithAnimation view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "drawable: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingMenuPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(ZIIII)V
    .locals 26

    move-object/from16 v7, p0

    sub-int v8, p4, p2

    .line 586
    iget v0, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v9, v8, v1

    sub-int v10, p5, p3

    int-to-float v0, v0

    .line 598
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bU()Z

    move-result v1

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v11

    .line 602
    :goto_0
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->e()V

    move v1, v11

    move v13, v1

    move v14, v13

    .line 604
    :goto_1
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 605
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 607
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v3

    if-nez v3, :cond_1

    .line 608
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v3

    add-int/2addr v13, v3

    add-int/lit8 v14, v14, 0x1

    .line 610
    iget-object v3, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x1

    const/16 v16, 0x0

    if-le v9, v13, :cond_3

    if-le v14, v15, :cond_3

    sub-int v1, v9, v13

    int-to-float v1, v1

    add-int/lit8 v2, v14, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v6, v1

    goto :goto_2

    :cond_3
    move/from16 v6, v16

    .line 618
    :goto_2
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget v1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_4

    .line 619
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iput v6, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    move/from16 v17, v15

    goto :goto_3

    :cond_4
    move/from16 v17, v11

    .line 623
    :goto_3
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a()F

    move-result v1

    sub-float v18, v1, v6

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutDirection()I

    move-result v1

    if-ne v15, v1, :cond_5

    move v5, v15

    goto :goto_4

    :cond_5
    move v5, v11

    .line 626
    :goto_4
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 627
    invoke-direct {v7, v6, v5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(FZ)V

    .line 630
    :cond_6
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d()I

    move-result v1

    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 631
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->d()I

    move-result v2

    sub-int/2addr v1, v2

    .line 630
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v3, v11

    move/from16 v1, v16

    .line 634
    :goto_5
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_23

    if-eqz v5, :cond_8

    .line 636
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    if-ltz v2, :cond_7

    .line 637
    iget-object v15, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_7
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_6
    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    goto :goto_7

    .line 639
    :cond_8
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    :goto_7
    move-object v15, v2

    const/16 v2, 0x8

    if-eqz v15, :cond_21

    .line 642
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v11

    if-eq v2, v11, :cond_20

    .line 643
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v11

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredHeight()I

    move-result v19

    sub-int v2, v10, v19

    move/from16 p3, v0

    const/4 v0, 0x2

    .line 645
    div-int/2addr v2, v0

    .line 646
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I()I

    move-result v0

    move/from16 p5, v1

    .line 648
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v1

    move/from16 v20, v3

    const/4 v3, 0x1

    if-ne v3, v1, :cond_9

    return-void

    :cond_9
    if-ne v14, v3, :cond_c

    .line 653
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 654
    iget v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    :goto_8
    int-to-float v1, v1

    move v3, v1

    goto :goto_9

    .line 655
    :cond_a
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 656
    iget v1, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    add-int/2addr v1, v9

    sub-int/2addr v1, v11

    goto :goto_8

    :cond_b
    sub-int v1, v8, v13

    const/4 v3, 0x2

    .line 658
    div-int/2addr v1, v3

    goto :goto_8

    :cond_c
    move/from16 v3, p3

    .line 662
    :goto_9
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 663
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    goto :goto_a

    :cond_d
    move/from16 v1, p5

    .line 666
    :goto_a
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result v21

    if-nez v21, :cond_1b

    move/from16 v21, v5

    iget-object v5, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 667
    iget-object v5, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v5, v15}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v5

    move/from16 v22, v8

    .line 668
    iget-object v8, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    move/from16 v23, v9

    iget-object v9, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 669
    invoke-virtual {v9, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(F)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v9

    .line 668
    invoke-virtual {v8, v9}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)F

    move-result v8

    if-nez v0, :cond_e

    float-to-int v9, v3

    move/from16 v24, v10

    add-int v10, v9, v11

    move/from16 v25, v13

    add-int v13, v2, v19

    .line 672
    invoke-virtual {v15, v9, v2, v10, v13}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_b

    :cond_e
    move/from16 v24, v10

    move/from16 v25, v13

    :goto_b
    cmpl-float v9, v16, v3

    if-eqz v9, :cond_11

    cmpg-float v9, v16, v5

    if-gez v9, :cond_11

    .line 676
    iget v9, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    cmpl-float v9, v16, v9

    if-eqz v9, :cond_11

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    int-to-float v13, v11

    add-float/2addr v10, v13

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_11

    .line 680
    iget-object v8, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v8, v15}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    move-result v8

    if-eqz v8, :cond_f

    float-to-int v8, v3

    if-eq v8, v0, :cond_f

    float-to-int v0, v1

    if-eq v0, v8, :cond_f

    .line 683
    invoke-virtual {v15, v0, v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_c

    :cond_f
    float-to-int v0, v5

    float-to-int v5, v3

    if-ne v0, v5, :cond_10

    .line 686
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    add-int v0, v5, v11

    add-int v8, v2, v19

    .line 687
    invoke-virtual {v15, v5, v2, v0, v8}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_c

    .line 690
    :cond_10
    invoke-virtual {v15, v0, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    :goto_c
    move v9, v1

    move v2, v3

    move v1, v6

    move/from16 v13, v20

    const/4 v3, 0x0

    move/from16 v20, v4

    goto/16 :goto_10

    .line 694
    :cond_11
    iget v0, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    cmpl-float v0, v16, v0

    if-eqz v0, :cond_17

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v9, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    int-to-float v10, v11

    add-float/2addr v9, v10

    cmpl-float v0, v0, v9

    if-nez v0, :cond_12

    goto/16 :goto_e

    :cond_12
    if-eqz v17, :cond_15

    const/4 v0, 0x2

    if-le v0, v4, :cond_13

    cmpl-float v0, v18, v16

    if-eqz v0, :cond_13

    cmpl-float v0, v18, v6

    if-eqz v0, :cond_13

    cmpl-float v0, v3, v16

    if-eqz v0, :cond_13

    move-object/from16 v0, p0

    move v9, v1

    move-object v1, v15

    move v10, v2

    move v2, v11

    move v8, v3

    move/from16 v13, v20

    move/from16 v3, v19

    move/from16 v20, v4

    move v4, v10

    move v5, v6

    move v10, v6

    move v6, v8

    .line 716
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;IIIFF)V

    move v2, v8

    move v1, v10

    goto :goto_d

    :cond_13
    move v9, v1

    move v10, v2

    move v2, v3

    move v1, v6

    move/from16 v13, v20

    move/from16 v20, v4

    cmpl-float v0, v16, v5

    if-nez v0, :cond_14

    .line 719
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 720
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(F)Z

    move-result v0

    if-eqz v0, :cond_14

    cmpl-float v0, v16, v8

    if-nez v0, :cond_14

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 722
    invoke-virtual {v15, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    :cond_14
    float-to-int v0, v2

    add-int v3, v0, v11

    add-int v4, v10, v19

    .line 725
    invoke-virtual {v15, v0, v10, v3, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_d

    :cond_15
    move v9, v1

    move v10, v2

    move v2, v3

    move v1, v6

    move/from16 v13, v20

    move/from16 v20, v4

    cmpl-float v0, v16, v5

    if-nez v0, :cond_16

    .line 729
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 730
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(F)Z

    move-result v0

    if-eqz v0, :cond_16

    cmpl-float v0, v16, v8

    if-nez v0, :cond_16

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 732
    invoke-virtual {v15, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    :cond_16
    float-to-int v0, v2

    add-int v3, v0, v11

    add-int v4, v10, v19

    .line 735
    invoke-virtual {v15, v0, v10, v3, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    :goto_d
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_17
    :goto_e
    move v9, v1

    move v10, v2

    move v2, v3

    move v1, v6

    move/from16 v13, v20

    move/from16 v20, v4

    cmpl-float v0, v16, v5

    if-nez v0, :cond_18

    .line 696
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    .line 697
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b(F)Z

    move-result v0

    if-eqz v0, :cond_18

    cmpl-float v0, v16, v8

    if-nez v0, :cond_18

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 699
    invoke-virtual {v15, v3, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    float-to-int v0, v2

    add-int v4, v0, v11

    add-int v5, v10, v19

    .line 700
    invoke-virtual {v15, v0, v10, v4, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto/16 :goto_10

    :cond_18
    const/4 v3, 0x0

    cmpg-float v0, v16, v5

    if-gez v0, :cond_19

    if-nez v12, :cond_19

    .line 704
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    float-to-int v0, v5

    float-to-int v4, v2

    .line 705
    invoke-virtual {v15, v0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_10

    :cond_19
    float-to-int v0, v2

    add-int v4, v0, v11

    add-int v5, v10, v19

    .line 708
    invoke-virtual {v15, v0, v10, v4, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_10

    :cond_1a
    move v2, v3

    goto :goto_f

    :cond_1b
    move v2, v3

    move/from16 v21, v5

    :goto_f
    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    move/from16 v13, v20

    const/4 v3, 0x0

    move v9, v1

    move/from16 v20, v4

    move v1, v6

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1e

    .line 739
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v0

    if-nez v0, :cond_1c

    cmpl-float v0, v9, v2

    if-eqz v0, :cond_1c

    .line 741
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v12, :cond_1c

    float-to-int v0, v9

    float-to-int v4, v2

    .line 743
    invoke-virtual {v15, v0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_10

    .line 745
    :cond_1c
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result v0

    if-eqz v0, :cond_1d

    float-to-int v0, v2

    .line 746
    invoke-virtual {v15, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    :cond_1d
    float-to-int v0, v2

    .line 749
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 750
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    .line 751
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 749
    invoke-virtual {v15, v0, v4, v5, v6}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    .line 755
    :cond_1e
    :goto_10
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 756
    invoke-virtual {v15, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    goto :goto_11

    :cond_1f
    const/4 v0, 0x1

    .line 759
    :goto_11
    iget-object v4, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v4, v11

    add-float/2addr v4, v1

    add-float/2addr v2, v4

    goto :goto_13

    :cond_20
    move/from16 p3, v0

    move/from16 p5, v1

    move/from16 v20, v4

    move/from16 v21, v5

    move v1, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v0, 0x1

    move v13, v3

    const/4 v3, 0x0

    goto :goto_12

    :cond_21
    move/from16 p3, v0

    move/from16 p5, v1

    move/from16 v20, v4

    move/from16 v21, v5

    move v1, v6

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v0, 0x1

    move v13, v3

    move v3, v11

    :goto_12
    if-eqz v15, :cond_22

    .line 761
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v4

    if-ne v2, v4, :cond_22

    iget-object v2, v7, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    .line 762
    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 763
    invoke-virtual {v15}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result v2

    if-nez v2, :cond_22

    .line 764
    invoke-direct {v7, v15, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;F)V

    :cond_22
    move/from16 v2, p3

    move/from16 v9, p5

    :goto_13
    add-int/lit8 v4, v13, 0x1

    move v15, v0

    move v6, v1

    move v0, v2

    move v11, v3

    move v3, v4

    move v1, v9

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v13, v25

    goto/16 :goto_5

    :cond_23
    return-void
.end method

.method private b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 0

    .line 1493
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ad()I

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_1

    .line 1494
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ad()I

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    if-ne p0, p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    .line 1367
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1371
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1375
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    .line 1376
    iget-object v2, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1377
    iget v2, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-ne v2, p2, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private d(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1790
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1796
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1798
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 200
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    .line 1284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeAddContainMenuOption, the current mode can not add option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingMenuPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_2

    .line 1295
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1296
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private p()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraSettingMenuPanel"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeOptions(), length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_0

    .line 214
    iget v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    .line 215
    iget-object v2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_2

    .line 221
    iget v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-nez v3, :cond_2

    .line 222
    iget-object v2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .line 226
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 227
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v3, :cond_7

    .line 230
    iget v4, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    goto :goto_3

    .line 236
    :cond_4
    iget-object v4, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 240
    :cond_5
    iget-object v4, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 232
    :cond_6
    iget-object v4, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->d:Ljava/util/List;

    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 249
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 250
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_b

    .line 253
    iget v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    goto :goto_5

    .line 259
    :cond_9
    iget-object v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 255
    :cond_a
    iget-object v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 268
    :cond_c
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 269
    monitor-exit v0

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    :goto_6
    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1816
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const-string v1, "pref_camera_flashmode_key"

    .line 1815
    invoke-static {v1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1818
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const-string v1, "pref_camera_videoflashmode_key"

    .line 1817
    invoke-static {v1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1818
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1820
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    const-string v0, "pref_camera_torch_mode_key"

    .line 1819
    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1820
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private q()V
    .locals 5

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_1

    const-string v1, "pref_video_super_eis_key"

    const-string v2, "off"

    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.oplus.feature.video.eis.fps.setting.suppot"

    .line 330
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    .line 332
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/entry/b;->J()I

    move-result v3

    const-string v4, "pref_video_size_key"

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 333
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->B()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 334
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 336
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIListener;->f(Ljava/lang/String;)Z

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1, v4, v0}, Lcom/oplus/camera/ui/CameraUIListener;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q(Ljava/lang/String;)Z
    .locals 2

    .line 1824
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1825
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const-string v1, "pref_filter_menu"

    .line 1824
    invoke-static {v1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1825
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1827
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const-string v1, "pref_video_filter_menu"

    .line 1826
    invoke-static {v1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1827
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1829
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const-string v1, "pref_night_filter_menu"

    .line 1828
    invoke-static {v1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1829
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1831
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    const-string v0, "pref_portrait_new_style_menu"

    .line 1830
    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1831
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private r(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "key_ai_enhancement_video"

    .line 1835
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "pref_camera_pi_ai_mode_key"

    .line 1836
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 1733
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1734
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 908
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    .line 910
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v3, "pref_camera_torch_mode_key"

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 911
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 912
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->aU()Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 915
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v3

    const/4 v5, 0x4

    if-ne v2, v3, :cond_3

    .line 916
    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_1

    .line 918
    :cond_3
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 919
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E()V

    .line 922
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 923
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 925
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    .line 926
    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_1

    .line 929
    :cond_5
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    .line 930
    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    .line 934
    :goto_1
    invoke-virtual {v1, v4, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    const/4 v2, 0x3

    .line 936
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 937
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/menu/h;IZ)V
    .locals 9

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, sizeRatioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-boolean p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    .line 278
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    .line 279
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n()V

    .line 280
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 281
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 282
    iput p4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    .line 283
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->getMenuPanelOptionList()Ljava/util/List;

    move-result-object p1

    .line 285
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    if-eqz p2, :cond_0

    .line 286
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070b31

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    :cond_0
    if-eqz p1, :cond_2

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 294
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 295
    invoke-interface {p4}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/entry/b;->J()I

    move-result p4

    .line 294
    invoke-static {p2, p4}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/oplus/camera/ui/menu/h;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/b;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 299
    new-instance p2, Lcom/oplus/camera/ui/menu/setting/h;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    move-object v0, p2

    move-object v3, p4

    move-object v4, p0

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/menu/setting/h;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;Z)V

    .line 301
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/h;->b()V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/view/ViewGroup;)V

    .line 304
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/h;->J()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/b;->getOptionTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1749
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1750
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 1401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_1

    .line 1406
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1742
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1743
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 1172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    .line 1176
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1177
    instance-of v1, v0, Lcom/oplus/camera/ui/menu/setting/h;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    check-cast v0, Lcom/oplus/camera/ui/menu/setting/h;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/h;->ah()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 1181
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1182
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/e;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    .line 126
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 157
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/h;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/h;->n(Ljava/lang/String;)I

    move-result v1

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->c(I)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move v6, p5

    move v7, p6

    .line 174
    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_2

    .line 1422
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1425
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    .line 1426
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_4

    .line 1427
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_3

    .line 1429
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1430
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    .line 1429
    invoke-static {v2, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1428
    invoke-virtual {v1, p1, v2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1435
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 1439
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1440
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1443
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    .line 1445
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1448
    :goto_0
    iput-object p1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1449
    iput v1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1450
    iput-object p2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->d:Ljava/util/List;

    .line 1451
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;ZII)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZII)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 1142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1146
    array-length v0, p2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 1151
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    .line 1154
    iput-object p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1155
    iput-object p2, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    const/4 p1, 0x6

    .line 1156
    iput p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1157
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1160
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_3

    .line 1162
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1020
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Z

    .line 1021
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Z

    .line 1023
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    .line 1024
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1026
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(ZZI)V
    .locals 1

    .line 1862
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 1863
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1865
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 2

    .line 1225
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ac()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1228
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 0

    .line 1724
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1725
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/String;ZZ)Z
    .locals 0

    .line 1715
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1716
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .line 1476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 1481
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1483
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1484
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1485
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    .line 1056
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_2

    .line 1057
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1060
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    .line 1060
    invoke-static {v2, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    invoke-virtual {v1, p1, v2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    .line 1072
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    .line 1075
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    .line 1079
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    .line 1081
    :cond_5
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1084
    :goto_0
    iput-object p1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1085
    iput v1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1086
    iput-object p2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    .line 1087
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 1524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1528
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    .line 1529
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_1

    .line 1530
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Z)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;ZZ)V
    .locals 3

    .line 1872
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1874
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    .line 1875
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 1876
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 1879
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ad()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 1880
    :cond_1
    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i(I)V

    .line 1881
    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->S()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 1195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1199
    array-length v0, p2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 1204
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_0
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    .line 1207
    iput-object p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1208
    iput-object p2, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    const/4 p1, 0x5

    .line 1209
    iput p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1210
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1213
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_3

    .line 1215
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 1554
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 1555
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1557
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 1756
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1757
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAfterCameraResume(), mMenuList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 313
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setCameraMenuLayout(Z)V

    .line 315
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c()V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1774
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1775
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    .line 1889
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1891
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 1892
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1893
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ad()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 1894
    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1094
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableCameraSettingMenuOption(), this cap mod can not enable key : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingMenuPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    .line 1104
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_3

    .line 1105
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_2

    .line 1106
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1108
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    .line 1108
    invoke-static {v2, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-virtual {v1, p1, v2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1115
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v0, :cond_4

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 1120
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    .line 1123
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    .line 1127
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    .line 1129
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1132
    :goto_0
    iput-object p1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1133
    iput v1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1134
    iput-object p2, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    .line 1135
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 1951
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1952
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1953
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/i;->setStateSecond(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 1852
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 1853
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1855
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "CameraSettingMenuPanel"

    const-string v1, "updateImageIconShadow"

    .line 350
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 355
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->L()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1781
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1782
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1923
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 1928
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1929
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1931
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0

    .line 1936
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 2

    const-string v0, "CameraSettingMenuPanel"

    const-string v1, "updateAfterCameraPause"

    .line 362
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 365
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 367
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "CameraSettingMenuPanel"

    const-string v1, "saveLastMenuPanelState"

    .line 374
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setCameraMenuLayout(Z)V

    .line 377
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->e()V

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iget v1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    iput v1, v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 392
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E()V

    .line 393
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()V
    .locals 4

    const-string v0, "CameraSettingMenuPanel"

    const-string v1, "resetLastMenuPanelState"

    .line 398
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 403
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v3

    if-nez v3, :cond_0

    .line 404
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->e()V

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->s:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->e()V

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->t:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;

    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$b;->a:F

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    .line 1036
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 1039
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->t()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraId()I
    .locals 0

    .line 1650
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 1651
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMenuList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation

    .line 1698
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getMenuPanelAshed()Z
    .locals 0

    .line 1664
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Z

    return p0
.end method

.method public getMenuPanelEnable()Z
    .locals 0

    .line 1659
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Z

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1669
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j:I

    return p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 1645
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method public getUnremovedMenuNum()I
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1687
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1688
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h()V
    .locals 2

    const-string v0, "CameraSettingMenuPanel"

    const-string v1, "removeSecondMenuAfterChangeScreenMode"

    .line 454
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 457
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 459
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 4

    .line 1238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addContainMenuOption, the current mode can not add option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingMenuPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 1249
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_3

    .line 1250
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1251
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1252
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    goto :goto_0

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v0, :cond_4

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 1260
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1261
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 1264
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    .line 1268
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    .line 1269
    iput-object p1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1270
    iput v1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1271
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1272
    :cond_6
    iget v3, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-eq v3, v1, :cond_7

    .line 1273
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1274
    iput-object p1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1275
    iput v1, v2, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1276
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_7
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_2
    return-void
.end method

.method public i()V
    .locals 1

    .line 466
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    .line 467
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    .line 469
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 5

    .line 1312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 1317
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1318
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1319
    iget-boolean v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v1, p1, v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    goto :goto_2

    .line 1325
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    if-nez v0, :cond_4

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    .line 1329
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1333
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;I)Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    .line 1337
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    .line 1338
    iput-object p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1339
    iput v3, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1340
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1341
    :cond_6
    iget v2, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-eqz v2, :cond_7

    .line 1342
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1343
    iput-object p1, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    .line 1344
    iput v3, v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    .line 1345
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_7
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_2
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v1, :cond_3

    .line 1358
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1359
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    return-void
.end method

.method public j()Z
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 879
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public k()V
    .locals 4

    .line 890
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v3, "pref_camera_flashmode_key"

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v3, "pref_camera_torch_mode_key"

    .line 894
    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    .line 896
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    const/4 v2, 0x1

    .line 897
    invoke-virtual {v1, v2, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 1463
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1465
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1466
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1467
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result p0

    .line 1466
    invoke-static {p1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public l()V
    .locals 2

    .line 962
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 965
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 967
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "pref_camera_flashmode_key"

    .line 1803
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "pref_camera_videoflashmode_key"

    .line 1804
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "pref_camera_torch_mode_key"

    .line 1805
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public m()V
    .locals 4

    .line 1539
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 1544
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 1546
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1547
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    .line 1546
    invoke-static {v2, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public m(Ljava/lang/String;)Z
    .locals 0

    .line 1809
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pref_setting_key"

    .line 1811
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pref_subsetting_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public n()V
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 1616
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1617
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n()V

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 1622
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    return-void
.end method

.method public o()V
    .locals 3

    .line 1627
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->clearAnimation()V

    .line 1628
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n()V

    .line 1629
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->removeAllViews()V

    .line 1631
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1634
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1639
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Landroid/content/Context;

    .line 1640
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1947
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 477
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 483
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(ZIIII)V

    goto :goto_1

    .line 485
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(ZIIII)V

    .line 489
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_3

    .line 490
    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->l(Z)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1942
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 975
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 977
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAlpha, alpha : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingMenuPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1917
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o:I

    .line 1918
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result p1

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setCameraMenuLayout(Z)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuLayout(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 103
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    .line 109
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b:Z

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->p()V

    .line 111
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setInitState(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Z

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 1910
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Z

    .line 1911
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setBackgroundColor(I)V

    .line 1912
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1674
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j:I

    .line 1676
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1677
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const/4 v1, 0x1

    .line 1678
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPaddingLeftRight(I)V
    .locals 0

    .line 2158
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i:I

    return-void
.end method

.method public setPendingDrawerGuideAni(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setShadowOn(Z)V
    .locals 1

    .line 1901
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_0

    .line 1902
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1903
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSizeRatioType(I)V
    .locals 2

    .line 1840
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    .line 1842
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_1

    .line 1843
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    .line 1845
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 982
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    .line 987
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 988
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d:Lcom/oplus/camera/ui/CameraUIListener;

    .line 989
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    const-string p1, "setVisibility, set cameraSettingMenu flash item visible while isVideoRecording"

    .line 990
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a()V

    return-void

    :cond_1
    if-nez p1, :cond_4

    .line 996
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_2

    .line 999
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    .line 1000
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1002
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    .line 1008
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_6

    .line 1009
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1010
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p1, :cond_5

    .line 1012
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p()V

    goto :goto_1

    :cond_6
    return-void
.end method
