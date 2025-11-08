.class public Lcom/oplus/camera/professional/e;
.super Landroid/widget/LinearLayout;
.source "HSListProfessionalModeBar.java"

# interfaces
.implements Lcom/oplus/camera/professional/g$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/e$b;,
        Lcom/oplus/camera/professional/e$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/oplus/camera/professional/d;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/app/Activity;

.field private k:Lcom/oplus/camera/professional/e$b;

.field private l:Z

.field private m:Lcom/oplus/camera/professional/e$a;

.field private n:Lcom/oplus/camera/professional/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/oplus/camera/professional/e;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/oplus/camera/professional/e;->c:I

    const/4 v2, -0x1

    .line 53
    iput v2, p0, Lcom/oplus/camera/professional/e;->d:I

    .line 54
    iput v1, p0, Lcom/oplus/camera/professional/e;->e:I

    .line 55
    iput v1, p0, Lcom/oplus/camera/professional/e;->f:I

    .line 56
    iput v1, p0, Lcom/oplus/camera/professional/e;->g:I

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->h:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->i:Landroid/graphics/Rect;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->k:Lcom/oplus/camera/professional/e$b;

    .line 62
    iput-boolean v1, p0, Lcom/oplus/camera/professional/e;->l:Z

    .line 63
    sget-object v2, Lcom/oplus/camera/professional/e$a;->NO_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object v2, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/professional/e;->n:Lcom/oplus/camera/professional/q;

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    .line 78
    iput p2, p0, Lcom/oplus/camera/professional/e;->c:I

    const/16 p1, 0x11

    .line 79
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->setGravity(I)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->setOrientation(I)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->setClipChildren(Z)V

    return-void
.end method

.method private a(ILjava/lang/Boolean;)Landroid/view/View;
    .locals 2

    .line 437
    new-instance p1, Lcom/oplus/camera/professional/y;

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    iget v1, p0, Lcom/oplus/camera/professional/e;->c:I

    invoke-direct {p1, v0, v1}, Lcom/oplus/camera/professional/y;-><init>(Landroid/content/Context;I)V

    .line 438
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 440
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x11

    .line 441
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/y;->setGravity(I)V

    .line 442
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/y;->setClipChildren(Z)V

    .line 446
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 447
    new-instance p2, Lcom/oplus/camera/professional/f;

    iget-object p0, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/oplus/camera/professional/f;-><init>(Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 449
    :cond_0
    new-instance p2, Lcom/oplus/camera/professional/f;

    iget-object p0, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/oplus/camera/professional/f;-><init>(Landroid/app/Activity;Ljava/lang/Boolean;)V

    :goto_0
    const/16 p0, 0x66

    .line 451
    invoke-virtual {p2, p0}, Lcom/oplus/camera/professional/f;->setId(I)V

    .line 452
    invoke-virtual {p2, v0}, Lcom/oplus/camera/professional/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/y;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private a(IIZ)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    .line 87
    iget p2, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 91
    iget p2, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0, p3}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 9

    .line 508
    iget-object v0, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064b

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/oplus/camera/professional/e;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07064a

    .line 511
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 512
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
    move v5, v3

    .line 514
    :goto_1
    iget v6, p0, Lcom/oplus/camera/professional/e;->e:I

    if-ge v5, v6, :cond_8

    .line 515
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 516
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-nez v5, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    .line 518
    iget v7, p0, Lcom/oplus/camera/professional/e;->e:I

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_3

    .line 519
    :cond_2
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-nez v2, :cond_6

    .line 520
    iget v7, p0, Lcom/oplus/camera/professional/e;->e:I

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_6

    .line 521
    :cond_5
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 522
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 524
    :cond_6
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    if-nez v5, :cond_7

    .line 528
    iget-object v7, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/oplus/camera/professional/e;->a(ILjava/lang/Boolean;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v5, v8, p0}, Lcom/oplus/camera/professional/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    .line 531
    :cond_7
    iget-object v7, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/oplus/camera/professional/e;->a(ILjava/lang/Boolean;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v5, v8, p0}, Lcom/oplus/camera/professional/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 534
    :goto_3
    invoke-virtual {p0, v7, v6}, Lcom/oplus/camera/professional/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private b(II)Z
    .locals 4

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 355
    iget v0, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 356
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 359
    move-object v2, v0

    check-cast v2, Lcom/oplus/camera/professional/y;

    iget-boolean v3, v2, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v3, :cond_0

    return v1

    .line 363
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/e;->setPressed(Z)V

    .line 367
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 370
    invoke-virtual {v2, p2}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 372
    instance-of v2, p2, Lcom/oplus/camera/professional/f;

    if-eqz v2, :cond_2

    .line 373
    check-cast p2, Lcom/oplus/camera/professional/f;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/f;->a()V

    .line 377
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/e;->setModePressedState(I)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    iput p1, p0, Lcom/oplus/camera/professional/e;->d:I

    .line 383
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/professional/d;->getItemId(I)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;J)Z

    return v1

    :cond_4
    return p2
