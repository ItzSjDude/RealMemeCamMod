.class public Lcom/oplus/camera/professional/p;
.super Landroid/widget/RelativeLayout;
.source "PanelContainer.java"

# interfaces
.implements Lcom/oplus/camera/professional/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/p$a;,
        Lcom/oplus/camera/professional/p$b;,
        Lcom/oplus/camera/professional/p$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/oplus/camera/capmode/a;

.field protected b:Lcom/oplus/camera/ui/CameraUIInterface;

.field protected c:Lcom/oplus/camera/e/h;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/professional/LevelPanel;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/camera/professional/LevelPanel;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Z

.field private h:Landroid/app/Activity;

.field private i:Lcom/oplus/camera/professional/p$c;

.field private j:Lcom/oplus/camera/professional/p$b;

.field private k:Lcom/oplus/camera/professional/p$a;

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->c:Lcom/oplus/camera/e/h;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/oplus/camera/professional/p;->g:Z

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->j:Lcom/oplus/camera/professional/p$b;

    .line 56
    new-instance v0, Lcom/oplus/camera/professional/p$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/p$a;-><init>(Lcom/oplus/camera/professional/p;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/p;->k:Lcom/oplus/camera/professional/p$a;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/oplus/camera/professional/p;->l:Z

    .line 60
    iput v0, p0, Lcom/oplus/camera/professional/p;->m:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/professional/p;->n:I

    .line 66
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;II)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->c:Lcom/oplus/camera/e/h;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/oplus/camera/professional/p;->g:Z

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/professional/p;->j:Lcom/oplus/camera/professional/p$b;

    .line 56
    new-instance v0, Lcom/oplus/camera/professional/p$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/p$a;-><init>(Lcom/oplus/camera/professional/p;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/p;->k:Lcom/oplus/camera/professional/p$a;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/oplus/camera/professional/p;->l:Z

    .line 60
    iput v0, p0, Lcom/oplus/camera/professional/p;->m:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/professional/p;->n:I

    .line 74
    iput p3, p0, Lcom/oplus/camera/professional/p;->m:I

    .line 75
    iput p4, p0, Lcom/oplus/camera/professional/p;->n:I

    .line 76
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    .line 77
    iput-object p2, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;)I
    .locals 0

    .line 156
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->f()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    return-object p0
.end method

.method private a(FF)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 759
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001c6

    .line 760
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d7

    .line 761
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f09023f

    .line 762
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "manual_focus_mode_key"

    .line 763
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_professional_focus_mode_key"

    .line 764
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f1001c5

    .line 765
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 766
    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;FF)V

    return-object v0
.end method

.method private a(IIF)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 717
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10013c

    .line 718
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d8

    .line 719
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090155

    .line 720
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "iso_mode_key"

    .line 721
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 722
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10013b

    .line 723
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 725
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;IIF)V

    return-object v0
.end method

.method private a(III)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 730
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10021e

    .line 731
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d9

    .line 732
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0901f3

    .line 733
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "exposure_mode_key"

    .line 734
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_professional_iso_key"

    .line 735
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10021d

    .line 736
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 738
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;III)V

    return-object v0
.end method

