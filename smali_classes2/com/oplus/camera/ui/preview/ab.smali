.class public Lcom/oplus/camera/ui/preview/ab;
.super Ljava/lang/Object;
.source "TeleSmallPreviewManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/f$a;
.implements Lcom/oplus/camera/ui/preview/g$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/ab$a;,
        Lcom/oplus/camera/ui/preview/ab$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/app/Activity;

.field private f:Landroid/os/Handler;

.field private g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

.field private h:Lcom/oplus/camera/gl/u;

.field private i:Lcom/oplus/camera/ui/CameraUIListener;

.field private j:Lcom/oplus/camera/ui/preview/ab$b;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/util/Size;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->a:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->b:Z

    .line 50
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->c:Z

    .line 51
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->d:Z

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    iput v2, p0, Lcom/oplus/camera/ui/preview/ab;->k:F

    .line 59
    iput v2, p0, Lcom/oplus/camera/ui/preview/ab;->l:F

    .line 60
    iput v2, p0, Lcom/oplus/camera/ui/preview/ab;->m:F

    .line 61
    iput v2, p0, Lcom/oplus/camera/ui/preview/ab;->n:F

    .line 62
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->o:Landroid/util/Size;

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/preview/ab;->p:I

    .line 64
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->q:Z

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->r:Z

    .line 66
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->s:Z

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    .line 70
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 71
    new-instance p1, Lcom/oplus/camera/ui/preview/ab$a;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/preview/ab$a;-><init>(Lcom/oplus/camera/ui/preview/ab;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    const p2, 0x7f090193

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 73
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ab;->i()V

    .line 74
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ab;->g()V

    .line 75
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ab;->h()V

    return-void
.end method

.method private a(Lcom/oplus/camera/screen/b/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 566
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07054e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    mul-float/2addr v2, v1

    .line 569
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 570
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 571
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    .line 572
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 574
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p1

    const v0, 0x7f070531

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 575
    iget p0, p0, Lcom/oplus/camera/ui/preview/ab;->p:I

    if-ne p1, p0, :cond_0

    const p0, 0x7f07051b

    .line 576
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    const p0, 0x7f070520

    .line 581
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 583
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const p0, 0x7f070532

    .line 584
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_1
    return-object v2
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    return-object p0
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V
    .locals 1

    const/16 p0, 0x9

    const/16 v0, 0xb

    if-eqz p2, :cond_0

    .line 646
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 647
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 650
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    const/16 p0, 0xc

    const/16 p2, 0xa

    if-eqz p3, :cond_1

    .line 654
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 655
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 658
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ab;ZZZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/ab;->b(ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ab;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ab;->s:Z

    return p1
.end method

.method private b(ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "TeleSmallPreviewManager"

    const-string v2, "showTeleSmallPreviewView"

    .line 275
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-nez v2, :cond_0

    const-string v0, "showTeleSmallPreviewView, view is null"

    .line 278
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {v2}, Lcom/oplus/camera/gl/u;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x4

    if-nez p1, :cond_3

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    .line 284
    invoke-virtual {v3}, Lcom/oplus/camera/gl/u;->getVisibility()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v0, "showTeleSmallPreviewView, no need to change visibility"

    .line 285
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_3
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_19

    .line 293
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/u;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 295
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->o:Landroid/util/Size;

    if-eqz v6, :cond_4

    .line 296
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/ab;->o:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v6

    iput v6, v0, Lcom/oplus/camera/ui/preview/ab;->p:I

    .line 299
    :cond_4
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070bb7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 300
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070bb5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v6, 0x1

    .line 301
    invoke-direct {v0, v5, v6, v6}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 304
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 305
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0704f5

    .line 306
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_5
    move v7, v4

    .line 309
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v8

    .line 311
    iget v9, v0, Lcom/oplus/camera/ui/preview/ab;->p:I

    const/4 v10, 0x3

    const/4 v11, 0x5

    const v12, 0x7f07054e

    const/4 v13, 0x6

    const v14, 0x7f070bb6

    if-eqz v9, :cond_12

    if-eq v9, v6, :cond_e

    if-eq v9, v3, :cond_a

    if-eq v9, v13, :cond_6

    .line 427
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070bb2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 428
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07075b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    .line 429
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 402
    :cond_6
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070baf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 403
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 405
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v9

    if-ne v6, v9, :cond_17

    .line 406
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 407
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0704f2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 408
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 409
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_17

    .line 412
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v9

    if-ne v13, v9, :cond_8

    .line 413
    invoke-direct {v0, v5, v6, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 414
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz v8, :cond_7

    move v7, v8

    .line 415
    :cond_7
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 416
    :cond_8
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v6

    if-ne v11, v6, :cond_17

    .line 417
    invoke-direct {v0, v5, v4, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 418
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz v8, :cond_9

    move v7, v8

    .line 419
    :cond_9
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 343
    :cond_a
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070bae

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 344
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v9

    if-ne v6, v9, :cond_17

    .line 347
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 348
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0704f1

    .line 349
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 350
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 351
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_17

    .line 354
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v9

    if-ne v13, v9, :cond_c

    .line 355
    invoke-direct {v0, v5, v6, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 356
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz v8, :cond_b

    move v7, v8

    .line 357
    :cond_b
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 358
    :cond_c
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v6

    if-ne v11, v6, :cond_17

    .line 359
    invoke-direct {v0, v5, v4, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 360
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz v8, :cond_d

    move v7, v8

    .line 361
    :cond_d
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 369
    :cond_e
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070bb0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 370
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 372
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v8}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v8

    if-eq v3, v8, :cond_11

    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 373
    invoke-interface {v8}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v8

    if-ne v10, v8, :cond_f

    goto :goto_1

    .line 377
    :cond_f
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v8}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v8

    if-ne v6, v8, :cond_17

    .line 378
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 379
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0704f3

    .line 380
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 381
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 382
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_17

    .line 385
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v8

    if-ne v13, v8, :cond_10

    .line 386
    invoke-direct {v0, v5, v6, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 387
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 388
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704f6

    .line 389
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 390
    :cond_10
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v6

    if-ne v11, v6, :cond_17

    .line 391
    invoke-direct {v0, v5, v4, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 392
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 393
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704f6

    .line 394
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 374
    :cond_11
    :goto_1
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 375
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v7

    iget v6, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v6

    .line 376
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v7, v6

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 313
    :cond_12
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f070bb1

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 314
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 316
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v9

    if-ne v10, v9, :cond_13

    .line 317
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 318
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v7

    iget v6, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v6

    .line 319
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v7, v6

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 320
    :cond_13
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v9

    if-ne v6, v9, :cond_17

    .line 321
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 322
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0704f4

    .line 323
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 324
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 325
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_17

    .line 328
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v9

    if-ne v13, v9, :cond_15

    .line 329
    invoke-direct {v0, v5, v6, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 330
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz v8, :cond_14

    move v7, v8

    .line 331
    :cond_14
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 332
    :cond_15
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->m()I

    move-result v6

    if-ne v11, v6, :cond_17

    .line 333
    invoke-direct {v0, v5, v4, v4}, Lcom/oplus/camera/ui/preview/ab;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 334
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz v8, :cond_16

    move v7, v8

    .line 335
    :cond_16
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_17
    :goto_2
    if-eqz v1, :cond_18

    .line 433
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 434
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/screen/b/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 437
    :cond_18
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v5}, Lcom/oplus/camera/gl/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    :cond_19
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v1, v6, v8, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    if-eqz p3, :cond_1a

    if-nez p1, :cond_1a

    .line 444
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v9, 0x3f2b851f    # 0.67f

    invoke-direct {v5, v6, v8, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_3

    .line 446
    :cond_1a
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v6, v8, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v5, v9

    :goto_3
    if-eqz p1, :cond_1b

    .line 452
    new-instance v6, Lcom/oplus/camera/ui/preview/ab$1;

    invoke-direct {v6, v0}, Lcom/oplus/camera/ui/preview/ab$1;-><init>(Lcom/oplus/camera/ui/preview/ab;)V

    goto :goto_4

    .line 492
    :cond_1b
    new-instance v6, Lcom/oplus/camera/ui/preview/ab$2;

    invoke-direct {v6, v0}, Lcom/oplus/camera/ui/preview/ab$2;-><init>(Lcom/oplus/camera/ui/preview/ab;)V

    :goto_4
    if-eqz p2, :cond_1e

    .line 532
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v8, "scaleX"

    if-eqz p1, :cond_1c

    .line 535
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 537
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    const-string v10, "scaleY"

    invoke-static {v9, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_5

    .line 540
    :cond_1c
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    new-array v10, v3, [F

    fill-array-data v10, :array_2

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 542
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    const-string v10, "scaleY"

    invoke-static {v9, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 546
    :goto_5
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0xc8

    .line 548
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x0

    .line 549
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 550
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 552
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/u;->clearAnimation()V

    .line 553
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/u;->invalidate()V

    .line 554
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p1, :cond_1d

    move v2, v4

    :cond_1d
    invoke-virtual {v1, v7, v2, v5}, Lcom/oplus/camera/gl/u;->a(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;)V

    .line 555
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/u;->f()V

    goto :goto_6

    :cond_1e
    if-eqz p1, :cond_1f

    .line 558
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/gl/u;->setVisibility(I)V

    goto :goto_6

    .line 560
    :cond_1f
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/u;->setVisibility(I)V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/ab;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ab;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/ab;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ab;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/ab;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ab;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/ab;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ab;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/ab;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ab;->b:Z

    return p0
.end method

.method private g()V
    .locals 3

    const-string v0, "com.oplus.sat.tele.zoom.range"

    .line 79
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 84
    aget v1, v0, v1

    iput v1, p0, Lcom/oplus/camera/ui/preview/ab;->k:F

    const/4 v1, 0x1

    .line 85
    aget v0, v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/ab;->l:F

    .line 86
    iget v0, p0, Lcom/oplus/camera/ui/preview/ab;->l:F

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41700000    # 15.0f

    .line 87
    :goto_0
    iput v1, p0, Lcom/oplus/camera/ui/preview/ab;->m:F

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTeleZoomRange, range: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ab;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/ab;->l:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TeleSmallPreviewManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private h()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/oplus/camera/gl/u;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/gl/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/u;->b()V

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/screen/b/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bb5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 110
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bb6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :goto_1
    new-instance v0, Lcom/oplus/camera/gl/l;

    invoke-direct {v0}, Lcom/oplus/camera/gl/l;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(I)V

    .line 123
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070bb4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(F)V

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/u;->setOuterFramePaint(Lcom/oplus/camera/gl/l;)V

    .line 125
    new-instance v0, Lcom/oplus/camera/gl/l;

    invoke-direct {v0}, Lcom/oplus/camera/gl/l;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(I)V

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bb3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(F)V

    .line 128
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/u;->setInnerFramePaint(Lcom/oplus/camera/gl/l;)V

    .line 129
    new-instance v0, Lcom/oplus/camera/gl/l;

    invoke-direct {v0}, Lcom/oplus/camera/gl/l;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06009c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(I)V

    .line 131
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/l;->a(F)V

    .line 132
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/u;->setLinePaint(Lcom/oplus/camera/gl/l;)V

    .line 134
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setVisibility(I)V

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/camera/gl/u;->e()V

    :goto_2
    return-void
.end method

.method private i()V
    .locals 2

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenModeChange State Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Lcom/oplus/camera/ui/preview/ab$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/preview/ab$b;-><init>(Lcom/oplus/camera/ui/preview/ab;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/Image;)I
    .locals 0

    .line 669
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 671
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p0, :cond_0

    .line 672
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->a(Landroid/hardware/HardwareBuffer;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/util/Size;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSize, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleSmallPreviewManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->o:Landroid/util/Size;

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/screen/b/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p1

    .line 227
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/u;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 231
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/f;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/f;->a(Lcom/oplus/camera/ui/menu/setting/f$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g$c;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ab;->q:Z

    return-void
.end method

.method public a(ZZZ)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTeleSmallPreviewViewVisible, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleSmallPreviewManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/ab;->c:Z

    .line 256
    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/ab;->s:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 257
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/ab;->c:Z

    .line 260
    :cond_0
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/ab;->d:Z

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 265
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 268
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ab;->r:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ab;->s:Z

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

.method public a(F)Z
    .locals 0

    .line 165
    iget p0, p0, Lcom/oplus/camera/ui/preview/ab;->m:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(F)V
    .locals 2

    .line 169
    iput p1, p0, Lcom/oplus/camera/ui/preview/ab;->n:F

    .line 171
    iget p1, p0, Lcom/oplus/camera/ui/preview/ab;->n:F

    iget v0, p0, Lcom/oplus/camera/ui/preview/ab;->m:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 172
    iput v0, p0, Lcom/oplus/camera/ui/preview/ab;->n:F

    .line 175
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/preview/ab;->k:F

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/oplus/camera/ui/preview/ab;->n:F

    mul-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 177
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setFrameDelta(F)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setRearMirrorEnable(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz p0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->a()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ab;->r:Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-nez v0, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ab;->h()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ab$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 200
    iput p1, v0, Landroid/os/Message;->what:I

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ab$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 203
    iput p1, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/preview/ab$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Lcom/oplus/camera/gl/u;->d()V

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ab;->a:Z

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 693
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->e:Landroid/app/Activity;

    .line 694
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->f:Landroid/os/Handler;

    .line 695
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->g:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 696
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->h:Lcom/oplus/camera/gl/u;

    .line 697
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->o:Landroid/util/Size;

    .line 699
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ab$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 701
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ab;->j:Lcom/oplus/camera/ui/preview/ab$b;

    :cond_0
    return-void
.end method
