.class public Lcom/oplus/camera/timelapsepro/f;
.super Lcom/oplus/camera/screen/ScreenRelativeLayout;
.source "TimeLapseProGuideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/f$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/TextureView;

.field private final c:Landroid/view/TextureView;

.field private final d:Landroid/view/TextureView;

.field private final e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/oplus/camera/timelapsepro/f$a;

.field private final h:Landroidx/appcompat/widget/AppCompatImageView;

.field private i:Landroid/media/MediaPlayer;

.field private j:Landroid/media/MediaPlayer;

.field private k:Landroid/media/MediaPlayer;

.field private l:Lcom/oplus/camera/screen/b/a;

.field private m:I

.field private n:I

.field private o:Landroid/view/Surface;

.field private p:Landroid/view/Surface;

.field private q:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/timelapsepro/f$a;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->l:Lcom/oplus/camera/screen/b/a;

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->g:Lcom/oplus/camera/timelapsepro/f$a;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c016f

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0805cd

    .line 64
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/f;->setBackgroundResource(I)V

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/f;->setClickable(Z)V

    const p2, 0x7f0900d9

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->h:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/oplus/camera/timelapsepro/f$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/f$1;-><init>(Lcom/oplus/camera/timelapsepro/f;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0903b1

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->b:Landroid/view/TextureView;

    const p2, 0x7f0903b3

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->c:Landroid/view/TextureView;

    const p2, 0x7f0903b2

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->d:Landroid/view/TextureView;

    const p2, 0x7f090314

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    .line 84
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    new-instance v0, Lcom/oplus/camera/timelapsepro/f$2;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/timelapsepro/f$2;-><init>(Lcom/oplus/camera/timelapsepro/f;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/widget/MyNestedScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 99
    new-instance p1, Lcom/oplus/camera/timelapsepro/f$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/timelapsepro/f$3;-><init>(Lcom/oplus/camera/timelapsepro/f;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->f:Landroid/os/Handler;

    .line 106
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/f;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->i:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/f;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->o:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/f;)Lcom/oplus/camera/timelapsepro/f$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->g:Lcom/oplus/camera/timelapsepro/f$a;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/screen/b/a;)V
    .locals 10

    .line 275
    invoke-static {p0}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->h:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07099a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 278
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10e

    const v5, 0x7f0709a6

    const v6, 0x7f0709a8

    const/4 v7, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    if-eq v1, v7, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 297
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 298
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 299
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 296
    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/oplus/camera/ui/widget/MyNestedScrollView;->setPadding(IIII)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070bf0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 283
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f070bf2

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070bf3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 286
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 283
    invoke-virtual {v1, v3, v6, v8, v5}, Lcom/oplus/camera/ui/widget/MyNestedScrollView;->setPadding(IIII)V

    .line 288
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    if-ne v7, v1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p1

    const/16 v1, 0x5a

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    .line 338
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result p1

    invoke-virtual {p0, v3, v3, v3, p1}, Lcom/oplus/camera/timelapsepro/f;->setPadding(IIII)V

    .line 339
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 340
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 341
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/oplus/camera/timelapsepro/f;->setPadding(IIII)V

    .line 323
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, p0, Lcom/oplus/camera/timelapsepro/f;->m:I

    .line 324
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    iput p1, p0, Lcom/oplus/camera/timelapsepro/f;->n:I

    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    iget p1, p0, Lcom/oplus/camera/timelapsepro/f;->n:I

    iget v1, p0, Lcom/oplus/camera/timelapsepro/f;->m:I

    sub-int v2, p1, v1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v2, p1, v1

    neg-int v2, v2

    .line 327
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int v2, p1, v1

    .line 328
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v2, p1, v1

    .line 329
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 330
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 331
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 p1, 0x43870000    # 270.0f

    .line 332
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    goto :goto_1

    .line 307
    :cond_3
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/oplus/camera/timelapsepro/f;->setPadding(IIII)V

    .line 308
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, p0, Lcom/oplus/camera/timelapsepro/f;->m:I

    .line 309
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    iput p1, p0, Lcom/oplus/camera/timelapsepro/f;->n:I

    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    iget p1, p0, Lcom/oplus/camera/timelapsepro/f;->n:I

    iget v1, p0, Lcom/oplus/camera/timelapsepro/f;->m:I

    sub-int v2, p1, v1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v2, p1, v1

    neg-int v2, v2

    .line 312
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int v2, p1, v1

    .line 313
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v2, p1, v1

    .line 314
    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 315
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 p1, 0x42b40000    # 90.0f

    .line 317
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    .line 346
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->h:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->requestLayout()V

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/f;->requestLayout()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/f;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/f;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->j:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/f;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->p:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/f;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->i:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/f;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->k:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/f;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->q:Landroid/view/Surface;

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->b:Landroid/view/TextureView;

    new-instance v1, Lcom/oplus/camera/timelapsepro/f$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/f$4;-><init>(Lcom/oplus/camera/timelapsepro/f;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->c:Landroid/view/TextureView;

    new-instance v1, Lcom/oplus/camera/timelapsepro/f$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/f$5;-><init>(Lcom/oplus/camera/timelapsepro/f;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->d:Landroid/view/TextureView;

    new-instance v1, Lcom/oplus/camera/timelapsepro/f$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/f$6;-><init>(Lcom/oplus/camera/timelapsepro/f;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/f;)Landroid/view/Surface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->o:Landroid/view/Surface;

    return-object p0
.end method

.method private synthetic d()V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/widget/MyNestedScrollView;->scrollTo(II)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/f;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->j:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/timelapsepro/f;)Landroid/view/Surface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->p:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/timelapsepro/f;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->k:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/timelapsepro/f;)Landroid/view/Surface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->q:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic lambda$RyEy1EKPoKiDXSaqo7V7Eg1Zh3g(Lcom/oplus/camera/timelapsepro/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/f;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->f:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$f$RyEy1EKPoKiDXSaqo7V7Eg1Zh3g;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$f$RyEy1EKPoKiDXSaqo7V7Eg1Zh3g;-><init>(Lcom/oplus/camera/timelapsepro/f;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->e:Lcom/oplus/camera/ui/widget/MyNestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/widget/MyNestedScrollView;->scrollTo(II)V

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 266
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->o:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/f;->i:Landroid/media/MediaPlayer;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->p:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 252
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/f;->p:Landroid/view/Surface;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/f;->q:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 256
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/f;->q:Landroid/view/Surface;

    .line 259
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCurrentScreenMode(Lcom/oplus/camera/screen/b/a;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->l:Lcom/oplus/camera/screen/b/a;

    .line 271
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/f;->l:Lcom/oplus/camera/screen/b/a;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/f;->a(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method
