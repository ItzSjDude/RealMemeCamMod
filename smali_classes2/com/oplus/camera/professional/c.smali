.class public Lcom/oplus/camera/professional/c;
.super Landroid/widget/RelativeLayout;
.source "HSLevelPanel.java"

# interfaces
.implements Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/c$a;
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

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/oplus/camera/professional/i;

.field protected c:Lcom/oplus/camera/professional/b;

.field protected d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

.field protected e:Lcom/oplus/camera/professional/w;

.field protected f:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Lcom/oplus/camera/professional/c$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/OplusTextView;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Landroid/content/SharedPreferences;

.field private o:Ljava/util/regex/Pattern;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/professional/c;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/i;Landroid/content/SharedPreferences;)V
    .locals 10

    move-object v0, p0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 54
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    .line 55
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    .line 56
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    .line 57
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->e:Lcom/oplus/camera/professional/w;

    .line 58
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->f:Landroid/widget/TextView;

    const-string v2, "[\u4e00-\u9fa5]"

    .line 60
    iput-object v2, v0, Lcom/oplus/camera/professional/c;->h:Ljava/lang/String;

    const/4 v2, 0x0

    .line 61
    iput v2, v0, Lcom/oplus/camera/professional/c;->i:I

    .line 63
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/oplus/camera/professional/c;->l:Ljava/util/ArrayList;

    .line 65
    iput-boolean v2, v0, Lcom/oplus/camera/professional/c;->m:Z

    .line 66
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->n:Landroid/content/SharedPreferences;

    .line 67
    iget-object v1, v0, Lcom/oplus/camera/professional/c;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/professional/c;->o:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, v0, Lcom/oplus/camera/professional/c;->p:Z

    .line 69
    iput-boolean v1, v0, Lcom/oplus/camera/professional/c;->q:Z

    .line 70
    iput-boolean v2, v0, Lcom/oplus/camera/professional/c;->r:Z

    const-string v3, "100"

    const-string v4, "400"

    const-string v5, "800"

    const-string v6, "1600"

    const-string v7, "3200"

    const-string v8, "6400"

    .line 72
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/professional/c;->s:[Ljava/lang/String;

    const-string v2, "1/8000"

    const-string v3, "1/1000"

    const-string v4, "1/125"

    const-string v5, "1/15"

    const-string v6, "1/2"

    const-string v7, "4"

    const-string v8, "30"

    const-string v9, "32"

    .line 73
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/professional/c;->t:[Ljava/lang/String;

    const-string v1, "2300"

    const-string v2, "3600"

    const-string v3, "4900"

    const-string v4, "6200"

    const-string v5, "7500"

    .line 74
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/professional/c;->u:[Ljava/lang/String;

    const-string v1, "-2.00"

    const-string v2, "-1.00"

    const-string v3, "0.00"

    const-string v4, "+1.00"

    const-string v5, "+2.00"

    .line 75
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/professional/c;->v:[Ljava/lang/String;

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    move-object/from16 v1, p7

    .line 83
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->n:Landroid/content/SharedPreferences;

    move-object/from16 v1, p6

    .line 84
    iput-object v1, v0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    move v1, p2

    .line 85
    iput-boolean v1, v0, Lcom/oplus/camera/professional/c;->q:Z

    move v1, p5

    .line 86
    iput-boolean v1, v0, Lcom/oplus/camera/professional/c;->r:Z

    move v1, p4

    .line 87
    iput-boolean v1, v0, Lcom/oplus/camera/professional/c;->m:Z

    move-object v1, p3

    .line 88
    invoke-direct {p0, p3}, Lcom/oplus/camera/professional/c;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/c;)Lcom/oplus/camera/professional/c$a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 148
    sget-object p0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 6

    .line 119
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v1, "2000"

    const-string v2, "pref_professional_whitebalance_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v2, "100"

    const-string v3, "pref_professional_iso_key"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v3, "0.00"

    const-string v4, "pref_professional_exposure_compensation_key"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v4, "1/50s"

    const-string v5, "pref_professional_exposure_time_key"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v5, "pref_professional_focus_mode_key"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v5, "pref_film_mode_white_balance"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_iso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_exposure"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_shutter"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    const-string v1, "pref_film_mode_focus"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 13

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x213b9033

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8b1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xacb

    if-eq v1, v2, :cond_1

    const v2, 0x11c65

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "WB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v1, "EV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v1, "Shutter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v0, 0x0

    :goto_2
    move-object v12, v0

    goto :goto_3

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->v:[Ljava/lang/String;

    goto :goto_2

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->u:[Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->t:[Ljava/lang/String;

    goto :goto_2

    .line 313
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->s:[Ljava/lang/String;

    goto :goto_2

    .line 328
    :goto_3
    new-instance v0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    iget-object v8, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v1, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object v11

    move-object v7, v0

    move-object v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/ArrayList;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    .line 329
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 330
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/camera/professional/c;->m:Z

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    div-int/2addr v0, v5

    iget-object v1, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07065c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070660

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setScaleBarValueChangeListener(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$ScaleBarValueChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    iget-boolean v1, p0, Lcom/oplus/camera/professional/c;->q:Z

    invoke-virtual {v0, v1, v4}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setAuto(ZZ)V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {}, Lcom/oplus/camera/professional/c;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setId(I)V

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/professional/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 343
    new-instance v0, Lcom/oplus/camera/professional/b;

    iget-object v1, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    iget-boolean v1, p0, Lcom/oplus/camera/professional/c;->q:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/b;->setAuto(Z)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-static {}, Lcom/oplus/camera/professional/c;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/b;->setId(I)V

    .line 346
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f070640

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 347
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f070642

    .line 349
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070665

    .line 350
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v1, 0x7f070641

    .line 351
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 352
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    iget-boolean v2, p0, Lcom/oplus/camera/professional/c;->r:Z

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v1, v4}, Lcom/oplus/camera/professional/b;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    const v2, 0x7f080446

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/b;->setImageResource(I)V

    .line 354
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    new-instance v1, Lcom/oplus/camera/professional/c$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/c$3;-><init>(Lcom/oplus/camera/professional/c;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/c;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f070645

    .line 368
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070644

    .line 369
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 370
    new-instance v2, Lcom/oplus/camera/professional/c$4;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/oplus/camera/professional/c$4;-><init>(Lcom/oplus/camera/professional/c;IILandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_professional_exposure_time_key"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/c;->j:Landroid/content/Context;

    const p1, 0x7f10013e

    .line 205
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

    .line 143
    sget-object v0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    sput-object p0, Lcom/oplus/camera/professional/c;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pref_professional_exposure_compensation_key"

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 170
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/oplus/camera/professional/c;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v3}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    .line 184
    invoke-virtual {v3}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 187
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move-object p0, v2

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method protected a(Lcom/oplus/camera/professional/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(ILandroid/app/Activity;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getCurrentIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setCurrentIndex(I)V

    if-eqz p2, :cond_1

    .line 231
    new-instance v0, Lcom/oplus/camera/professional/c$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/professional/c$1;-><init>(Lcom/oplus/camera/professional/c;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 245
    iget-object p3, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setCurrentIndex(I)V

    if-eqz p2, :cond_0

    .line 248
    new-instance p3, Lcom/oplus/camera/professional/c$2;

    invoke-direct {p3, p0, p1}, Lcom/oplus/camera/professional/c$2;-><init>(Lcom/oplus/camera/professional/c;I)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getCurrentIndex()I

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

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 404
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public b()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setLevelNum(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->initDataIndex(I)V

    :cond_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->getCurrentIndex()I

    move-result p0

    return p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/i;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHSSubModeBarData()Lcom/oplus/camera/professional/i;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    return-object p0
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

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/i;->c()Ljava/util/ArrayList;

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

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->b:Lcom/oplus/camera/professional/i;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/i;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 0

    .line 290
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 292
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onActionUp()V
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    if-eqz p0, :cond_0

    .line 520
    invoke-interface {p0}, Lcom/oplus/camera/professional/c$a;->b()V

    :cond_0
    return-void
.end method

.method public onBarMoving()V
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/oplus/camera/professional/c;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/c;->setBarAuto(Z)V

    :cond_0
    return-void
.end method

.method public onBarScrolling(Z)V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    if-eqz p0, :cond_0

    .line 513
    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/c$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/oplus/camera/professional/c;->p:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 285
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onValueChange(I)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSLevelPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    if-eqz p0, :cond_0

    .line 499
    invoke-interface {p0, p1}, Lcom/oplus/camera/professional/c$a;->a(I)V

    :cond_0
    return-void
.end method

.method public setAlign(I)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setAlign(I)V

    :cond_0
    return-void
.end method

.method public setBarAuto(Z)V
    .locals 2

    .line 262
    iput-boolean p1, p0, Lcom/oplus/camera/professional/c;->q:Z

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    if-eqz p1, :cond_0

    .line 265
    iget-boolean v0, p0, Lcom/oplus/camera/professional/c;->q:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->setAuto(ZZ)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    if-eqz p1, :cond_1

    .line 269
    iget-boolean p0, p0, Lcom/oplus/camera/professional/c;->q:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/b;->setAuto(Z)V

    :cond_1
    return-void
.end method

.method public setValueChangeListener(Lcom/oplus/camera/professional/c$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/oplus/camera/professional/c;->k:Lcom/oplus/camera/professional/c$a;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