.method private a(JJLjava/util/List;)Lcom/oplus/camera/professional/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Lcom/oplus/camera/professional/z;"
        }
    .end annotation

    .line 744
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100140

    .line 745
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805db

    .line 746
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090339

    .line 747
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "shutter_mode_key"

    .line 748
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_professional_exposure_time_key"

    .line 749
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10013e

    .line 750
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f030082

    .line 751
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->e(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f030081

    .line 752
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 754
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    return-object v0
.end method

.method private a(Lcom/oplus/camera/e/h;)V
    .locals 5

    const/4 v0, 0x3

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v2

    .line 212
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v3

    .line 213
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 212
    invoke-direct {p0, v2, v3, v4, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;IIF)V

    .line 214
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 216
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    .line 219
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    .line 218
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/p;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->i(I)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;FF)V
    .locals 7

    cmpg-float p0, p2, p3

    if-gez p0, :cond_0

    move v6, p3

    move p3, p2

    move p2, v6

    :cond_0
    const/4 p0, 0x0

    .line 652
    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, v0, p0

    const-string v0, "PanelContainer"

    if-lez p0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sub-float p0, p2, p3

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p0, v1

    const v1, 0x3ca3d70a    # 0.02f

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateFocusValues, farFocusDistance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", minFocusDistance: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p3

    .line 665
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 667
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 668
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    int-to-float v3, v2

    mul-float v4, p0, v3

    sub-float v4, p2, v4

    mul-float/2addr v3, v1

    .line 673
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v0

    const-string v3, "%.2f"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 653
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateFocusValues, return, minFocusDistance: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;IIF)V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateExposureCompensationValues, minIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eq p3, v0, :cond_3

    :cond_0
    if-gt p2, p3, :cond_3

    const/4 v0, 0x0

    .line 508
    invoke-static {p4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p2, p3, :cond_2

    .line 520
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {p0, p2, p4}, Lcom/oplus/camera/professional/p;->a(IF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 509
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateExposureCompensationValues, return, minIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;III)V
    .locals 0

    if-le p3, p2, :cond_0

    move p2, p3

    .line 683
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 684
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-lez p2, :cond_3

    if-lez p4, :cond_3

    if-ne p2, p4, :cond_1

    goto :goto_1

    .line 693
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 694
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p4, p2, :cond_2

    .line 698
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x64

    goto :goto_0

    :cond_2
    return-void

    .line 687
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateIsoValues, return null, maxISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", minISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/professional/z;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 540
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 541
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 543
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 550
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 552
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 553
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "K"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 544
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateWhiteBalanceValues, return, range: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/p;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/oplus/camera/professional/p;->l:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    invoke-static {p3, p1, p2}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_manual"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    .line 387
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 393
    invoke-static {p3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p0, p3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-ne v1, p2, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-ne p2, p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .line 399
    :cond_3
    invoke-virtual {p0, p3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {p0, p3}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ne p2, p1, :cond_4

    return v3

    :cond_4
    if-ne p2, p0, :cond_5

    if-eq v1, p1, :cond_6

    :cond_5
    if-ne p1, p0, :cond_7

    if-ne v1, p2, :cond_7

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method private b(Ljava/util/List;)Lcom/oplus/camera/professional/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oplus/camera/professional/z;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10050b

    .line 705
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805dc

    .line 706
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090064

    .line 707
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "awb_mode_key"

    .line 708
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_professional_whitebalance_key"

    .line 709
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10050a

    .line 710
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 712
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;Ljava/util/List;)V

    return-object v0
.end method

.method private b(Lcom/oplus/camera/e/h;)V
    .locals 4

    const/4 v0, 0x4

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    invoke-direct {p0, v2, v3, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;FF)V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 230
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 232
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    .line 233
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    .line 232
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/p$a;)V
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030082

    .line 273
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->e(I)Lcom/oplus/camera/professional/z;

    const v0, 0x7f030081

    .line 274
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    if-eqz p2, :cond_0

    .line 277
    iget-wide v5, p2, Lcom/oplus/camera/professional/p$a;->a:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    iget-wide v5, p2, Lcom/oplus/camera/professional/p$a;->a:J

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v5

    .line 280
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 p2, 0x100

    .line 281
    invoke-virtual {p1, p2}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    .line 280
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    .line 282
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object p2, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object p2, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    invoke-interface {p2, v1, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/p;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oplus/camera/professional/p;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->j:Lcom/oplus/camera/professional/p$b;

    return-object p0
.end method

.method private c(Lcom/oplus/camera/e/h;)V
    .locals 3

    const/4 v0, 0x5

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v2

    .line 241
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;Ljava/util/List;)V

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    .line 247
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    .line 246
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private d(Lcom/oplus/camera/e/h;)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v4

    .line 293
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result p1

    .line 292
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;III)V

    .line 294
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 296
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private i(I)V
    .locals 1

    .line 864
    iget-boolean v0, p0, Lcom/oplus/camera/professional/p;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 871
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->f()V

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .line 485
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_manual"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public a(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)J"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 573
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    goto :goto_0

    .line 578
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMaxPictureSize, max: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public a(IF)Ljava/lang/String;
    .locals 3

    int-to-float p0, p1

    mul-float/2addr p0, p2

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const-string v1, "%.2f"

    if-lez p1, :cond_0

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 533
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 489
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/p;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_1

    return-object v0

    .line 501
    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "main_item_index"

    const-string v2, "main_item_key"

    const-string v3, "mainTitle"

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const v4, 0x7f0805da

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100145

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f0f003c

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "main_item_animation"

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 184
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/professional/LevelPanel;

    .line 186
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-virtual {v4}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v7, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 189
    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    .line 325
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->b(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FFLandroid/os/Handler;)V
    .locals 7

    .line 120
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/p;->a(FF)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p3

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/oplus/camera/professional/p;->m:I

    .line 93
    iput p2, p0, Lcom/oplus/camera/professional/p;->n:I

    return-void
