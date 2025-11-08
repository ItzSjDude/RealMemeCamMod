.class public Lcom/oplus/camera/professional/r;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/r$a;,
        Lcom/oplus/camera/professional/r$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:Landroid/app/Activity;

.field protected d:Lcom/oplus/camera/ui/CameraUIInterface;

.field protected e:Lcom/oplus/camera/capmode/a;

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/oplus/camera/professional/p;

.field protected h:Lcom/oplus/camera/professional/r$b;

.field protected i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

.field protected j:Lcom/oplus/camera/professional/r$a;

.field protected k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/content/res/Resources;

.field private s:Landroid/content/SharedPreferences;

.field private t:Lcom/oplus/camera/professional/p$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->l:Z

    .line 57
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->m:Z

    .line 58
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->n:Z

    .line 59
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->o:Z

    .line 60
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->p:Z

    .line 61
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->q:Z

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->a:Z

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/oplus/camera/professional/r;->b:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->f:Landroid/os/Handler;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->k:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    .line 771
    new-instance v0, Lcom/oplus/camera/professional/r$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/r$3;-><init>(Lcom/oplus/camera/professional/r;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/r;->t:Lcom/oplus/camera/professional/p$b;

    .line 123
    iput-object p1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 124
    iput-object p3, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 125
    iput-object p2, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    .line 127
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    .line 128
    iput-object p4, p0, Lcom/oplus/camera/professional/r;->k:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->f()V

    return-void
.end method

.method private A()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 468
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 476
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    .line 477
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private C()V
    .locals 2

    const-string v0, "ProMenuManager"

    const-string v1, "restoreFocusMode"

    .line 481
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->b(I)V

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->e(I)V

    .line 487
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0}, Lcom/oplus/camera/professional/r$b;->f()V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 520
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->removeAllViews()V

    .line 524
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/r$a;->removeView(Landroid/view/View;)V

    .line 525
    iput-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 529
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    return-void
.end method