.end method

.method private setModePressedState(I)V
    .locals 3

    const-string v0, "HSListProfessionalModeBar"

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    const-string p0, "setModePressedState, invalid position"

    .line 304
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    iget v1, p0, Lcom/oplus/camera/professional/e;->e:I

    if-gtz v1, :cond_1

    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    return-void

    .line 317
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902d7

    .line 318
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    iget v2, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ne p1, v2, :cond_3

    .line 321
    sget-object p1, Lcom/oplus/camera/professional/e$a;->NO_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

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

    .line 345
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_4
    sget-object p1, Lcom/oplus/camera/professional/e$a;->WB_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    goto :goto_0

    .line 337
    :cond_5
    sget-object p1, Lcom/oplus/camera/professional/e$a;->AF_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    goto :goto_0

    .line 341
    :cond_6
    sget-object p1, Lcom/oplus/camera/professional/e$a;->EV_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    goto :goto_0

    .line 329
    :cond_7
    sget-object p1, Lcom/oplus/camera/professional/e$a;->SHUTTER_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    goto :goto_0

    .line 325
    :cond_8
    sget-object p1, Lcom/oplus/camera/professional/e$a;->ISO_PRESSED:Lcom/oplus/camera/professional/e$a;

    iput-object p1, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/professional/e;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/e;->i:Landroid/graphics/Rect;

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/professional/e;->i:Landroid/graphics/Rect;

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 407
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 408
    sget-boolean v3, Lcom/oplus/camera/professional/e;->a:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 409
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 410
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 411
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 416
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error frame is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSListProfessionalModeBar"

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

    .line 123
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

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

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

    .line 101
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->setItemPressed(Z)V

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/oplus/camera/professional/e;->d:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 585
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 1

    .line 544
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 547
    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 551
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    const/16 p3, 0x8

    invoke-virtual {p0, p1, p3, p2}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 475
    iput p1, p0, Lcom/oplus/camera/professional/e;->d:I

    .line 477
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 575
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 576
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v2, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v2, v1, p1, p2}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;J)Z
    .locals 2

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 430
    iget-object v1, p0, Lcom/oplus/camera/professional/e;->k:Lcom/oplus/camera/professional/e$b;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/oplus/camera/professional/e$b;->a(Landroid/view/View;Landroid/view/View;J)V

    :cond_0
    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object p1

    .line 595
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(IZ)V
    .locals 1

    .line 563
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 567
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdapter()Lcom/oplus/camera/professional/d;
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 471
    iget p0, p0, Lcom/oplus/camera/professional/e;->e:I

    return p0
.end method

