.class public Lcom/oplus/camera/professional/g;
.super Landroid/widget/RelativeLayout;
.source "HSPanelContainer.java"

# interfaces
.implements Lcom/oplus/camera/professional/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/g$a;,
        Lcom/oplus/camera/professional/g$b;,
        Lcom/oplus/camera/professional/g$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/oplus/camera/capmode/a;

.field protected b:Lcom/oplus/camera/e/h;

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/professional/c;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/camera/professional/c;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/widget/RelativeLayout$LayoutParams;

.field private f:Z

.field private g:Landroid/app/Activity;

.field private h:Lcom/oplus/camera/professional/g$c;

.field private i:Lcom/oplus/camera/professional/g$b;

.field private j:Lcom/oplus/camera/professional/g$a;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/professional/g;->b:Lcom/oplus/camera/e/h;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/oplus/camera/professional/g;->f:Z

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/professional/g;->i:Lcom/oplus/camera/professional/g$b;

    .line 56
    new-instance v0, Lcom/oplus/camera/professional/g$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/g$a;-><init>(Lcom/oplus/camera/professional/g;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/g;->j:Lcom/oplus/camera/professional/g$a;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/oplus/camera/professional/g;->k:Z

    .line 64
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    return-object p0
.end method

.method private a(FF)Lcom/oplus/camera/professional/i;
    .locals 2

    .line 734
    new-instance v0, Lcom/oplus/camera/professional/i;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/i;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001c6

    .line 735
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "Focus"

    .line 736
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f09023f

    .line 737
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "manual_focus_mode_key"

    .line 738
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "pref_professional_focus_mode_key"

    .line 739
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f1001c5

    .line 740
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    .line 741
    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;FF)V

    return-object v0
.end method

.method private a(IIF)Lcom/oplus/camera/professional/i;
    .locals 2

    .line 692
    new-instance v0, Lcom/oplus/camera/professional/i;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/i;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10013c

    .line 693
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "EV"

    .line 694
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f090155

    .line 695
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "iso_mode_key"

    .line 696
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 697
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f10013b

    .line 698
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    .line 700
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;IIF)V

    return-object v0
.end method

.method private a(III)Lcom/oplus/camera/professional/i;
    .locals 2

    .line 705
    new-instance v0, Lcom/oplus/camera/professional/i;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/i;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10021e

    .line 706
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "ISO"

    .line 707
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f0901f3

    .line 708
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "exposure_mode_key"

    .line 709
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "pref_professional_iso_key"

    .line 710
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f10021d

    .line 711
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    .line 713
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;III)V

    return-object v0
.end method

.method private a(JJLjava/util/List;)Lcom/oplus/camera/professional/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Lcom/oplus/camera/professional/i;"
        }
    .end annotation

    .line 719
    new-instance v0, Lcom/oplus/camera/professional/i;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/i;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100140

    .line 720
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "Shutter"

    .line 721
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f090339

    .line 722
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "shutter_mode_key"

    .line 723
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "pref_professional_exposure_time_key"

    .line 724
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f10013e

    .line 725
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f030082

    .line 726
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->d(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f030050

    .line 727
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->e(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 729
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;JJLjava/util/List;)V

    return-object v0
.end method

.method private a(Lcom/oplus/camera/professional/i;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/e/h;)V
    .locals 5

    const/4 v0, 0x3

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/c;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v3

    .line 192
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 191
    invoke-direct {p0, v2, v3, v4, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;IIF)V

    .line 193
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    .line 198
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    .line 197
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/g;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->i(I)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/i;FF)V
    .locals 7

    cmpg-float p0, p2, p3

    if-gez p0, :cond_0

    move v6, p3

    move p3, p2

    move p2, v6

    :cond_0
    const/4 p0, 0x0

    .line 627
    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, v0, p0

    const-string v0, "HSPanelContainer"

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

    .line 636
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

    .line 639
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p3

    .line 640
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 642
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 643
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

    .line 648
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
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

    .line 628
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