.method private E()V
    .locals 4

    .line 540
    new-instance v0, Lcom/oplus/camera/professional/r$a;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/professional/r$a;-><init>(Lcom/oplus/camera/professional/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    .line 541
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 543
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 544
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 546
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->r()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    const v3, 0x7f070b2f

    .line 548
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 550
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/r$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    .line 556
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r$a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/professional/r$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/r$1;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->k:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v2, p0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method private F()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setGravity(I)V

    .line 580
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setId(I)V

    .line 582
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    const v3, 0x7f070b2f

    .line 583
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 584
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    const v2, 0x7f0706fc

    .line 585
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 584
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xe

    .line 586
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 587
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/r$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private G()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 606
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private H()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 681
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 680
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 683
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 685
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 686
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 687
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 778
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->G()V

    .line 779
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    return-void
.end method

.method private K()V
    .locals 7

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 855
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 854
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 858
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 859
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 858
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 861
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_professional_iso_key"

    .line 860
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object v0

    .line 869
    iget-object v6, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v6}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 870
    iget-object v5, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v5, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v4}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 877
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 884
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, v4, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 886
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, v4, v4}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private L()V
    .locals 3

    const-string v0, "ProMenuManager"

    const-string v1, "initParam"

    .line 1033
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    const-string v2, "pref_professional_whitebalance_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->e()V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->r()V

    :goto_0
    const/4 v0, 0x0

    .line 1045
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r;->a(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r;->b(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->p()V

    .line 1049
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/r$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/r$5;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private M()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/r$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/r$6;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->o:Z

    return-void
.end method

.method private N()V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1085
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1086
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1087
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->h(I)Z

    return-void
.end method

.method private a(FLjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 239
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 243
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    .line 244
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    .line 247
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 248
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v2, p1

    .line 250
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 251
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private a(JLjava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 260
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 264
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 265
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    .line 268
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 269
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 271
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    .line 272
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private a(Lcom/oplus/camera/professional/ListProfessionalModeBar;ILcom/oplus/camera/professional/ListModeBarAdapter;Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setId(I)V

    .line 596
    invoke-virtual {p1, p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setAdapter(Lcom/oplus/camera/professional/ListModeBarAdapter;)V

    .line 597
    invoke-virtual {p1, p4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOnItemClickListener(Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/r;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/professional/r;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/r;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/professional/r;->m:Z

    return p0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 975
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 976
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 982
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x4

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    .line 983
    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->c()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 984
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->J()V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/professional/r;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/professional/r;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->J()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->N()V

    return-void
.end method

.method private y()Lcom/oplus/camera/professional/p$a;
    .locals 2

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getConfigData()Lcom/oplus/camera/professional/p$a;

    move-result-object p0

    const-wide/32 v0, 0xee6b28

    .line 355
    iput-wide v0, p0, Lcom/oplus/camera/professional/p$a;->b:J

    return-object p0
.end method

.method private z()V
    .locals 5

    .line 361
    new-instance v0, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->q()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setPanelInterface(Lcom/oplus/camera/professional/q;)V

    .line 364
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    const v2, 0x7f0706fc

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    const v2, 0x7f070b2f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xc

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 370
    new-instance v1, Lcom/oplus/camera/professional/ListModeBarAdapter;

    iget-object v3, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v4, v2}, Lcom/oplus/camera/professional/p;->a(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/professional/ListModeBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 371
    iget-object v2, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Lcom/oplus/camera/professional/q;)V

    .line 372
    iget-object v2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const v3, 0x7f09023a

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/ListProfessionalModeBar;ILcom/oplus/camera/professional/ListModeBarAdapter;Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    .line 374
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/r$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pref_professional_iso_key"

    const-string v1, "100"

    .line 142
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_exposure_time_key"

    const-string v1, "1/50s"

    .line 143
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_whitebalance_key"

    const-string v1, "2000"

    .line 144
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0.00"

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 145
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pref_professional_focus_mode_key"

    .line 146
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProMenuManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->j()V

    :cond_0
    if-nez p1, :cond_1

    .line 294
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p0, :cond_5

    .line 295
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 299
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p2}, Lcom/oplus/camera/professional/r$b;->i()Z

    move-result p2

    if-nez p2, :cond_2

    .line 300
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 303
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const-string v2, "pref_support_switch_camera"

    invoke-interface {p2, v2}, Lcom/oplus/camera/professional/r$b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 304
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 305
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 306
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZ)V

    .line 310
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p2, :cond_4

    .line 311
    invoke-virtual {p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 312
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    .line 313
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 316
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->e()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected a(J)V
    .locals 4

    const-wide/32 v0, 0x2625a00

    cmp-long v2, p1, v0

    const-string v3, "ProMenuManager"

    if-gez v2, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureTime, back exposureTimeValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->a(Z)V

    .line 670
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/professional/r$b;->a(J)V

    goto :goto_0

    :cond_0
    const-string p1, "setExposureTime, slow shutter"

    .line 672
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/oplus/camera/professional/r$b;->a(Z)V

    .line 675
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/professional/r$b;->a(J)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string v0, "pref_professional_whitebalance_key"

    .line 787
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result p1

    const/4 p2, 0x5

    if-ne p2, p1, :cond_0

    .line 789
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->r()V

    return-void

    :cond_1
    const-string v0, "pref_professional_iso_key"

    .line 794
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 795
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 796
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 799
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "pref_professional_exposure_compensation_key"

    .line 801
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 802
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 803
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 806
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 807
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 810
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r;->b(Ljava/lang/String;)V

    .line 811
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0}, Lcom/oplus/camera/professional/r$b;->f()V

    return-void

    :cond_6
    const-string v0, "pref_professional_exposure_time_key"

    .line 813
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 814
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p1, :cond_7

    .line 815
    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result p1

    if-ne v3, p1, :cond_7

    .line 816
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 819
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->p()V

    return-void

    :cond_8
    const-string v0, "pref_professional_focus_mode_key"

    .line 821
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 822
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 824
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 825
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r;->c(Ljava/lang/String;)V

    .line 826
    iput-boolean v2, p0, Lcom/oplus/camera/professional/r;->q:Z

    goto :goto_0

    .line 828
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->d()I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 831
    iput-boolean p1, p0, Lcom/oplus/camera/professional/r;->q:Z

    .line 834
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->d()I

    move-result p1

    if-ne p2, p1, :cond_b

    iget-boolean p1, p0, Lcom/oplus/camera/professional/r;->q:Z

    if-eqz p1, :cond_c

    .line 835
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1, p2}, Lcom/oplus/camera/professional/r$b;->b(I)V

    .line 836
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->f()V

    .line 839
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->d()I

    move-result p1

    if-eq p2, p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    .line 840
    invoke-interface {p1}, Lcom/oplus/camera/professional/r$b;->d()I

    move-result p1

    if-ne v2, p1, :cond_f

    .line 841
    :cond_d
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->J()V

    goto :goto_0

    :cond_e
    const-string v0, "pref_camera_flashmode_key"

    .line 844
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 845
    iget-object p2, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    const v1, 0x7f1001bb

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 847
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 848
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->K()V

    :cond_f
    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 158
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 163
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    sget-object v3, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v3, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 171
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    aget v4, p1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const-string p1, "ProMenuManager"

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 177
    iget-object v6, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v6, v5}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 179
    invoke-virtual {v8, v5}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 178
    invoke-direct {p0, v6, v7, v8}, Lcom/oplus/camera/professional/r;->a(JLjava/util/ArrayList;)I

    move-result v6

    if-le v6, v3, :cond_4

    .line 181
    iget-object v7, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 182
    invoke-virtual {v7, v5, v6}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/oplus/camera/professional/r;->n:Z

    if-nez v7, :cond_4

    .line 183
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, iso: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 186
    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "pref_professional_iso_key"

    .line 185
    invoke-static {v7, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v5, v6}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    :cond_4
    if-eqz v1, :cond_6

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 193
    invoke-virtual {v0, v6}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    invoke-direct {p0, v7, v8, v0}, Lcom/oplus/camera/professional/r;->a(JLjava/util/ArrayList;)I

    move-result v0

    if-le v0, v3, :cond_6

    .line 195
    iget-object v7, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 196
    invoke-virtual {v7, v6, v0}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/oplus/camera/professional/r;->n:Z

    if-nez v7, :cond_6

    .line 197
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, exposureTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 200
    invoke-virtual {v1, v6}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "pref_professional_exposure_time_key"

    .line 199
    invoke-static {v7, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v6, v0}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_8

    int-to-long v6, v4

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 207
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    invoke-direct {p0, v6, v7, v0}, Lcom/oplus/camera/professional/r;->a(JLjava/util/ArrayList;)I

    move-result v0

    if-le v0, v3, :cond_8

    .line 209
    iget-object v6, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 210
    invoke-virtual {v6, v1, v0}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/oplus/camera/professional/r;->n:Z

    if-nez v6, :cond_8

    .line 212
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewCaptureResult, cct: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 215
    invoke-virtual {v4, v1}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "pref_professional_whitebalance_key"

    .line 214
    invoke-static {v6, v4}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v4, v1, v0}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    :cond_8
    if-eqz v2, :cond_a

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 222
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 223
    invoke-virtual {v4, v1}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 222
    invoke-direct {p0, v0, v4}, Lcom/oplus/camera/professional/r;->a(FLjava/util/ArrayList;)I

    move-result v0

    if-le v0, v3, :cond_a

    .line 225
    iget-object v3, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 226
    invoke-virtual {v3, v1, v0}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/oplus/camera/professional/r;->n:Z

    if-nez v3, :cond_a

    .line 227
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewCaptureResult, focusDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 230
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "pref_professional_focus_mode_key"

    .line 229
    invoke-static {v2, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 235
    :cond_a
    iput-boolean v5, p0, Lcom/oplus/camera/professional/r;->n:Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;J)V
    .locals 3

    .line 730
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result p1

    .line 736
    sget-object v0, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getModePressState()Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 737
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->c()Z

    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->b(Z)V

    .line 744
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->H()Z

    .line 746
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->I()V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ProMenuManager"

    invoke-static {p4, p3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const p4, 0x7f100319

    invoke-interface {p3, p4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 751
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-interface {p3, p4, v0, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 752
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p4, 0x4

    invoke-interface {p3, p4}, Lcom/oplus/camera/ui/CameraUIInterface;->e(I)V

    .line 753
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p3, v1}, Lcom/oplus/camera/professional/p;->setVisibility(I)V

    .line 754
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/professional/p;->f(I)V

    .line 756
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 757
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p3

    invoke-virtual {p3, p2, v1, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 758
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/p;->b(IZ)V

    goto :goto_0

    .line 760
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p3

    const/16 p4, 0x8

    invoke-virtual {p3, p2, p4, v1}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 761
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/professional/p;->b(IZ)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/professional/r$b;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_professional_iso_key"

    if-nez p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 503
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/professional/r$b;->c(I)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->H()V

    .line 511
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->b(Ljava/lang/String;)V

    .line 512
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/oplus/camera/professional/r$b;->c(I)V

    .line 515
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setISOValue, iso: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProMenuManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([BZZ)V
    .locals 5

    const-string p1, "ProMenuManager"

    const-string p2, "onAfterPictureTaken"

    .line 1205
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->d(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 p2, 0x12c

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1208
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/16 v3, 0xb

    const-string v4, "button_color_inside_none"

    invoke-direct {p1, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 1210
    iget-object v3, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1212
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1213
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1215
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1218
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/r;->c(I)V

    .line 1219
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-static {p1, v2, v0, p2, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1220
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1223
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 1225
    iget-boolean p1, p0, Lcom/oplus/camera/professional/r;->a:Z

    if-eqz p1, :cond_3

    .line 1226
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-static {p1, v2, v0, p2, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1227
    iput-boolean v2, p0, Lcom/oplus/camera/professional/r;->a:Z

    .line 1230
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ProMenuManager"

    const-string v1, "onSingleTapUp"

    .line 958
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->c()Z

    .line 964
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/r;->c(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 954
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Z)Z
    .locals 1

    .line 1099
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/professional/p;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ProMenuManager"

    const-string p1, "onBeforeSnapping, levelPanelScrolling"

    .line 1100
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/professional/r$7;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/r$7;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p0, :cond_0

    .line 1004
    invoke-static {p1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ProMenuManager"

    .line 610
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_exposure_compensation_key"

    if-nez p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    iget-object v3, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 621
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 622
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 627
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/r$b;->e(I)V

    .line 629
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation, evValue: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation, e: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    if-nez p0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 969
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 970
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected c(I)V
    .locals 2

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuControlViewVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProMenuManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1242
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1243
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1244
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 897
    iget-object p1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    const-string v0, "pref_professional_focus_mode_key"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 900
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusValue, focusValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProMenuManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 908
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/r$b;->a(F)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    const-string v0, "ProMenuManager"

    const-string v1, "onBeforePreview"

    .line 1009
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/r$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/r$4;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1020
    iget-boolean v1, p0, Lcom/oplus/camera/professional/r;->o:Z

    if-eqz v1, :cond_0

    const-string p1, "onBeforePreview, initParamToAuto"

    .line 1021
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->M()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1028
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->L()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 3

    const-string v0, "ProMenuManager"

    const-string v1, "onBackPressed"

    .line 912
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 918
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 921
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 922
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0}, Lcom/oplus/camera/professional/r$b;->g()V

    return v2

    :cond_1
    return v1
.end method

.method public d()V
    .locals 3

    .line 573
    new-instance v0, Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/professional/p;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    .line 574
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->k:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/camera/professional/r;->b:I

    .line 575
    invoke-static {v1, v2}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/r;->f:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->y()Lcom/oplus/camera/professional/p$a;

    move-result-object p0

    .line 574
    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1076
    iput-boolean p1, p0, Lcom/oplus/camera/professional/r;->o:Z

    .line 1078
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->b()V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 0

    .line 1249
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1193
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0x3b9aca00

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->p:Z

    .line 407
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/r$a;->setVisibility(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->k()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/r;->f:Landroid/os/Handler;

    .line 134
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/professional/LevelPanel;->setAutoValueMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->n()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/r;->a(IZ)V

    .line 283
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->l()V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r$a;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->as()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/r;->b:I

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->n:Z

    .line 344
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->E()V

    .line 345
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->d()V

    .line 346
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->F()V

    .line 347
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->z()V

    .line 348
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setSettleListener(Lcom/oplus/camera/professional/p$c;)V

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->t:Lcom/oplus/camera/professional/p$b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setMotionListener(Lcom/oplus/camera/professional/p$b;)V

    .line 350
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->k()V

    return-void
.end method

.method public k()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(IZ)V

    .line 381
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result v1

    if-eqz v0, :cond_0

    .line 385
    iget-object v3, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 391
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->a()V

    return-void
.end method

.method public l()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/r;->a(IZ)V

    .line 396
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->o()V

    .line 397
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->D()V

    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/oplus/camera/professional/r;->p:Z

    .line 418
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {v1}, Lcom/oplus/camera/professional/p;->h()V

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 430
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->C()V

    return-void
.end method

.method public n()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 441
    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/r$b;->d(I)V

    .line 442
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r;->a(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r;->b(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 446
    iget-object v2, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/professional/r$b;->a(J)V

    .line 447
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->B()V

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->e()V

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->f()V

    .line 451
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->G()V

    .line 452
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->A()V

    .line 454
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->b()V

    :cond_1
    return-void
.end method

.method protected o()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 534
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 535
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 536
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    return-void
.end method

.method public p()V
    .locals 6

    .line 636
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    .line 641
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10013e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_professional_exposure_time_key"

    .line 640
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 643
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExposureTime, exposureTimeValue: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ProMenuManager"

    invoke-static {v5, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/oplus/camera/professional/r;->H()V

    .line 651
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/professional/r;->a(J)V

    .line 653
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/r$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/r$2;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()I
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    return p0
.end method

.method public r()V
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 934
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10050a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_whitebalance_key"

    .line 933
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/oplus/camera/professional/r$b;->a(I)V

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->g:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/r;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/professional/r$b;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    :catch_0
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0}, Lcom/oplus/camera/professional/r$b;->e()V

    goto :goto_0

    .line 947
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0}, Lcom/oplus/camera/professional/r$b;->e()V

    .line 950
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalance, whiteBalance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProMenuManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r$a;->setEnabled(Z)V

    goto :goto_0

    .line 992
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/professional/r;->a:Z

    :goto_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r$a;->setEnabled(Z)V

    .line 999
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->c()Z

    return-void
.end method

.method public u()V
    .locals 2

    const-string v0, "ProMenuManager"

    const-string v1, "onAfterStartPreview"

    .line 1091
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->j:Lcom/oplus/camera/professional/r$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1094
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    :cond_0
    return-void
.end method

.method public v()Z
    .locals 5

    const-string v0, "ProMenuManager"

    const-string v1, "onAfterSnapping"

    .line 1134
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/r$8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/r$8;-><init>(Lcom/oplus/camera/professional/r;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "onAfterSnapping X"

    .line 1160
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/oplus/camera/professional/r;->s:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->c:Landroid/app/Activity;

    .line 1235
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10013e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_time_key"

    .line 1234
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()V
    .locals 0

    .line 1253
    iget-object p0, p0, Lcom/oplus/camera/professional/r;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b()V

    :cond_0
    return-void
.end method
