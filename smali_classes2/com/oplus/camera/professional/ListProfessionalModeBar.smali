.class public Lcom/oplus/camera/professional/ListProfessionalModeBar;
.super Landroid/widget/LinearLayout;
.source "ListProfessionalModeBar.java"

# interfaces
.implements Lcom/oplus/camera/professional/p$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;,
        Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/oplus/camera/professional/ListModeBarAdapter;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/app/Activity;

.field private k:Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;

.field private l:Lcom/oplus/camera/ui/CameraUIInterface;

.field private m:Z

.field private n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

.field private o:Lcom/oplus/camera/professional/q;

.field private p:I

.field private q:Lcom/oplus/camera/screen/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c:I

    const/4 v2, -0x1

    .line 55
    iput v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    .line 56
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    .line 57
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    .line 58
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->i:Landroid/graphics/Rect;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->k:Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 65
    iput-boolean v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    .line 66
    sget-object v2, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->o:Lcom/oplus/camera/professional/q;

    .line 68
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    .line 83
    iput p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c:I

    const/16 p1, 0x11

    .line 84
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setGravity(I)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOrientation(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setClipChildren(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 3

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c:I

    const/4 v2, -0x1

    .line 55
    iput v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    .line 56
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    .line 57
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    .line 58
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->i:Landroid/graphics/Rect;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->k:Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 65
    iput-boolean v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    .line 66
    sget-object v2, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->o:Lcom/oplus/camera/professional/q;

    .line 68
    iput v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    .line 93
    iput p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c:I

    const/16 p1, 0x11

    .line 94
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setGravity(I)V

    .line 95
    invoke-virtual {p0, p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOrientation(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setClipChildren(Z)V

    return-void
.end method

.method private a(IIZ)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    .line 106
    iget p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 110
    iget p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p0, p3}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method private b(II)Z
    .locals 4

    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 374
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 375
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 378
    move-object v2, v0

    check-cast v2, Lcom/oplus/camera/professional/y;

    iget-boolean v3, v2, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v3, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setPressed(Z)V

    .line 386
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 389
    invoke-virtual {v2, p2}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 391
    instance-of v2, p2, Lcom/oplus/camera/professional/l;

    if-eqz v2, :cond_2

    .line 392
    check-cast p2, Lcom/oplus/camera/professional/l;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/l;->a()V

    .line 396
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setModePressedState(I)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 399
    iput p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    .line 402
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getItemId(I)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;J)Z

    return v1

    :cond_4
    return p2
.end method

.method private c(I)Landroid/view/View;
    .locals 4

    .line 455
    new-instance p1, Lcom/oplus/camera/professional/y;

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    iget v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c:I

    invoke-direct {p1, v0, v1}, Lcom/oplus/camera/professional/y;-><init>(Landroid/content/Context;I)V

    .line 458
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 459
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 461
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 463
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 465
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    const/16 v1, 0x11

    .line 468
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/y;->setGravity(I)V

    .line 469
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 470
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/y;->setClipChildren(Z)V

    .line 472
    new-instance v1, Lcom/oplus/camera/professional/l;

    iget-object v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    invoke-direct {v1, v2, p0}, Lcom/oplus/camera/professional/l;-><init>(Landroid/app/Activity;Lcom/oplus/camera/screen/b/a;)V

    const/16 p0, 0x66

    .line 473
    invoke-virtual {v1, p0}, Lcom/oplus/camera/professional/l;->setId(I)V

    .line 474
    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/y;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private c()V
    .locals 9

    .line 566
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070710

    .line 567
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07070f

    .line 569
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    .line 573
    iget v6, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    if-ne v4, v6, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 576
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v7

    :cond_1
    move-object v6, v5

    move v5, v3

    .line 579
    :goto_1
    iget v7, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-ge v5, v7, :cond_9

    .line 581
    iget v7, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    if-eq v4, v7, :cond_8

    .line 582
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 583
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 585
    iget v7, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_4

    .line 586
    :cond_3
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-nez v2, :cond_7

    .line 587
    iget v7, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_7

    .line 588
    :cond_6
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 589
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 591
    :cond_7
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 595
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-direct {p0, v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v5, v8, p0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 597
    invoke-virtual {p0, v7, v6}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private setModePressedState(I)V
    .locals 3

    const-string v0, "ListProfessionalModeBar"

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    const-string p0, "setModePressedState, invalid position"

    .line 323
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    iget v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-gtz v1, :cond_1

    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    return-void

    .line 336
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902d7

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    iget v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ne p1, v2, :cond_3

    .line 340
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-eq v1, p1, :cond_8

    const/4 p1, 0x2

    if-eq v1, p1, :cond_7

    const/4 p1, 0x3

    if-eq v1, p1, :cond_6

    const/4 p1, 0x4

    if-eq v1, p1, :cond_5

    const/4 p1, 0x5

    if-eq v1, p1, :cond_4

    const-string p0, "setModePressedState, default invalid position"

    .line 364
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_4
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->WB_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    goto :goto_0

    .line 356
    :cond_5
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->AF_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    goto :goto_0

    .line 360
    :cond_6
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->EV_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    goto :goto_0

    .line 348
    :cond_7
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->SHUTTER_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    goto :goto_0

    .line 344
    :cond_8
    sget-object p1, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->ISO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->i:Landroid/graphics/Rect;

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->i:Landroid/graphics/Rect;

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 426
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 427
    sget-boolean v3, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 428
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 429
    invoke-static {v2, p1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 434
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error frame is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ListProfessionalModeBar"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public a(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0902d7

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public a(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 1

    .line 607
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 614
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/16 p3, 0x8

    invoke-virtual {p0, p1, p3, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 533
    iput p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    .line 535
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;)V
    .locals 1

    .line 510
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setScreenMode(Lcom/oplus/camera/screen/b/a;)V

    .line 512
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 515
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOrientation(I)V

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->removeAllViews()V

    .line 519
    invoke-direct {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c()V

    .line 520
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->requestLayout()V

    .line 521
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b()V

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 639
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v2, v1, p1, p2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;J)Z
    .locals 2

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 448
    iget-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->k:Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;->a(Landroid/view/View;Landroid/view/View;J)V

    :cond_0
    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object p1

    .line 662
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .locals 4

    .line 483
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :goto_0
    move v0, v2

    .line 489
    :goto_1
    iget v3, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-ge v0, v3, :cond_2

    .line 490
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/professional/y;

    .line 491
    invoke-virtual {v3, v2}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/professional/l;

    .line 492
    invoke-virtual {v3, v1}, Lcom/oplus/camera/professional/l;->setLightBackground(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 626
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 630
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/a;)V
    .locals 2

    .line 695
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 696
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setAlpha(F)V

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 702
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Lcom/oplus/camera/screen/b/a;)V

    const/4 p1, 0x1

    .line 704
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    if-ne p1, v0, :cond_1

    .line 705
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 529
    iget p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    return p0
.end method

.method public getModePressState()Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->n:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 2

    .line 129
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 440
    iget p0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListProfessionalModeBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eq v3, v0, :cond_0

    if-ne v2, v0, :cond_1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    iget-object v5, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    invoke-virtual {v1, v5, v4}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;Z)V

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 176
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(IIZ)V

    .line 177
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isClickable()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :cond_3
    :goto_0
    return v3

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 181
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(IIZ)V

    return v3

    :cond_5
    const/4 v1, -0x1

    if-eqz v0, :cond_14

    if-eq v0, v3, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    if-eq v0, v2, :cond_6

    const/4 p0, 0x5

    if-eq v0, p0, :cond_13

    const/4 p0, 0x6

    goto/16 :goto_1

    .line 278
    :cond_6
    iget-boolean p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    if-eqz p1, :cond_7

    .line 279
    iput-boolean v4, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    .line 282
    :cond_7
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    .line 284
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ne p1, v0, :cond_8

    goto/16 :goto_1

    :cond_8
    if-eq p1, v1, :cond_13

    .line 288
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    .line 290
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 291
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 294
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean v0, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v0, :cond_9

    return v3

    .line 298
    :cond_9
    invoke-virtual {p1, v4}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/camera/professional/k;

    if-nez v0, :cond_a

    .line 299
    invoke-virtual {p1, v4}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/oplus/camera/professional/l;

    if-eqz p1, :cond_13

    .line 300
    :cond_a
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 210
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 213
    iget v2, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_c

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v2, :cond_13

    .line 214
    :cond_c
    iput-boolean v3, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    .line 216
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    .line 218
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ne p1, v0, :cond_d

    goto/16 :goto_1

    :cond_d
    if-eq p1, v1, :cond_13

    .line 222
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    .line 224
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 225
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 228
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean p1, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez p1, :cond_e

    return v3

    .line 232
    :cond_e
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 241
    :cond_f
    iget-boolean v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    if-eqz v0, :cond_12

    .line 242
    iput-boolean v4, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->m:Z

    .line 244
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    .line 246
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    if-ne p1, v0, :cond_10

    goto :goto_1

    :cond_10
    if-eq p1, v1, :cond_13

    .line 250
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    .line 252
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 253
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 256
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean p1, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez p1, :cond_11

    return v3

    .line 260
    :cond_11
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 267
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(II)Z

    move-result p1

    if-nez p1, :cond_13

    .line 271
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(II)Z

    :cond_13
    :goto_1
    return v3

    .line 187
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    .line 189
    iget p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(II)I

    move-result p1

    if-eq p1, v1, :cond_16

    .line 191
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 192
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 195
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/professional/y;

    iget-boolean v0, v0, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v0, :cond_15

    return v4

    .line 199
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {v0, p1, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;Z)V

    .line 200
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->h:Landroid/view/View;

    return v3

    :cond_16
    return v4
.end method

.method public removeAllViews()V
    .locals 4

    .line 552
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 556
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 558
    sget-boolean v3, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 559
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setAdapter(Lcom/oplus/camera/professional/ListModeBarAdapter;)V
    .locals 1

    .line 497
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    .line 498
    iget-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a([I)V

    .line 499
    iget-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b:Lcom/oplus/camera/professional/ListModeBarAdapter;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListModeBarAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->e:I

    .line 500
    invoke-direct {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->c()V

    .line 501
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->requestLayout()V

    return-void

    :array_0
    .array-data 4
        0x64
        0x65
        0x66
    .end array-data
.end method

.method public setCameraUIInterface(Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method

.method public setItemPressed(Z)V
    .locals 2

    .line 541
    iget v0, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->d:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 542
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->k:Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;

    return-void
.end method

.method public setPanelInterface(Lcom/oplus/camera/professional/q;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->o:Lcom/oplus/camera/professional/q;

    return-void
.end method

.method public setScreenMode(Lcom/oplus/camera/screen/b/a;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->q:Lcom/oplus/camera/screen/b/a;

    .line 506
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/ListProfessionalModeBar;->p:I

    return-void
.end method

.method public setVisibilityWithAnimation(I)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    .line 648
    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method