.method private a(Lcom/oplus/camera/professional/i;IIF)V
    .locals 2

    .line 480
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

    const-string v1, "HSPanelContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eq p3, v0, :cond_3

    :cond_0
    if-gt p2, p3, :cond_3

    const/4 v0, 0x0

    .line 483
    invoke-static {p4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 490
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 491
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 492
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p2, p3, :cond_2

    .line 495
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0, p2, p4}, Lcom/oplus/camera/professional/g;->a(IF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 484
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

.method private a(Lcom/oplus/camera/professional/i;III)V
    .locals 0

    if-le p3, p2, :cond_0

    move p2, p3

    .line 658
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 659
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-lez p2, :cond_3

    if-lez p4, :cond_3

    if-ne p2, p4, :cond_1

    goto :goto_1

    .line 668
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 669
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p4, p2, :cond_2

    .line 673
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x64

    goto :goto_0

    :cond_2
    return-void

    .line 662
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

    const-string p1, "HSPanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/i;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/professional/i;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 515
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 516
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 518
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 525
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 527
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 528
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 529
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 519
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateWhiteBalanceValues, return, range: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSPanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/g;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/professional/g;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-static {p3, p1, p2}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_manual"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    .line 362
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 365
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

    .line 368
    invoke-static {p3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, p3}, Lcom/oplus/camera/professional/g;->g(I)Z

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

    .line 374
    :cond_3
    invoke-virtual {p0, p3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

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

.method private b(Ljava/util/List;)Lcom/oplus/camera/professional/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oplus/camera/professional/i;"
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/oplus/camera/professional/i;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/i;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10050b

    .line 680
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "WB"

    .line 681
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f090064

    .line 682
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "awb_mode_key"

    .line 683
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const-string v1, "pref_professional_whitebalance_key"

    .line 684
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(Ljava/lang/String;)Lcom/oplus/camera/professional/i;

    move-result-object v0

    const v1, 0x7f10050a

    .line 685
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/i;->c(I)Lcom/oplus/camera/professional/i;

    move-result-object v0

    .line 687
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;Ljava/util/List;)V

    return-object v0
.end method

.method private b(Lcom/oplus/camera/e/h;)V
    .locals 4

    const/4 v0, 0x4

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/c;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    invoke-direct {p0, v2, v3, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;FF)V

    .line 207
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 209
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    .line 212
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    .line 211
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/g$a;)V
    .locals 10

    .line 249
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/c;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v4

    .line 250
    invoke-virtual {v4}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    invoke-virtual {v4}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030082

    .line 252
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/i;->d(I)Lcom/oplus/camera/professional/i;

    const v0, 0x7f030050

    .line 253
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/i;->e(I)Lcom/oplus/camera/professional/i;

    if-eqz p2, :cond_0

    .line 256
    iget-wide v5, p2, Lcom/oplus/camera/professional/g$a;->a:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    iget-wide v5, p2, Lcom/oplus/camera/professional/g$a;->a:J

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v5

    .line 259
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 p2, 0x100

    .line 260
    invoke-virtual {p1, p2}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    .line 259
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;JJLjava/util/List;)V

    .line 261
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object p2, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    invoke-interface {p2, v1, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/g;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oplus/camera/professional/g;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->i:Lcom/oplus/camera/professional/g$b;

    return-object p0
.end method

.method private c(Lcom/oplus/camera/e/h;)V
    .locals 3

    const/4 v0, 0x5

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/professional/c;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v2

    .line 220
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;Ljava/util/List;)V

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 223
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    .line 226
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    .line 225
    invoke-interface {v1, v0, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private d(Lcom/oplus/camera/e/h;)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/c;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v4

    .line 272
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result p1

    .line 271
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;III)V

    .line 273
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 275
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private i(I)V
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/oplus/camera/professional/g;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "com.oplus.strong.vibrate.support"

    .line 850
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->e()V

    goto :goto_0

    .line 852
    :cond_1
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_2

    .line 853
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->f()V

    goto :goto_0

    .line 855
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .line 460
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

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

    .line 547
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

    .line 548
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 549
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    goto :goto_0

    .line 553
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMaxPictureSize, max: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSPanelContainer"

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

    .line 506
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

    .line 508
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

    .line 464
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/g;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 470
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/c;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object p0

    .line 472
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_1

    return-object v0

    .line 476
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

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "main_item_index"

    const-string v2, "main_item_key"

    const-string v3, "mainTitle"

    if-eqz p1, :cond_0

    .line 153
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const v4, 0x7f0805da

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " "

    .line 155
    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f0f003c

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "main_item_animation"

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 162
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 163
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/professional/c;

    .line 165
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-virtual {v4}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v7, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    .line 168
    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    check-cast v1, Lcom/oplus/camera/professional/c;

    .line 300
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/c;->b(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/c;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FFLandroid/os/Handler;)V
    .locals 7

    .line 99
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/g;->a(FF)Lcom/oplus/camera/professional/i;

    move-result-object v4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p3

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IIFLandroid/os/Handler;)V
    .locals 7

    .line 104
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/g;->a(IIF)Lcom/oplus/camera/professional/i;

    move-result-object v4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v6, p4

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IIILandroid/os/Handler;)V
    .locals 7

    .line 84
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/g;->a(III)Lcom/oplus/camera/professional/i;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p4

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0, p3}, Lcom/oplus/camera/professional/c;->a(ILandroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 319
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_manual"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 7

    .line 869
    invoke-virtual {p0}, Lcom/oplus/camera/professional/g;->c()Z

    move-result v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 872
    new-instance v3, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v3}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 873
    iput-boolean v2, v3, Lcom/oplus/camera/professional/u$a;->a:Z

    .line 874
    iput v1, v3, Lcom/oplus/camera/professional/u$a;->c:I

    .line 875
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 877
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 880
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    .line 881
    iget-object v3, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_1

    .line 884
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_6

    .line 888
    new-instance p2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 v3, 0x1

    .line 889
    iput-boolean v3, p2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v3, 0x96

    .line 890
    iput v3, p2, Lcom/oplus/camera/professional/u$a;->b:I

    const/16 v4, 0x190

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 892
    :goto_1
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v5, v1

    goto :goto_2

    .line 895
    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07063f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    :goto_2
    iput v5, p2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 896
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->e:F

    if-eqz v0, :cond_4

    move v3, v2

    .line 897
    :cond_4
    iput v3, p2, Lcom/oplus/camera/professional/u$a;->f:I

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v4

    .line 898
    :goto_3
    iput v2, p2, Lcom/oplus/camera/professional/u$a;->g:I

    .line 899
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 901
    :cond_6
    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/c;->setVisibility(I)V

    :goto_4
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

    .line 89
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/professional/g;->a(JJLjava/util/List;)Lcom/oplus/camera/professional/i;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p6

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V
    .locals 9

    .line 778
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addControllerPanel, return, size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSPanelContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 784
    :cond_0
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v5

    .line 785
    new-instance v8, Lcom/oplus/camera/professional/c;

    iget-object v1, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    .line 786
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v7

    move-object v0, v8

    move-object v3, p6

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/professional/c;-><init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/i;Landroid/content/SharedPreferences;)V

    .line 787
    invoke-virtual {v8, p1}, Lcom/oplus/camera/professional/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    invoke-virtual {v8, p5}, Lcom/oplus/camera/professional/c;->setAlign(I)V

    .line 789
    invoke-virtual {p0, v8}, Lcom/oplus/camera/professional/g;->addView(Landroid/view/View;)V

    .line 790
    new-instance p1, Lcom/oplus/camera/professional/g$1;

    invoke-direct {p1, p0, v8, p2}, Lcom/oplus/camera/professional/g$1;-><init>(Lcom/oplus/camera/professional/g;Lcom/oplus/camera/professional/c;I)V

    invoke-virtual {v8, p1}, Lcom/oplus/camera/professional/c;->setValueChangeListener(Lcom/oplus/camera/professional/c$a;)V

    .line 839
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;J)V
    .locals 10

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/c;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getHSSubModeBarData()Lcom/oplus/camera/professional/i;

    move-result-object v4

    .line 233
    invoke-virtual {v4}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    invoke-virtual {v4}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030082

    .line 235
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/i;->d(I)Lcom/oplus/camera/professional/i;

    const v0, 0x7f030050

    .line 236
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/i;->e(I)Lcom/oplus/camera/professional/i;

    .line 238
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 v0, 0x100

    .line 239
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    move-wide v5, p2

    .line 238
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/i;JJLjava/util/List;)V

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/c;->b()V

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object p2, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    invoke-interface {p2, v1, p1, p0}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/g$a;)V
    .locals 9

    .line 110
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v2

    .line 110
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/oplus/camera/professional/g;->a(IIILandroid/os/Handler;)V

    if-eqz p3, :cond_0

    .line 114
    iget-wide v0, p3, Lcom/oplus/camera/professional/g$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p3, Lcom/oplus/camera/professional/g$a;->a:J

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 117
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v5

    const/16 p3, 0x100

    .line 118
    invoke-virtual {p1, p3}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v7

    move-object v2, p0

    move-object v8, p2

    .line 117
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/g;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 121
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/professional/g;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 124
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result p3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/oplus/camera/professional/g;->a(FFLandroid/os/Handler;)V

    .line 127
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result p3

    .line 128
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 127
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/oplus/camera/professional/g;->a(IIFLandroid/os/Handler;)V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/professional/g;->e()V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/g$a;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->d(Lcom/oplus/camera/e/h;)V

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/g;->b(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/g$a;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->c(Lcom/oplus/camera/e/h;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->b(Lcom/oplus/camera/e/h;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/oplus/camera/professional/i;JJLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/professional/i;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 563
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz v5, :cond_0

    .line 565
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v9, p6

    .line 566
    invoke-virtual {v0, v9}, Lcom/oplus/camera/professional/g;->a(Ljava/util/List;)J

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

    .line 568
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 569
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
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

    const-string v9, "HSPanelContainer"

    invoke-static {v9, v8}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 576
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v10, -0x1

    .line 581
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 582
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "/"

    .line 583
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 585
    array-length v13, v12

    const-string v14, "s"

    const/4 v15, 0x0

    if-le v13, v7, :cond_1

    .line 586
    aget-object v10, v12, v15

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aget-object v12, v12, v7

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v15

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    :goto_1
    mul-double v10, v10, v16

    double-to-long v10, v10

    goto :goto_2

    :cond_1
    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    .line 588
    array-length v13, v12

    if-ne v13, v7, :cond_2

    .line 589
    aget-object v10, v12, v15

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v15

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

    .line 596
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 600
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

    .line 602
    div-long/2addr v3, v7

    div-long v7, v1, v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    .line 604
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
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

    .line 611
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->a(Ljava/lang/String;)I

    move-result v1

    .line 613
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 614
    iget-object v0, v0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_professional_exposure_time_key_manual"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 615
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

    .line 94
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/g;->b(Ljava/util/List;)Lcom/oplus/camera/professional/i;

    move-result-object v4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/g;->setManual(I)V

    .line 762
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    if-eqz p0, :cond_1

    .line 763
    invoke-interface {p0, p2, p1}, Lcom/oplus/camera/professional/g$c;->b(IZ)V

    :cond_1
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 1000
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    return p0
.end method

.method public a(II)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/c;->a(I)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 352
    invoke-direct {p0, p1, p2, v2}, Lcom/oplus/camera/professional/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z

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

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 334
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

    .line 335
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

    .line 336
    invoke-static {v2}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {v6, v2}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
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

    .line 343
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/c;->setBarAuto(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 395
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

    .line 397
    invoke-static {v3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    .line 401
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

    .line 405
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 861
    iput-boolean p1, p0, Lcom/oplus/camera/professional/g;->f:Z

    return-void
.end method

.method public b(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 1006
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1007
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1008
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 1009
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 1010
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0

    :cond_2
    if-ne v2, p1, :cond_5

    .line 1012
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

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

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 409
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 416
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    invoke-static {v3, p1, p2}, Lcom/oplus/camera/professional/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 422
    invoke-static {v3}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v7

    if-nez v7, :cond_1

    if-ne v5, v6, :cond_1

    .line 423
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {v6, v3}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 427
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v6, v5, :cond_2

    .line 428
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {v6, v3}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 431
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

    .line 434
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 438
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 442
    :cond_4
    invoke-virtual {p0, v2, p2}, Lcom/oplus/camera/professional/g;->a(ZI)V

    .line 443
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

    .line 444
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 448
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    .line 449
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 453
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

    .line 455
    invoke-virtual {p0, v1, p2}, Lcom/oplus/camera/professional/g;->a(ZI)V

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 535
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    check-cast v0, Lcom/oplus/camera/professional/c;

    .line 536
    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

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

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/c;->getParameterNamesList()Ljava/util/ArrayList;

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

    .line 768
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    check-cast v1, Lcom/oplus/camera/professional/c;

    .line 769
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

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

    check-cast v1, Lcom/oplus/camera/professional/c;

    .line 992
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/c;->setValueChangeListener(Lcom/oplus/camera/professional/c$a;)V

    goto :goto_0

    .line 995
    :cond_0
    iput-object v2, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    return-void
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/g;->a(IZ)V

    return-void
.end method

.method public g()Z
    .locals 0

    .line 1029
    iget-boolean p0, p0, Lcom/oplus/camera/professional/g;->k:Z

    return p0
.end method

.method public g(I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

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

    .line 919
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->e(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

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

.method public getConfigData()Lcom/oplus/camera/professional/g$a;
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->j:Lcom/oplus/camera/professional/g$a;

    return-object p0
.end method

.method public getFocusValue()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 139
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1033
    iput-boolean v0, p0, Lcom/oplus/camera/professional/g;->k:Z

    return-void
.end method

.method public h(I)Z
    .locals 1

    .line 961
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/c;->setBarAuto(Z)V

    return p1

    .line 965
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/c;->setBarAuto(Z)V

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/c;

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/professional/c;->a(ILandroid/app/Activity;)V

    return-void
.end method

.method public setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/c;

    .line 976
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 982
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/professional/c;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 983
    iget-object v2, p0, Lcom/oplus/camera/professional/g;->d:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 985
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/c;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAuto(I)V
    .locals 0

    .line 938
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    .line 940
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    return-void
.end method

.method public setManual(I)V
    .locals 3

    .line 944
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 945
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

    .line 946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 948
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 951
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/professional/g;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/professional/g;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/professional/c;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getCurrentIndex()I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/professional/c;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/c;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/professional/g;->a(IILjava/lang/String;)V

    .line 957
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/c;->setBarAuto(Z)V

    return-void
.end method

.method public setMotionListener(Lcom/oplus/camera/professional/g$b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/oplus/camera/professional/g;->i:Lcom/oplus/camera/professional/g$b;

    return-void
.end method

.method public setPanelsBarAuto(I)V
    .locals 1

    const/4 v0, 0x1

    .line 930
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/g;->b(IZ)V

    return-void
.end method

.method public setPreference(I)V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 924
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->g:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 925
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

    .line 926
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSettleListener(Lcom/oplus/camera/professional/g$c;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/oplus/camera/professional/g;->h:Lcom/oplus/camera/professional/g$c;

    return-void
.end method