.end method

.method public a(IIFLandroid/os/Handler;)V
    .locals 7

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/p;->a(IIF)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v6, p4

    .line 125
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IIILandroid/os/Handler;)V
    .locals 7

    .line 105
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/p;->a(III)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p4

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0, p3}, Lcom/oplus/camera/professional/LevelPanel;->a(ILandroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 344
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_manual"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 8

    .line 888
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->c()Z

    move-result v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 891
    new-instance v3, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v3}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 892
    iput-boolean v2, v3, Lcom/oplus/camera/professional/u$a;->a:Z

    .line 893
    iput v1, v3, Lcom/oplus/camera/professional/u$a;->c:I

    .line 894
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 896
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 899
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    .line 900
    iget-object v3, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_1

    .line 903
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v3, 0x1

    .line 906
    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/LevelPanel;->setScaleBarTouchable(Z)V

    if-eqz p2, :cond_7

    .line 909
    new-instance p2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 910
    iput-boolean v3, p2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v4, 0x96

    .line 911
    iput v4, p2, Lcom/oplus/camera/professional/u$a;->b:I

    const/16 v5, 0x190

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    .line 913
    :goto_1
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v6, v1

    goto :goto_2

    .line 916
    :cond_3
    iget-object v6, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    :goto_2
    iput v6, p2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 917
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->e:F

    if-eqz v0, :cond_4

    move v4, v2

    .line 918
    :cond_4
    iput v4, p2, Lcom/oplus/camera/professional/u$a;->f:I

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v5

    .line 919
    :goto_3
    iput v2, p2, Lcom/oplus/camera/professional/u$a;->g:I

    .line 920
    iget v0, p0, Lcom/oplus/camera/professional/p;->m:I

    if-ne v3, v0, :cond_6

    const-string v0, "translationX"

    goto :goto_4

    :cond_6
    const-string v0, "translationY"

    .line 921
    :goto_4
    iput-object v0, p2, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    .line 922
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 924
    :cond_7
    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public a(JJLjava/util/List;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/professional/p;->a(JJLjava/util/List;)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p6

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V
    .locals 12

    move-object v0, p0

    .line 799
    iget-object v1, v0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addControllerPanel, return, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 805
    :cond_0
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v7

    .line 806
    new-instance v1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object v3, v0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    const/4 v4, 0x1

    iget v8, v0, Lcom/oplus/camera/professional/p;->m:I

    iget v9, v0, Lcom/oplus/camera/professional/p;->n:I

    iget-object v2, v0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    .line 807
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v11

    move-object v2, v1

    move-object/from16 v5, p6

    move v6, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/oplus/camera/professional/LevelPanel;-><init>(Landroid/content/Context;ZLandroid/os/Handler;ZZIILcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V

    move-object v2, p1

    .line 808
    invoke-virtual {v1, p1}, Lcom/oplus/camera/professional/LevelPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v2, p5

    .line 809
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setAlign(I)V

    .line 810
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->addView(Landroid/view/View;)V

    .line 811
    new-instance v2, Lcom/oplus/camera/professional/p$1;

    move v3, p2

    invoke-direct {v2, p0, v1, p2}, Lcom/oplus/camera/professional/p$1;-><init>(Lcom/oplus/camera/professional/p;Lcom/oplus/camera/professional/LevelPanel;I)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setValueChangeListener(Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;)V

    .line 860
    iget-object v0, v0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;J)V
    .locals 10

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030082

    .line 256
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->e(I)Lcom/oplus/camera/professional/z;

    const v0, 0x7f030081

    .line 257
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    .line 259
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 v0, 0x100

    .line 260
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    move-wide v5, p2

    .line 259
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    .line 261
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/LevelPanel;->d()V

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object p2, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    invoke-interface {p2, v1, p1, p0}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V
    .locals 9

    .line 131
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v1

    .line 132
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v2

    .line 131
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/oplus/camera/professional/p;->a(IIILandroid/os/Handler;)V

    if-eqz p3, :cond_0

    .line 135
    iget-wide v0, p3, Lcom/oplus/camera/professional/p$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p3, Lcom/oplus/camera/professional/p$a;->a:J

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 138
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v5

    const/16 p3, 0x100

    .line 139
    invoke-virtual {p1, p3}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v7

    move-object v2, p0

    move-object v8, p2

    .line 138
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/p;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 142
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/professional/p;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 145
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result p3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/oplus/camera/professional/p;->a(FFLandroid/os/Handler;)V

    .line 148
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result p3

    .line 149
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 148
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/oplus/camera/professional/p;->a(IIFLandroid/os/Handler;)V

    .line 152
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->e()V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/p$a;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->d(Lcom/oplus/camera/e/h;)V

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/p;->b(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/p$a;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->c(Lcom/oplus/camera/e/h;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->b(Lcom/oplus/camera/e/h;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/professional/z;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 588
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz v5, :cond_0

    .line 590
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v9, p6

    .line 591
    invoke-virtual {v0, v9}, Lcom/oplus/camera/professional/p;->a(Ljava/util/List;)J

    move-result-wide v9

    long-to-float v9, v9

    const-string v10, "8000000"

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 593
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 597
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateShutterValues, max: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", min: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", before filtering, parameterNamesList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PanelContainer"

    invoke-static {v9, v8}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 601
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v10, -0x1

    .line 606
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "s"

    if-eqz v12, :cond_5

    .line 607
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "/"

    .line 608
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 610
    array-length v14, v12

    const-wide v15, 0x41cdcd6500000000L    # 1.0E9

    const/16 v17, 0x0

    if-le v14, v7, :cond_1

    .line 611
    aget-object v10, v12, v17

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aget-object v12, v12, v7

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v17

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    div-double/2addr v10, v12

    :goto_1
    mul-double/2addr v10, v15

    double-to-long v10, v10

    goto :goto_2

    .line 613
    :cond_1
    array-length v14, v12

    if-ne v14, v7, :cond_2

    .line 614
    aget-object v10, v12, v17

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v17

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_1

    :cond_2
    :goto_2
    cmp-long v12, v10, v3

    if-ltz v12, :cond_4

    cmp-long v12, v10, v1

    if-lez v12, :cond_3

    goto :goto_3

    .line 621
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 625
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v7, 0x3b9aca00

    .line 627
    div-long/2addr v3, v7

    div-long v7, v1, v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    .line 629
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateShutterValues, after filtering, parameterValuesList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parameterNamesList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_professional_exposure_time_key"

    .line 636
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->a(Ljava/lang/String;)I

    move-result v1

    .line 638
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 639
    iget-object v0, v0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_professional_exposure_time_key_manual"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-void
.end method

.method public a(Ljava/util/List;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 115
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 116
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/p;->b(Ljava/util/List;)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/p;->setManual(I)V

    .line 783
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    if-eqz p0, :cond_1

    .line 784
    invoke-interface {p0, p2, p1}, Lcom/oplus/camera/professional/p$c;->b(IZ)V

    :cond_1
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 1027
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 377
    invoke-direct {p0, p1, p2, v2}, Lcom/oplus/camera/professional/p;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 8

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_manual_state"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-static {v2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {v6, v2}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "off"

    invoke-static {v2, v6, v7}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 368
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/professional/LevelPanel;->b(ILandroid/app/Activity;)V

    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/LevelPanel;->setBarAuto(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_manual"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 422
    invoke-static {v3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    .line 426
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, p1, p2}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 430
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 880
    iput-boolean p1, p0, Lcom/oplus/camera/professional/p;->g:Z

    return-void
.end method

.method public b(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 1033
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 1036
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 1037
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0

    :cond_2
    if-ne v2, p1, :cond_5

    .line 1039
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0

    :cond_5
    return v3
.end method

.method public c(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "_manual"

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    invoke-static {v3, p1, p2}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 447
    invoke-static {v3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v7

    if-nez v7, :cond_1

    if-ne v5, v6, :cond_1

    .line 448
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {v6, v3}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 452
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v6, v5, :cond_2

    .line 453
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {v6, v3}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 456
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 459
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 463
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 467
    :cond_4
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/professional/p;->a(ZI)V

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_manual_state"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 473
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 474
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 478
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v5, v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    xor-int/2addr v1, v3

    .line 480
    invoke-virtual {p0, v1, p2}, Lcom/oplus/camera/professional/p;->a(ZI)V

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 560
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/LevelPanel;

    .line 561
    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public c(II)Z
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/LevelPanel;->a(I)Z

    move-result p0

    return p0
.end method

.method public clearAnimation()V
    .locals 0

    return-void
.end method

.method public d(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/LevelPanel;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public d()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    .line 790
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 794
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public d(II)V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1077
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1078
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->e()V

    .line 1083
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/p;->a(II)V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    .line 1019
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setValueChangeListener(Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;)V

    goto :goto_0

    .line 1022
    :cond_0
    iput-object v2, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    return-void
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x0

    .line 884
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/p;->a(IZ)V

    return-void
.end method

.method public g()Z
    .locals 0

    .line 1056
    iget-boolean p0, p0, Lcom/oplus/camera/professional/p;->l:Z

    return p0
.end method

.method public g(I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 941
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_manual_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 942
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->e(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getConfigData()Lcom/oplus/camera/professional/p$a;
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->k:Lcom/oplus/camera/professional/p$a;

    return-object p0
.end method

.method public getFocusValue()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 160
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lcom/oplus/camera/professional/p;->l:Z

    return-void
.end method

.method public h(I)Z
    .locals 1

    .line 984
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->setBarAuto(Z)V

    return p1

    .line 988
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->setBarAuto(Z)V

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/professional/LevelPanel;->a(ILandroid/app/Activity;)V

    return-void
.end method

.method public setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V
    .locals 4

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    .line 999
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setScaleBarTouchable(Z)V

    .line 1007
    invoke-virtual {v1}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 1008
    iget v3, p0, Lcom/oplus/camera/professional/p;->m:I

    if-ne v2, v3, :cond_1

    const-string v2, "translationX"

    goto :goto_1

    :cond_1
    const-string v2, "translationY"

    .line 1009
    :goto_1
    iput-object v2, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    .line 1010
    iget-object v2, p0, Lcom/oplus/camera/professional/p;->e:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    .line 1012
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setAuto(I)V
    .locals 0

    .line 961
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    .line 963
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    return-void
.end method

.method public setCameraUIInterface(Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oplus/camera/professional/p;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method

.method public setManual(I)V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_manual_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 971
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 974
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/professional/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/professional/p;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getCurrentIndex()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/LevelPanel;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/professional/p;->a(IILjava/lang/String;)V

    .line 980
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/LevelPanel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/LevelPanel;->setBarAuto(Z)V

    return-void
.end method

.method public setMotionListener(Lcom/oplus/camera/professional/p$b;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/professional/p;->j:Lcom/oplus/camera/professional/p$b;

    return-void
.end method

.method public setPanelsBarAuto(I)V
    .locals 1

    const/4 v0, 0x1

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/p;->b(IZ)V

    return-void
.end method

.method public setPreference(I)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 947
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->h:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 948
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_manual_state"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSettleListener(Lcom/oplus/camera/professional/p$c;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/professional/p;->i:Lcom/oplus/camera/professional/p$c;

    return-void
.end method
