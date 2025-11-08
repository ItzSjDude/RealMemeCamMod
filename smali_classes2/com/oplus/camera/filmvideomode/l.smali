.class public Lcom/oplus/camera/filmvideomode/l;
.super Landroid/widget/RelativeLayout;
.source "FilmSlideBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/l$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "l"


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/filmvideomode/c;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/camera/professional/LevelPanel;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/oplus/camera/capmode/a;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Lcom/oplus/camera/filmvideomode/l$a;

.field private h:Lcom/oplus/camera/professional/p$b;

.field private i:Lcom/oplus/camera/filmvideomode/k$a;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->e:Landroid/content/SharedPreferences;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->c:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->h:Lcom/oplus/camera/professional/p$b;

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->i:Lcom/oplus/camera/filmvideomode/k$a;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/l;->j:Z

    .line 66
    iput p1, p0, Lcom/oplus/camera/filmvideomode/l;->k:I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/l;->l:Z

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/l;->m:Z

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 76
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 83
    :goto_0
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 84
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->e:Landroid/content/SharedPreferences;

    .line 86
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/l;->k:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/filmvideomode/l$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    return-object p0
.end method

.method private a(FF)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 335
    new-instance v0, Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001c6

    .line 336
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d7

    .line 337
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f09023f

    .line 338
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "manual_focus_mode_key"

    .line 339
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_film_mode_focus"

    .line 340
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f1001c5

    .line 341
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 342
    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;FF)V

    return-object v0
.end method

.method private a(IIF)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 293
    new-instance v0, Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10013c

    .line 294
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d8

    .line 295
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090155

    .line 296
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "iso_mode_key"

    .line 297
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_film_mode_exposure"

    .line 298
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10013b

    .line 299
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;IIF)V

    return-object v0
.end method

