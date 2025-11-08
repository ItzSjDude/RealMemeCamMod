.class public Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "COUIToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;,
        Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final D:[I

.field private E:Landroidx/appcompat/widget/Toolbar$c;

.field private final F:Landroidx/appcompat/widget/ActionMenuView$e;

.field private G:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

.field private H:Landroidx/appcompat/view/menu/n$a;

.field private I:Landroidx/appcompat/view/menu/h$a;

.field private J:Z

.field private K:I

.field private L:Z

.field private M:I

.field private N:[I

.field private O:F

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private final T:[I

.field private final U:Ljava/lang/Runnable;

.field private V:I

.field private W:F

.field a:Landroid/view/View;

.field private aa:F

.field b:Z

.field private c:Landroidx/appcompat/widget/ActionMenuView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Ljava/lang/CharSequence;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/content/Context;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private final u:Lcom/coui/appcompat/a/p;

.field private v:I

.field private w:Ljava/lang/CharSequence;

.field private x:Ljava/lang/CharSequence;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 247
    sget v0, Lcoui/support/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v0, Lcom/coui/appcompat/a/p;

    invoke-direct {v0}, Lcom/coui/appcompat/a/p;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    const v0, 0x800013

    .line 168
    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->v:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 182
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->D:[I

    .line 186
    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->F:Landroidx/appcompat/widget/ActionMenuView$e;

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    .line 216
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v2, 0x0

    .line 217
    iput v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->O:F

    .line 226
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->T:[I

    .line 229
    new-instance v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$2;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->U:Ljava/lang/Runnable;

    .line 416
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    .line 264
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setClipToPadding(Z)V

    .line 265
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setClipChildren(Z)V

    if-eqz p2, :cond_0

    .line 268
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->V:I

    .line 269
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->V:I

    if-nez v2, :cond_1

    .line 270
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->V:I

    goto :goto_0

    .line 273
    :cond_0
    iput v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->V:I

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIToolbar:[I

    invoke-static {v2, p2, v3, p3, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ar;

    move-result-object p2

    .line 282
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->g(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 283
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->a(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->M:I

    .line 286
    :cond_2
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->g(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->m:I

    .line 287
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportSubtitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->g(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->n:I

    .line 288
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_android_gravity:I

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->v:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->c(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->v:I

    .line 289
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportButtonGravity:I

    const/16 v2, 0x30

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->c(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    .line 290
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMargins:I

    .line 291
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    .line 293
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginStart:I

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    if-ltz p3, :cond_3

    .line 295
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    .line 298
    :cond_3
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginEnd:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    if-ltz p3, :cond_4

    .line 300
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    .line 303
    :cond_4
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginTop:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    if-ltz p3, :cond_5

    .line 305
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    .line 308
    :cond_5
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginBottom:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    if-ltz p3, :cond_6

    .line 311
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    .line 314
    :cond_6
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportMaxButtonHeight:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->e(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->p:I

    .line 316
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetStart:I

    const/high16 v2, -0x80000000

    .line 317
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result p3

    .line 319
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetEnd:I

    .line 320
    invoke-virtual {p2, v3, v2}, Landroidx/appcompat/widget/ar;->d(II)I

    move-result v3

    .line 322
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetLeft:I

    .line 323
    invoke-virtual {p2, v4, v1}, Landroidx/appcompat/widget/ar;->e(II)I

    move-result v4

    .line 324
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetRight:I

    .line 325
    invoke-virtual {p2, v5, v1}, Landroidx/appcompat/widget/ar;->e(II)I

    move-result v5

    .line 327
    iget-object v6, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {v6, v4, v5}, Lcom/coui/appcompat/a/p;->b(II)V

    if-ne p3, v2, :cond_7

    if-eq v3, v2, :cond_8

    .line 331
    :cond_7
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {v2, p3, v3}, Lcom/coui/appcompat/a/p;->a(II)V

    .line 334
    :cond_8
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportCollapseIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->h:Landroid/graphics/drawable/Drawable;

    .line 335
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportCollapseContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->i:Ljava/lang/CharSequence;

    .line 337
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 338
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 339
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    :cond_9
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportSubtitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 343
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 344
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 347
    :cond_a
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->k:Landroid/content/Context;

    .line 348
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportPopupTheme:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->g(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPopupTheme(I)V

    .line 350
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportNavigationIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 352
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_b
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportNavigationContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ar;->c(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 355
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 356
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    :cond_c
    sget p3, Lcoui/support/appcompat/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/ar;->e(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->K:I

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 363
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIToolbar_minTitleTextSize:I

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/ar;->g(I)Z

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_d

    .line 364
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIToolbar_minTitleTextSize:I

    iget v4, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/ar;->e(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->aa:F

    goto :goto_1

    .line 366
    :cond_d
    iget v2, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->aa:F

    :goto_1
    const/4 v2, 0x1

    .line 368
    new-array v3, v2, [I

    const v4, 0x1010095

    aput v4, v3, v1

    .line 369
    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->m:I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 371
    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr p3, v3

    float-to-int p3, p3

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->W:F

    .line 372
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    :cond_e
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->M:I

    if-ne p1, v2, :cond_f

    .line 378
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->W:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, p3, v0}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->W:F

    .line 379
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->aa:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, p3, v0}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->aa:F

    .line 381
    :cond_f
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcoui/support/appcompat/R$dimen;->toolbar_normal_menu_padding_left:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->P:I

    .line 382
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcoui/support/appcompat/R$dimen;->toolbar_normal_menu_padding_right:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->Q:I

    .line 383
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcoui/support/appcompat/R$dimen;->toolbar_center_title_padding_left:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->R:I

    .line 384
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcoui/support/appcompat/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->S:I

    .line 386
    sget p1, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ar;->g(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 387
    sget p1, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ar;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    .line 389
    :cond_10
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setWillNotDraw(Z)V

    .line 390
    invoke-virtual {p2}, Landroidx/appcompat/widget/ar;->b()V

    return-void
.end method

.method private a(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 2052
    iget p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->v:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_0
    return p1
.end method

.method private a(Landroid/view/View;I)I
    .locals 5

    .line 2013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2014
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 2015
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2016
    :goto_0
    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    .line 2026
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p2

    .line 2027
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v2

    .line 2028
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 2030
    div-int/lit8 v3, v3, 0x2

    .line 2031
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    if-ge v3, v4, :cond_1

    .line 2032
    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    goto :goto_1

    :cond_1
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    .line 2036
    iget p1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    if-ge p0, p1, :cond_2

    .line 2037
    iget p1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr p2, v3

    return p2

    .line 2021
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    .line 2018
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1243
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1244
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1245
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1246
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 1248
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 1249
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1255
    instance-of p6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz p6, :cond_0

    .line 1256
    move-object p6, v0

    check-cast p6, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    iget-boolean p6, p6, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->d:Z

    if-eqz p6, :cond_0

    iget-boolean p6, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    if-eqz p6, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    .line 1260
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result p3

    add-int/2addr p3, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1259
    invoke-static {p2, p3, p6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result p2

    goto :goto_0

    .line 1264
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1263
    invoke-static {p2, p6, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1273
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1272
    invoke-static {p4, p3, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result p0

    .line 1276
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_2

    return v5

    .line 1283
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 4

    .line 1988
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1989
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1990
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 1991
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 1992
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I)I

    move-result p0

    .line 1993
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, p2, p3

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1995
    iget p0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private a(Ljava/util/List;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1968
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 1969
    aget p2, p2, v1

    .line 1971
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, p2

    move v2, v0

    move p2, p0

    move v0, p2

    :goto_0
    if-ge p2, v1, :cond_0

    .line 1973
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1974
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1975
    iget v6, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->leftMargin:I

    sub-int/2addr v6, v2

    .line 1976
    iget v2, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->rightMargin:I

    sub-int/2addr v2, v3

    .line 1977
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1978
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    .line 1979
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v2, v2

    .line 1980
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1981
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroidx/appcompat/widget/Toolbar$c;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->E:Landroidx/appcompat/widget/Toolbar$c;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1145
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_1
    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    :goto_0
    const/4 v1, 0x1

    .line 1149
    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    .line 1150
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3

    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1219
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1218
    invoke-static {p2, v1, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1222
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1221
    invoke-static {p4, p3, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result p0

    .line 1225
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    .line 1228
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1230
    :cond_0
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1232
    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/h;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1616
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    .line 1618
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->Q:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->R:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->P:I

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_6

    .line 1620
    :cond_3
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->R:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->P:I

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->Q:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_6

    :cond_5
    if-eqz p2, :cond_9

    if-eqz v1, :cond_6

    .line 1624
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result p1

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->Q:I

    :goto_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p2

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v0

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->R:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->P:I

    :goto_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 1626
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result p1

    goto :goto_4

    :cond_a
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->R:I

    goto :goto_4

    :cond_b
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->P:I

    :goto_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result p2

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v0

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->Q:I

    :goto_5
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    :goto_6
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Z)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2064
    invoke-static {p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2065
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v3

    .line 2067
    invoke-static {p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result v4

    .line 2066
    invoke-static {p2, v4}, Landroidx/core/h/c;->a(II)I

    move-result p2

    .line 2069
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 2073
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2074
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2075
    iget v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    .line 2076
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2077
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 2082
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2083
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2084
    iget v4, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    .line 2085
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 2086
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private a([I)V
    .locals 8

    .line 1635
    invoke-static {p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1636
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1637
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {v4}, Lcom/coui/appcompat/a/p;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p1, v1

    .line 1638
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {v5}, Lcom/coui/appcompat/a/p;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v2

    .line 1639
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 1644
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 1645
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v3

    add-int/2addr p0, v1

    move v4, v1

    goto :goto_2

    .line 1647
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    move v6, v1

    move v5, v2

    .line 1648
    :goto_1
    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 1649
    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move p0, v6

    :goto_2
    if-eqz v0, :cond_4

    .line 1654
    aget v0, p1, v1

    add-int/2addr v0, p0

    aput v0, p1, v1

    .line 1655
    aget p0, p1, v2

    sub-int/2addr p0, v4

    aput p0, p1, v2

    goto :goto_3

    .line 1657
    :cond_4
    aget v0, p1, v1

    add-int/2addr v0, v4

    aput v0, p1, v1

    .line 1658
    aget v0, p1, v2

    sub-int/2addr v0, p0

    aput v0, p1, v2

    :cond_5
    :goto_3
    return-void
.end method

.method private b(I)I
    .locals 3

    .line 2093
    invoke-static {p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result p0

    .line 2094
    invoke-static {p1, p0}, Landroidx/core/h/c;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return p1
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 5

    .line 2001
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2002
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 2003
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 2004
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2005
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I)I

    move-result p0

    .line 2006
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    .line 2007
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 2008
    iget p0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private b()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f()V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2107
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/view/View;)I
    .locals 0

    .line 2111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2112
    invoke-static {p0}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    .line 2113
    invoke-static {p0}, Landroidx/core/h/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroid/widget/ImageButton;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 945
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d()V

    .line 946
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 949
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->G:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

    if-nez v1, :cond_0

    .line 950
    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->G:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 953
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->G:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->k:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 0

    .line 2117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2118
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 958
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 961
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 963
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->l:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 964
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->F:Landroidx/appcompat/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    .line 965
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->H:Landroidx/appcompat/view/menu/n$a;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->I:Landroidx/appcompat/view/menu/h$a;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/n$a;Landroidx/appcompat/view/menu/h$a;)V

    .line 966
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v0

    .line 969
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 970
    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 972
    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->width:I

    :goto_0
    const v1, 0x800005

    .line 975
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    .line 976
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .line 1110
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcoui/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    .line 1113
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v0

    const v1, 0x800003

    .line 1114
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    .line 1115
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    sget v0, Lcoui/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 2173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2174
    iget v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eq p1, v0, :cond_1

    .line 2175
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 1121
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcoui/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    .line 1124
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1125
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1126
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v0

    const v1, 0x800003

    .line 1127
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    const/4 v1, 0x2

    .line 1128
    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    .line 1129
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$3;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 5

    .line 1290
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1294
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1295
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1296
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .line 2207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2209
    invoke-static {p0}, Landroidx/core/h/v;->m(Landroid/view/View;)I

    move-result p0

    return p0

    .line 2212
    :cond_0
    iget p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->K:I

    return p0
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    .line 2162
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2164
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2165
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2166
    iget v4, v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    .line 2167
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;
    .locals 1

    .line 2141
    new-instance p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(II)V

    return-object p0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;
    .locals 1

    .line 2123
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;
    .locals 0

    .line 2128
    instance-of p0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz p0, :cond_0

    .line 2129
    new-instance p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    check-cast p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;)V

    return-object p0

    .line 2130
    :cond_0
    instance-of p0, p1, Landroidx/appcompat/app/a$a;

    if-eqz p0, :cond_1

    .line 2131
    new-instance p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    check-cast p1, Landroidx/appcompat/app/a$a;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Landroidx/appcompat/app/a$a;)V

    return-object p0

    .line 2132
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 2133
    new-instance p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 2135
    :cond_2
    new-instance p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public a(Landroid/view/View;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 445
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 448
    :goto_0
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    .line 449
    new-instance v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    invoke-direct {v2, p2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;)V

    .line 450
    iput-boolean v1, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->d:Z

    .line 451
    iput v0, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    .line 452
    invoke-virtual {p0, p1, v0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 2146
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collapseActionView()V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->G:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$a;->b:Landroidx/appcompat/view/menu/j;

    :goto_0
    if-eqz p0, :cond_1

    .line 595
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->i()V

    :cond_0
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$b;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object p0

    return-object p0
.end method

.method public getContentInsetEnd()I
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0}, Lcom/coui/appcompat/a/p;->d()I

    move-result p0

    return p0
.end method

.method public getContentInsetLeft()I
    .locals 0

    .line 1087
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0}, Lcom/coui/appcompat/a/p;->a()I

    move-result p0

    return p0
.end method

.method public getContentInsetRight()I
    .locals 0

    .line 1106
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0}, Lcom/coui/appcompat/a/p;->b()I

    move-result p0

    return p0
.end method

.method public getContentInsetStart()I
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0}, Lcom/coui/appcompat/a/p;->c()I

    move-result p0

    return p0
.end method

.method public getIsTitleCenterStyle()Z
    .locals 0

    .line 2450
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 917
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c()V

    .line 918
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c()V

    .line 941
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 462
    iget p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->l:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->x:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->w:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public inflateMenu(I)V
    .locals 0

    .line 2151
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 2152
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    instance-of p1, p0, Lcom/coui/appcompat/widget/toolbar/a;

    if-eqz p1, :cond_0

    .line 2153
    check-cast p0, Lcom/coui/appcompat/widget/toolbar/a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/a;->j()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1160
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    .line 1161
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1195
    invoke-static {p1}, Landroidx/core/h/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1197
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->B:Z

    .line 1200
    :cond_0
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->B:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1201
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 1203
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->B:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1208
    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->B:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1665
    invoke-static/range {p0 .. p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1666
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v4

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v5

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v6

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v7

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v8

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 1675
    iget-object v11, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->D:[I

    .line 1676
    aput v3, v11, v2

    aput v3, v11, v3

    .line 1679
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMinimumHeightCompat()I

    move-result v12

    .line 1681
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v1, :cond_1

    .line 1683
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_2

    .line 1686
    :cond_1
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_1

    :cond_2
    move v13, v6

    :goto_1
    move v14, v10

    .line 1691
    :goto_2
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v1, :cond_3

    .line 1693
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_3

    .line 1696
    :cond_3
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    .line 1701
    :cond_4
    :goto_3
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v1, :cond_5

    .line 1703
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_4

    .line 1706
    :cond_5
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    .line 1711
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v3

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v10, v14

    sub-int/2addr v15, v10

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v11, v2

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v13

    sub-int v13, v4, v13

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1716
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v1, :cond_7

    .line 1718
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-direct {v0, v14, v13, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1721
    :cond_7
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-direct {v0, v14, v10, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    .line 1726
    :cond_8
    :goto_5
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v1, :cond_9

    .line 1728
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v13, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_6

    .line 1731
    :cond_9
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v10, v11, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    .line 1736
    :cond_a
    :goto_6
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v14

    .line 1737
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_b

    .line 1740
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1741
    iget v3, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    move/from16 p3, v7

    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    add-int/2addr v3, v2

    const/4 v2, 0x0

    add-int/2addr v3, v2

    goto :goto_7

    :cond_b
    move/from16 p3, v7

    const/4 v3, 0x0

    :goto_7
    if-eqz v15, :cond_c

    .line 1744
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1745
    iget v7, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    move/from16 p4, v6

    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v7, v6

    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    add-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_8

    :cond_c
    move/from16 p4, v6

    :goto_8
    if-nez v14, :cond_e

    if-eqz v15, :cond_d

    goto :goto_9

    :cond_d
    move/from16 p5, v4

    move/from16 v17, v10

    move/from16 v16, v12

    goto/16 :goto_13

    :cond_e
    :goto_9
    if-eqz v14, :cond_f

    .line 1750
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    goto :goto_a

    :cond_f
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    :goto_a
    if-eqz v15, :cond_10

    .line 1751
    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    goto :goto_b

    :cond_10
    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    .line 1752
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1753
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz v14, :cond_11

    .line 1754
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_12

    :cond_11
    if-eqz v15, :cond_13

    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 1755
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_13

    :cond_12
    move/from16 p5, v4

    const/4 v7, 0x1

    goto :goto_c

    :cond_13
    move/from16 p5, v4

    const/4 v7, 0x0

    .line 1757
    :goto_c
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->v:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v16, v12

    const/16 v12, 0x30

    if-eq v4, v12, :cond_17

    const/16 v12, 0x50

    if-eq v4, v12, :cond_16

    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v3

    .line 1764
    div-int/lit8 v4, v4, 0x2

    .line 1765
    iget v12, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    move/from16 v17, v10

    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    add-int/2addr v12, v10

    if-ge v4, v12, :cond_14

    .line 1766
    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    add-int v4, v2, v3

    goto :goto_d

    :cond_14
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    .line 1770
    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_15

    .line 1771
    iget v2, v6, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_15
    :goto_d
    add-int/2addr v8, v4

    goto :goto_e

    :cond_16
    move/from16 v17, v10

    sub-int/2addr v5, v9

    .line 1778
    iget v2, v6, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_e

    :cond_17
    move/from16 v17, v10

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    add-int v8, v3, v2

    .line 1784
    :goto_e
    iget-boolean v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v2, :cond_20

    if-eqz v14, :cond_18

    .line 1785
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    if-eqz v15, :cond_19

    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :goto_10
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1787
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    aget v5, v3, v7

    aget v3, v3, v4

    sub-int/2addr v5, v3

    if-eqz v14, :cond_1c

    .line 1789
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1790
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v6, v4

    .line 1793
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    if-ge v2, v1, :cond_1b

    if-lt v4, v5, :cond_1a

    .line 1798
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v10, 0x1

    .line 1799
    aget v4, v4, v10

    move v6, v7

    move v7, v4

    goto :goto_11

    :cond_1a
    const/4 v6, 0x0

    sub-int v7, v5, v4

    .line 1801
    div-int/lit8 v7, v7, 0x2

    .line 1802
    iget-object v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    aget v10, v10, v6

    add-int v6, v10, v7

    add-int v7, v6, v4

    .line 1807
    :cond_1b
    :goto_11
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v8, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1808
    iget v3, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    add-int v8, v9, v3

    :cond_1c
    if-eqz v15, :cond_1f

    .line 1811
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1812
    iget v3, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    add-int/2addr v8, v3

    .line 1813
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v6, v4, v3

    .line 1816
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v8

    if-ge v2, v1, :cond_1e

    if-lt v3, v5, :cond_1d

    .line 1821
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    .line 1822
    aget v6, v1, v3

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    sub-int/2addr v5, v3

    .line 1824
    div-int/lit8 v5, v5, 0x2

    .line 1825
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    aget v1, v1, v2

    add-int v4, v1, v5

    add-int v6, v4, v3

    .line 1830
    :cond_1e
    :goto_12
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1f
    :goto_13
    move/from16 v10, v17

    goto/16 :goto_1a

    :cond_20
    if-eqz v1, :cond_24

    if-eqz v7, :cond_21

    .line 1835
    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    const/4 v1, 0x1

    goto :goto_14

    :cond_21
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_14
    aget v2, v11, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 1836
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v13, v4

    neg-int v3, v3

    .line 1837
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v14, :cond_22

    .line 1842
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1843
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v13, v2

    .line 1844
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1845
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v13, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1846
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    sub-int/2addr v2, v4

    .line 1847
    iget v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_15

    :cond_22
    move v2, v13

    :goto_15
    if-eqz v15, :cond_23

    .line 1850
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1851
    iget v3, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    add-int/2addr v8, v3

    .line 1852
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v13, v3

    .line 1853
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1854
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v13, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1855
    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    sub-int v3, v13, v3

    .line 1856
    iget v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    goto :goto_16

    :cond_23
    move v3, v13

    :goto_16
    if-eqz v7, :cond_1f

    .line 1859
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v13, v1

    goto :goto_13

    :cond_24
    if-eqz v7, :cond_25

    .line 1862
    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    const/4 v1, 0x0

    goto :goto_17

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_17
    aget v2, v11, v1

    sub-int/2addr v3, v2

    .line 1863
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v10, v17, v2

    neg-int v2, v3

    .line 1864
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v1

    if-eqz v14, :cond_26

    .line 1869
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1870
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v10

    .line 1871
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1872
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1873
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    add-int/2addr v2, v4

    .line 1874
    iget v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_18

    :cond_26
    move v2, v10

    :goto_18
    if-eqz v15, :cond_27

    .line 1877
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1878
    iget v3, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->topMargin:I

    add-int/2addr v8, v3

    .line 1879
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v10

    .line 1880
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1881
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1882
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    add-int/2addr v3, v4

    .line 1883
    iget v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    goto :goto_19

    :cond_27
    move v3, v10

    :goto_19
    if-eqz v7, :cond_28

    .line 1886
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1895
    :cond_28
    :goto_1a
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Ljava/util/List;I)V

    .line 1896
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1900
    iget-boolean v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2a

    .line 1902
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1903
    instance-of v4, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz v4, :cond_29

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    iget-boolean v3, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->d:Z

    if-eqz v3, :cond_29

    .line 1904
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v4

    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->T:[I

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v10, v3

    move/from16 v4, v16

    goto :goto_1c

    .line 1908
    :cond_29
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v4, v16

    invoke-direct {v0, v3, v10, v11, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v10, v3

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v4

    goto :goto_1b

    :cond_2a
    move/from16 v4, v16

    goto :goto_1e

    :cond_2b
    move/from16 v4, v16

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2c

    .line 1914
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1920
    :cond_2c
    :goto_1e
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Ljava/util/List;I)V

    .line 1921
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1924
    iget-boolean v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b:Z

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2e

    .line 1926
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1927
    instance-of v5, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    if-eqz v5, :cond_2d

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    iget-boolean v3, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->d:Z

    if-eqz v3, :cond_2d

    .line 1928
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v5

    sub-int v5, p5, v5

    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->T:[I

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_20

    :cond_2d
    const/4 v7, 0x0

    .line 1932
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    :goto_20
    move v13, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v7, 0x0

    goto :goto_22

    :cond_2f
    const/4 v7, 0x0

    move v2, v7

    :goto_21
    if-ge v2, v1, :cond_30

    .line 1938
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1946
    :cond_30
    :goto_22
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Ljava/util/List;I)V

    .line 1947
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v11}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Ljava/util/List;[I)I

    move-result v1

    sub-int v2, p5, p4

    sub-int v2, v2, p3

    .line 1948
    div-int/lit8 v2, v2, 0x2

    add-int v6, p4, v2

    .line 1949
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v6, v2

    add-int/2addr v1, v2

    if-ge v2, v10, :cond_31

    goto :goto_23

    :cond_31
    if-le v1, v13, :cond_32

    sub-int/2addr v1, v13

    sub-int v10, v2, v1

    goto :goto_23

    :cond_32
    move v10, v2

    .line 1958
    :goto_23
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_24
    if-ge v7, v1, :cond_33

    .line 1960
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v10, v11, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 1964
    :cond_33
    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 1307
    invoke-static/range {p0 .. p0}, Landroidx/core/h/v;->g(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    .line 1308
    :goto_0
    iget-boolean v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v0, :cond_c

    .line 1313
    iget-object v14, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->D:[I

    .line 1316
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ax;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v10

    move v0, v11

    .line 1329
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v1

    .line 1330
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v16, v2, 0x0

    sub-int/2addr v1, v11

    .line 1331
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v0

    .line 1334
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 1338
    invoke-direct {v7, v0, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroidx/appcompat/view/menu/h;Z)V

    .line 1340
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->p:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIIII)V

    .line 1342
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1343
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 1344
    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1343
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1345
    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 1346
    invoke-static {v2}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v2

    .line 1345
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v6, v2

    goto :goto_2

    :cond_2
    move v0, v11

    move v6, v0

    move v12, v6

    .line 1349
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v1

    .line 1350
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v16, v16, v2

    sub-int/2addr v1, v0

    .line 1351
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v15

    .line 1353
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    .line 1356
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    .line 1357
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1356
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1358
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    .line 1359
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1358
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    :cond_3
    move v15, v6

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v6

    move v5, v12

    move v12, v11

    :goto_3
    if-ge v12, v6, :cond_6

    .line 1366
    invoke-virtual {v7, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1367
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1368
    iget v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    if-nez v0, :cond_5

    invoke-direct {v7, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, p2

    move v10, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v14

    .line 1373
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    .line 1375
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v18

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1377
    invoke-static {v1}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v1

    .line 1376
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v5, v0

    move v15, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v5

    move/from16 v17, v6

    move v5, v10

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v17

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move v10, v5

    .line 1382
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    add-int v12, v0, v1

    .line 1383
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    .line 1385
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x2

    if-eqz v0, :cond_7

    .line 1388
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1393
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->O:F

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1395
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v12

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    .line 1398
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1399
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1400
    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    .line 1401
    invoke-static {v2}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v2

    .line 1400
    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move v6, v1

    move v5, v15

    move v15, v0

    goto :goto_6

    :cond_7
    move v11, v6

    move v5, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 1403
    :goto_6
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1406
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1409
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v11, v6, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v13, v5

    move v5, v11

    move v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1419
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 1420
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1419
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v13, v5

    goto :goto_7

    :cond_8
    move v13, v5

    move v11, v6

    :goto_7
    add-int v16, v16, v15

    .line 1424
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v16, v1

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v13

    .line 1431
    invoke-static {v1, v8, v2}, Landroidx/core/h/v;->a(III)I

    move-result v1

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v13, 0x10

    .line 1434
    invoke-static {v0, v9, v2}, Landroidx/core/h/v;->a(III)I

    move-result v0

    .line 1438
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    invoke-virtual {v7, v1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setMeasuredDimension(II)V

    .line 1441
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a([I)V

    .line 1442
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int v8, v2, v0

    .line 1443
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/high16 v10, -0x80000000

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    aget v4, v2, v1

    aget v1, v2, v3

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a

    .line 1444
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move v5, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    .line 1448
    :cond_a
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->N:[I

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_b

    .line 1449
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 1450
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v6, v14

    .line 1449
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    :cond_b
    return-void

    :cond_c
    move v2, v10

    .line 1462
    iget-object v10, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->D:[I

    .line 1465
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ax;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v11, v2

    const/4 v13, 0x0

    goto :goto_8

    :cond_d
    move v13, v2

    const/4 v11, 0x0

    .line 1476
    :goto_8
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1477
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->p:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIIII)V

    .line 1479
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1480
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    .line 1481
    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 1480
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1482
    iget-object v3, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    .line 1483
    invoke-static {v3}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v3

    .line 1482
    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v14, v1

    move v15, v3

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1486
    :goto_9
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1487
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->p:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIIII)V

    .line 1489
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    .line 1490
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    .line 1492
    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1491
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1493
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    .line 1494
    invoke-static {v1}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v1

    .line 1493
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1497
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v1

    .line 1498
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v16, v3, v2

    sub-int/2addr v1, v0

    .line 1499
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    .line 1502
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1505
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 1506
    invoke-direct {v7, v0, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroidx/appcompat/view/menu/h;Z)V

    .line 1508
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->p:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIIII)V

    .line 1510
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int v11, v0, v1

    .line 1511
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 1512
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1511
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1513
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 1514
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1513
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    .line 1517
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v0

    .line 1518
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v12, v16, v1

    sub-int/2addr v0, v11

    const/4 v1, 0x0

    .line 1519
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v13

    .line 1521
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1522
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    .line 1524
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    .line 1525
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1524
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1526
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a:Landroid/view/View;

    .line 1527
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1526
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1529
    :cond_11
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1530
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    .line 1532
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    .line 1533
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1532
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1534
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    .line 1535
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1534
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1537
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v11

    move v13, v12

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_15

    .line 1539
    invoke-virtual {v7, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1540
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 1541
    iget v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->c:I

    if-nez v0, :cond_14

    invoke-direct {v7, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v10

    .line 1546
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    .line 1548
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1550
    invoke-static {v1}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v1

    .line 1549
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v15, v1

    :cond_14
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1554
    :cond_15
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->s:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    add-int v11, v0, v1

    .line 1555
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->r:I

    add-int v12, v0, v1

    .line 1556
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_16

    .line 1559
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1564
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->O:F

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1566
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v16, v5

    move v5, v11

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    .line 1569
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1570
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1571
    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    .line 1572
    invoke-static {v2}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v2

    .line 1571
    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move/from16 v17, v1

    move v6, v15

    move v15, v0

    goto :goto_d

    :cond_16
    move v9, v6

    const/16 v16, 0x0

    move v6, v15

    move/from16 v15, v16

    move/from16 v17, v15

    .line 1575
    :goto_d
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1578
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1581
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v17, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1585
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 1586
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 1587
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 1588
    invoke-static {v0}, Landroidx/core/h/v;->h(Landroid/view/View;)I

    move-result v0

    .line 1587
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_e

    :cond_17
    move v9, v6

    :goto_e
    move/from16 v0, v17

    add-int/2addr v13, v15

    .line 1592
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1600
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    .line 1599
    invoke-static {v1, v8, v2}, Landroidx/core/h/v;->a(III)I

    move-result v1

    .line 1603
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 1602
    invoke-static {v0, v3, v2}, Landroidx/core/h/v;->a(III)I

    move-result v11

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v11, v16

    :cond_18
    invoke-virtual {v7, v1, v11}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 474
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    .line 476
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 477
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/a/p;->a(Z)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1171
    invoke-static {p1}, Landroidx/core/h/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1173
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->A:Z

    .line 1176
    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->A:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1177
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1179
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->A:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1184
    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->A:Z

    :cond_3
    return v3
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 2185
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->J:Z

    .line 2186
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 0

    .line 1068
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/a/p;->b(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->u:Lcom/coui/appcompat/a/p;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/a/p;->a(II)V

    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 1

    .line 2432
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d()V

    .line 2433
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    .line 2434
    iget-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    .line 2435
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2436
    iput v0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->width:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 2438
    iput v0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->width:I

    .line 2440
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2441
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b()V

    .line 515
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e(Landroid/view/View;)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 522
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 523
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->b()V

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->g:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 563
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/n$a;Landroidx/appcompat/view/menu/h$a;)V
    .locals 0

    .line 2194
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->H:Landroidx/appcompat/view/menu/n$a;

    .line 2195
    iput-object p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->I:Landroidx/appcompat/view/menu/h$a;

    return-void
.end method

.method public setMinTitleTextSize(F)V
    .locals 2

    .line 2465
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->W:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 2468
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->aa:F

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 2201
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->K:I

    .line 2203
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setMinimumHeight(I)V

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e()V

    .line 836
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    .line 837
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 854
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e()V

    .line 872
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;)V

    .line 874
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e(Landroid/view/View;)V

    goto :goto_0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 879
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    .line 880
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e()V

    .line 905
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->E:Landroidx/appcompat/widget/Toolbar$c;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 928
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c()V

    .line 929
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 404
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->l:I

    if-eq v0, p1, :cond_1

    .line 405
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->l:I

    if-nez p1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->k:Landroid/content/Context;

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->k:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 2491
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v0, p0, Lcom/coui/appcompat/widget/toolbar/a;

    if-eqz v0, :cond_0

    .line 2492
    check-cast p0, Lcom/coui/appcompat/widget/toolbar/a;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/a;->setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 705
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    .line 706
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 707
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 708
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->n:I

    if-eqz v1, :cond_0

    .line 709
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 711
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->z:I

    if-eqz v0, :cond_1

    .line 712
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;)V

    .line 717
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e(Landroid/view/View;)V

    goto :goto_0

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 722
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 724
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :cond_5
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->x:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 770
    iput p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->n:I

    .line 771
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 772
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 794
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->z:I

    .line 795
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 631
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 632
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    .line 634
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;

    move-result-object v1

    .line 635
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->t:I

    iput v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->bottomMargin:I

    const v2, 0x800005

    .line 636
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->o:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$b;->a:I

    .line 637
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 640
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 641
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->m:I

    if-eqz v1, :cond_0

    .line 642
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 644
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->y:I

    if-eqz v0, :cond_1

    .line 645
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->M:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 651
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 652
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result v0

    .line 653
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->a(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->e(Landroid/view/View;)V

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 664
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 666
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 668
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->O:F

    .line 671
    :cond_6
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->w:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 2478
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->q:I

    .line 2479
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 740
    iput p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->m:I

    .line 741
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 745
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->M:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 746
    iget-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    .line 747
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result p1

    .line 748
    iget-object p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->W:F

    .line 757
    iget-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->O:F

    :cond_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 782
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->y:I

    .line 783
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitleTextViewTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2497
    iget-object p0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .line 2484
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v1, v0, Lcom/coui/appcompat/widget/toolbar/a;

    if-eqz v1, :cond_0

    .line 2485
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->e()Z

    move-result p0

    return p0

    .line 2487
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result p0

    return p0
.end method