.method public getModePressState()Lcom/oplus/camera/professional/e$a;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/oplus/camera/professional/e;->m:Lcom/oplus/camera/professional/e$a;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/oplus/camera/professional/e;->d:I

    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 422
    iget p0, p0, Lcom/oplus/camera/professional/e;->d:I

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

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSListProfessionalModeBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/oplus/camera/professional/e;->h:Landroid/view/View;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eq v3, v0, :cond_0

    if-ne v2, v0, :cond_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    iget-object v5, p0, Lcom/oplus/camera/professional/e;->h:Landroid/view/View;

    invoke-virtual {v1, v5, v4}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;Z)V

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/oplus/camera/professional/e;->h:Landroid/view/View;

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 157
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/camera/professional/e;->a(IIZ)V

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isClickable()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :cond_3
    :goto_0
    return v3

    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 162
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/camera/professional/e;->a(IIZ)V

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

    .line 259
    :cond_6
    iget-boolean p1, p0, Lcom/oplus/camera/professional/e;->l:Z

    if-eqz p1, :cond_7

    .line 260
    iput-boolean v4, p0, Lcom/oplus/camera/professional/e;->l:Z

    .line 263
    :cond_7
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    .line 265
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ne p1, v0, :cond_8

    goto/16 :goto_1

    :cond_8
    if-eq p1, v1, :cond_13

    .line 269
    iget v0, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    .line 271
    invoke-virtual {v0}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 272
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 275
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean v0, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v0, :cond_9

    return v3

    .line 279
    :cond_9
    invoke-virtual {p1, v4}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/camera/professional/k;

    if-nez v0, :cond_a

    .line 280
    invoke-virtual {p1, v4}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/oplus/camera/professional/f;

    if-eqz p1, :cond_13

    .line 281
    :cond_a
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 191
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 194
    iget v2, p0, Lcom/oplus/camera/professional/e;->f:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_c

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v2, :cond_13

    .line 195
    :cond_c
    iput-boolean v3, p0, Lcom/oplus/camera/professional/e;->l:Z

    .line 197
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    .line 199
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ne p1, v0, :cond_d

    goto/16 :goto_1

    :cond_d
    if-eq p1, v1, :cond_13

    .line 203
    iget v0, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    .line 205
    invoke-virtual {v0}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 206
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 209
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean p1, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez p1, :cond_e

    return v3

    .line 213
    :cond_e
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 222
    :cond_f
    iget-boolean v0, p0, Lcom/oplus/camera/professional/e;->l:Z

    if-eqz v0, :cond_12

    .line 223
    iput-boolean v4, p0, Lcom/oplus/camera/professional/e;->l:Z

    .line 225
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    .line 227
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    if-ne p1, v0, :cond_10

    goto :goto_1

    :cond_10
    if-eq p1, v1, :cond_13

    .line 231
    iget v0, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    .line 233
    invoke-virtual {v0}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 237
    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/professional/y;

    iget-boolean p1, p1, Lcom/oplus/camera/professional/y;->a:Z

    if-nez p1, :cond_11

    return v3

    .line 241
    :cond_11
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 248
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 251
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/professional/e;->b(II)Z

    move-result p1

    if-nez p1, :cond_13

    .line 252
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/e;->b(II)Z

    :cond_13
    :goto_1
    return v3

    .line 168
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/professional/e;->f:I

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/professional/e;->g:I

    .line 170
    iget p1, p0, Lcom/oplus/camera/professional/e;->f:I

    iget v0, p0, Lcom/oplus/camera/professional/e;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/e;->a(II)I

    move-result p1

    if-eq p1, v1, :cond_16

    .line 172
    iget v0, p0, Lcom/oplus/camera/professional/e;->e:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 173
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/professional/y;

    iget-boolean v0, v0, Lcom/oplus/camera/professional/y;->a:Z

    if-nez v0, :cond_15

    return v4

    .line 180
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {v0, p1, v3}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;Z)V

    .line 181
    iput-object p1, p0, Lcom/oplus/camera/professional/e;->h:Landroid/view/View;

    return v3

    :cond_16
    return v4
.end method

.method public removeAllViews()V
    .locals 4

    .line 494
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 498
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 500
    sget-boolean v3, Lcom/oplus/camera/professional/e;->a:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 501
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setAdapter(Lcom/oplus/camera/professional/d;)V
    .locals 1

    .line 459
    iput-object p1, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    .line 460
    iget-object p1, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/d;->a([I)V

    .line 461
    iget-object p1, p0, Lcom/oplus/camera/professional/e;->b:Lcom/oplus/camera/professional/d;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/d;->getCount()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/e;->e:I

    .line 462
    invoke-direct {p0}, Lcom/oplus/camera/professional/e;->b()V

    .line 463
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->requestLayout()V

    return-void

    :array_0
    .array-data 4
        0x64
        0x65
        0x66
    .end array-data
.end method

.method public setItemPressed(Z)V
    .locals 2

    .line 483
    iget v0, p0, Lcom/oplus/camera/professional/e;->d:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 484
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/oplus/camera/professional/e$b;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/oplus/camera/professional/e;->k:Lcom/oplus/camera/professional/e$b;

    return-void
.end method

.method public setPanelInterface(Lcom/oplus/camera/professional/q;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/oplus/camera/professional/e;->n:Lcom/oplus/camera/professional/q;

    return-void
.end method