.method private a(III)Lcom/oplus/camera/professional/z;
    .locals 2

    .line 306
    new-instance v0, Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10021e

    .line 307
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805d9

    .line 308
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0901f3

    .line 309
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "exposure_mode_key"

    .line 310
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_film_mode_iso"

    .line 311
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10021d

    .line 312
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 314
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;III)V

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

    .line 320
    new-instance v0, Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100140

    .line 321
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805db

    .line 322
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090339

    .line 323
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "shutter_mode_key"

    .line 324
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_film_mode_shutter"

    .line 325
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10013f

    .line 326
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f030082

    .line 327
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->e(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f030081

    .line 328
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 330
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/l;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->i(I)V

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

    .line 456
    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, v0, p0

    if-lez p0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sub-float p0, p2, p3

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p0, v0

    const v0, 0x3ca3d70a    # 0.02f

    .line 465
    sget-object v1, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

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

    invoke-static {v1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p3

    .line 469
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 471
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 472
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    int-to-float v3, v2

    mul-float v4, p0, v3

    sub-float v4, p2, v4

    mul-float/2addr v3, v0

    .line 477
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "%.2f"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 457
    :cond_3
    :goto_1
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateFocusValues, return, minFocusDistance: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;IIF)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eq p3, v0, :cond_3

    :cond_0
    if-gt p2, p3, :cond_3

    const/4 v0, 0x0

    .line 348
    invoke-static {p4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p2, p3, :cond_2

    .line 361
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, p2, p4}, Lcom/oplus/camera/filmvideomode/l;->a(IF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 349
    :cond_3
    :goto_1
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateExposureCompensationValues, return, minIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maxIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;III)V
    .locals 0

    if-le p3, p2, :cond_0

    move p2, p3

    .line 487
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 488
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-lez p2, :cond_3

    if-lez p4, :cond_3

    if-ne p2, p4, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 498
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p4, p2, :cond_2

    .line 502
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x64

    goto :goto_0

    :cond_2
    return-void

    .line 491
    :cond_3
    :goto_1
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateIsoValues, return null, maxISOValue: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", minISOValue: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maxISOValue: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 368
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 369
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 371
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 378
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 380
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 381
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
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

    .line 372
    :cond_2
    :goto_1
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateWhiteBalanceValues, return, range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/l;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/l;->j:Z

    return p1
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

    .line 280
    new-instance v0, Lcom/oplus/camera/professional/z;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10050b

    .line 281
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f0805dc

    .line 282
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f090064

    .line 283
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->c(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "awb_mode_key"

    .line 284
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->a(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const-string v1, "pref_film_mode_white_balance"

    .line 285
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->b(Ljava/lang/String;)Lcom/oplus/camera/professional/z;

    move-result-object v0

    const v1, 0x7f10050a

    .line 286
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/z;->d(I)Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 288
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;Ljava/util/List;)V

    return-object v0
.end method

.method private b(Lcom/oplus/camera/e/h;)V
    .locals 5

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 829
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v3

    .line 830
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v4

    .line 831
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 829
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;IIF)V

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->d()V

    .line 834
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p1, :cond_0

    .line 835
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 836
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result p1

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 838
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    .line 837
    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/filmvideomode/l;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/l;->j:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/professional/p$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->h:Lcom/oplus/camera/professional/p$b;

    return-object p0
.end method

.method private c(Lcom/oplus/camera/e/h;)V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v3

    .line 845
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    .line 844
    invoke-direct {p0, v0, v3, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;FF)V

    .line 846
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->d()V

    .line 847
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    .line 848
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    .line 850
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p1, :cond_0

    .line 851
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 852
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result p1

    .line 853
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 854
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    .line 853
    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private d(Lcom/oplus/camera/e/h;)V
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 860
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;Ljava/util/List;)V

    .line 861
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->d()V

    .line 862
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    .line 863
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    .line 865
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p1, :cond_0

    .line 866
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 867
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result p1

    .line 868
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 869
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    .line 868
    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method private e(Lcom/oplus/camera/e/h;)V
    .locals 10

    .line 874
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v4

    .line 875
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    invoke-virtual {v4}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030082

    .line 877
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->e(I)Lcom/oplus/camera/professional/z;

    const v0, 0x7f030081

    .line 878
    invoke-virtual {v4, v0}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    .line 881
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v5

    const-wide/32 v7, 0x7735940

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 883
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 v0, 0x100

    .line 884
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    .line 883
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    .line 885
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->d()V

    .line 886
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    .line 887
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    .line 889
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p1, :cond_0

    .line 890
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 891
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result p1

    .line 892
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 893
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    .line 892
    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method private f(Lcom/oplus/camera/e/h;)V
    .locals 5

    .line 898
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object v0

    .line 899
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v4

    .line 900
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result p1

    .line 899
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/professional/z;III)V

    .line 901
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->d()V

    .line 902
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    .line 903
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    .line 905
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 907
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result p1

    .line 908
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    .line 909
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result p0

    .line 908
    invoke-interface {v0, v1, p1, p0}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method private i(I)V
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/l;->l:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/l;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 543
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->f()V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .line 708
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

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

    .line 523
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

    .line 524
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    goto :goto_0

    .line 529
    :cond_1
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxPictureSize, max: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    const-string v1, "0"

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 214
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->d(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "auto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v1
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

    .line 512
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

    .line 514
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

.method public a(II)Ljava/lang/String;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    const-string v1, "0"

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-ltz p2, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 242
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->d(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 246
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "auto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 713
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/l;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 719
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_1

    return-object v0

    .line 725
    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(FFLandroid/os/Handler;)V
    .locals 7

    .line 132
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(FF)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p3

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IIFLandroid/os/Handler;)V
    .locals 7

    .line 137
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/l;->a(IIF)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v6, p4

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IIILandroid/os/Handler;)V
    .locals 7

    .line 116
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/l;->a(III)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p4

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p2, p0, p3}, Lcom/oplus/camera/filmvideomode/c;->a(ILandroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 272
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_manual"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 7

    .line 556
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->a()Z

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->i:Lcom/oplus/camera/filmvideomode/k$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 559
    invoke-interface {v1, v2}, Lcom/oplus/camera/filmvideomode/k$a;->e(Z)V

    :cond_0
    const/16 v1, 0xfa

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 563
    new-instance v4, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v4}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 564
    iput-boolean v3, v4, Lcom/oplus/camera/professional/u$a;->a:Z

    .line 565
    iput v1, v4, Lcom/oplus/camera/professional/u$a;->c:I

    .line 566
    invoke-virtual {p0, v4}, Lcom/oplus/camera/filmvideomode/l;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 568
    invoke-virtual {p0, v4}, Lcom/oplus/camera/filmvideomode/l;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 571
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/LevelPanel;

    .line 572
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/l;->c:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_2

    .line 575
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_8

    .line 583
    new-instance p2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 584
    iput-boolean v2, p2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v2, 0x96

    .line 585
    iput v2, p2, Lcom/oplus/camera/professional/u$a;->b:I

    const/16 v4, 0x190

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 587
    :goto_1
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move v5, v1

    goto :goto_2

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    :goto_2
    iput v5, p2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 591
    iput v1, p2, Lcom/oplus/camera/professional/u$a;->e:F

    if-eqz v0, :cond_6

    move v2, v3

    .line 592
    :cond_6
    iput v2, p2, Lcom/oplus/camera/professional/u$a;->f:I

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    .line 593
    :goto_3
    iput v3, p2, Lcom/oplus/camera/professional/u$a;->g:I

    .line 594
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 596
    :cond_8
    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/LevelPanel;->setVisibility(I)V

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

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/filmvideomode/l;->a(JJLjava/util/List;)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p6

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V
    .locals 9

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    sget-object p1, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addControllerPanel, return, size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-static {p2}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result v5

    .line 151
    new-instance v8, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 152
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v7

    move-object v0, v8

    move-object v3, p6

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/filmvideomode/c;-><init>(Landroid/content/Context;ZLandroid/os/Handler;ZZLcom/oplus/camera/professional/z;Landroid/content/SharedPreferences;)V

    .line 153
    invoke-virtual {v8, p1}, Lcom/oplus/camera/filmvideomode/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v8, p5}, Lcom/oplus/camera/filmvideomode/c;->setAlign(I)V

    .line 155
    invoke-virtual {p0, v8}, Lcom/oplus/camera/filmvideomode/l;->addView(Landroid/view/View;)V

    .line 156
    new-instance p1, Lcom/oplus/camera/filmvideomode/l$1;

    invoke-direct {p1, p0, p2, v8}, Lcom/oplus/camera/filmvideomode/l$1;-><init>(Lcom/oplus/camera/filmvideomode/l;ILcom/oplus/camera/filmvideomode/c;)V

    invoke-virtual {v8, p1}, Lcom/oplus/camera/filmvideomode/c;->setValueChangeListener(Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;)V

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->f(Lcom/oplus/camera/e/h;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->e(Lcom/oplus/camera/e/h;)V

    .line 822
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->d(Lcom/oplus/camera/e/h;)V

    .line 823
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->c(Lcom/oplus/camera/e/h;)V

    .line 824
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->b(Lcom/oplus/camera/e/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;Landroid/os/Handler;)V
    .locals 11

    .line 91
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v1

    .line 92
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v2

    .line 91
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/oplus/camera/filmvideomode/l;->a(IIILandroid/os/Handler;)V

    .line 95
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v0

    const-wide/32 v2, 0x7735940

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 97
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v7

    const/16 v0, 0x100

    .line 98
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v4, p0

    move-object v10, p2

    .line 97
    invoke-virtual/range {v4 .. v10}, Lcom/oplus/camera/filmvideomode/l;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 101
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/filmvideomode/l;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 104
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(FFLandroid/os/Handler;)V

    .line 108
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    .line 108
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oplus/camera/filmvideomode/l;->a(IIFLandroid/os/Handler;)V

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->b()V

    return-void
.end method

.method protected a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V
    .locals 17
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

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 392
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz v5, :cond_0

    .line 394
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v9, p6

    .line 395
    invoke-virtual {v0, v9}, Lcom/oplus/camera/filmvideomode/l;->a(Ljava/util/List;)J

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

    .line 397
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    :cond_0
    sget-object v8, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateShutterValues, max: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", min: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", before filtering, parameterNamesList: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 405
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, -0x1

    .line 410
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "s"

    if-eqz v11, :cond_5

    .line 411
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "/"

    .line 412
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 414
    array-length v13, v11

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    const/16 v16, 0x0

    if-le v13, v7, :cond_1

    .line 415
    aget-object v9, v11, v16

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    aget-object v11, v11, v7

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v16

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    div-double/2addr v9, v11

    :goto_1
    mul-double/2addr v9, v14

    double-to-long v9, v9

    goto :goto_2

    .line 417
    :cond_1
    array-length v13, v11

    if-ne v13, v7, :cond_2

    .line 418
    aget-object v9, v11, v16

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v16

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_1

    :cond_2
    :goto_2
    cmp-long v11, v9, v3

    if-ltz v11, :cond_4

    cmp-long v11, v9, v1

    if-lez v11, :cond_3

    goto :goto_3

    .line 425
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 429
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

    .line 431
    div-long/2addr v3, v7

    div-long v7, v1, v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    .line 433
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_6
    sget-object v1, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateShutterValues, after filtering, parameterValuesList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", parameterNamesList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_film_mode_shutter"

    .line 440
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 442
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 443
    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_shutter_manual"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
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

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->b(Ljava/util/List;)Lcom/oplus/camera/professional/z;

    move-result-object v4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V

    return-void
.end method

.method public a(ZI)V
    .locals 1

    .line 657
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 658
    sget-object p0, Lcom/oplus/camera/filmvideomode/l;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onManualClick, no change, isAuto: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/l;->setAuto(I)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/l;->setManual(I)V

    .line 669
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    if-eqz p0, :cond_2

    .line 670
    invoke-interface {p0, p2, p1}, Lcom/oplus/camera/filmvideomode/l$a;->b(IZ)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 601
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

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

    .line 602
    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getParameterValueList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/l;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/filmvideomode/c;->b(ILandroid/app/Activity;)V

    return-void
.end method

.method public c(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public c()V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 806
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/filmvideomode/c;

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_manual"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_manual_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/c;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 812
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 758
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

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

    check-cast v1, Lcom/oplus/camera/filmvideomode/c;

    .line 955
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/c;->b(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/c;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 965
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/l;->m:Z

    return-void
.end method

.method public e(I)Z
    .locals 5

    .line 771
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 777
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    .line 778
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_manual_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 779
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    if-eqz p1, :cond_0

    .line 926
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/filmvideomode/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 970
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/l;->m:Z

    return-void
.end method

.method public g(I)Ljava/lang/String;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPanelMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/filmvideomode/c;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    return-object p0
.end method

.method public getTouchAreaRect()Landroid/graphics/Rect;
    .locals 4

    .line 960
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/filmvideomode/l;->k:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getVisibilityPanelIndex()I
    .locals 2

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/c;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public h(I)Ljava/lang/String;
    .locals 0

    .line 944
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/c;

    if-eqz p0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/c;->getSubModeBarData()Lcom/oplus/camera/professional/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/z;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public scrollTo(II)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    .line 917
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/l;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/filmvideomode/c;->a(ILandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

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

    check-cast v1, Lcom/oplus/camera/professional/LevelPanel;

    .line 626
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 632
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 633
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l;->c:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 635
    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/LevelPanel;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAuto(I)V
    .locals 0

    .line 679
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->setPreferenceAuto(I)V

    .line 681
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->setPanelsBarAuto(I)V

    return-void
.end method

.method public setManual(I)V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/c;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_manual_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 695
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/l;->a(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 698
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/filmvideomode/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getCurrentIndex()I

    move-result v1

    .line 701
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/c;->getParameterNamesList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->a(IILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 704
    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    return-void
.end method

.method public setMotionListener(Lcom/oplus/camera/professional/p$b;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->h:Lcom/oplus/camera/professional/p$b;

    return-void
.end method

.method public setPanelsBarAuto(I)V
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/filmvideomode/c;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/c;->setBarAuto(Z)V

    return-void
.end method

.method public setParamsStateListener(Lcom/oplus/camera/filmvideomode/k$a;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->i:Lcom/oplus/camera/filmvideomode/k$a;

    return-void
.end method

.method public setPreferenceAuto(I)V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/filmvideomode/c;

    if-nez p1, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 746
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_manual_state"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setValueListener(Lcom/oplus/camera/filmvideomode/l$a;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l;->g:Lcom/oplus/camera/filmvideomode/l$a;

    return-void
.end method
