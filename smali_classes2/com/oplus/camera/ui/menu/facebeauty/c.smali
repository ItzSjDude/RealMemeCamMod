.class public Lcom/oplus/camera/ui/menu/facebeauty/c;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FaceBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/facebeauty/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/ui/menu/facebeauty/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/animation/PathInterpolator;

.field private final b:Landroid/view/animation/PathInterpolator;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Landroidx/recyclerview/widget/RecyclerView$i;

.field private o:F

.field private p:I

.field private q:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->a:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->b:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x3

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->d:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->f:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->i:I

    .line 56
    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->j:F

    .line 57
    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->k:F

    .line 58
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->l:Z

    .line 59
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->m:Z

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 61
    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->o:F

    .line 62
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->p:I

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeautyAdapter, init FaceBeautyAdapter, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceBeautyAdapter"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->d:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070484

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->i:I

    const v0, 0x7f070487

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f070491

    .line 73
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->j:F

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->h:Landroid/graphics/Paint;

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->h:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->i:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->k:F

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/c;)Lcom/oplus/camera/ui/menu/facebeauty/f$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->f:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    return-object p0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 393
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->p:I

    if-ne v3, v0, :cond_3

    .line 394
    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result p0

    if-eq p0, v1, :cond_2

    .line 395
    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    :goto_1
    if-nez p2, :cond_6

    if-nez p0, :cond_6

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x4

    if-ne v1, v0, :cond_6

    .line 398
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->f:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f$a;->d()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    xor-int/lit8 v2, p2, 0x1

    goto :goto_3

    .line 407
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result p0

    if-ne p0, v1, :cond_6

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    const p0, 0x7f0803e6

    goto :goto_4

    :cond_7
    const p0, 0x7f0803e4

    .line 410
    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectIndex, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    return p0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/menu/facebeauty/c$a;
    .locals 4

    .line 220
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x7f0c00d3

    goto :goto_1

    :cond_1
    const v3, 0x7f0c00d2

    :goto_1
    if-eq p2, v2, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    const p2, 0x7f0c00c9

    goto :goto_2

    :cond_3
    const p2, 0x7f0c00c8

    :goto_2
    move v3, p2

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    const p2, 0x7f0c00cc

    goto :goto_2

    :cond_5
    const p2, 0x7f0c00cb

    goto :goto_2

    :cond_6
    const v3, 0x7f0c00d1

    goto :goto_3

    :cond_7
    const v3, 0x7f0c00d0

    .line 250
    :goto_3
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 251
    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/c$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/c;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->p:I

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/facebeauty/c$a;)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/facebeauty/c$a;I)V
    .locals 8

    .line 276
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->c(I)Lcom/oplus/camera/ui/menu/facebeauty/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->getItemViewType(I)I

    move-result v1

    const v2, 0x7f09021e

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_9

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    const/4 p2, 0x4

    if-eq v1, p2, :cond_1

    move-object v1, v3

    move p2, v5

    goto/16 :goto_5

    :cond_1
    const p2, 0x7f0903f2

    .line 306
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 307
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 308
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    .line 309
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->m:Z

    if-eqz p2, :cond_2

    .line 311
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    if-lez v6, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_6

    .line 316
    iget-object p2, p1, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->itemView:Landroid/view/View;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const p2, 0x7f0903f3

    .line 288
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    const p2, 0x7f0901fe

    .line 289
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f09021d

    .line 290
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    .line 291
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->l:Z

    if-eqz p2, :cond_5

    .line 293
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    if-lez v6, :cond_5

    .line 294
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v2, :cond_4

    const v6, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    .line 295
    :goto_0
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 298
    :cond_5
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_6

    .line 299
    iget-object p2, p1, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->itemView:Landroid/view/View;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_1
    move p2, v2

    goto/16 :goto_5

    :cond_7
    const v1, 0x7f09023e

    .line 336
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 337
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    if-ne p2, v1, :cond_8

    move p2, v4

    goto :goto_2

    :cond_8
    move p2, v5

    :goto_2
    const v1, 0x7f09021f

    .line 338
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09023d

    .line 339
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    .line 341
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    if-lez v6, :cond_e

    .line 342
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_9
    const v1, 0x7f09016b

    .line 348
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 349
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    if-ne p2, v2, :cond_a

    move p2, v4

    goto :goto_3

    :cond_a
    move p2, v5

    :goto_3
    const v2, 0x7f09016a

    .line 350
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;

    if-eqz v2, :cond_b

    .line 353
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->d()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->setCornerMark(I)V

    .line 355
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    if-lez v6, :cond_b

    .line 356
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->setImageResource(I)V

    :cond_b
    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_5

    :cond_c
    const v1, 0x7f0903f1

    .line 323
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 324
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    if-ne p2, v1, :cond_d

    move p2, v4

    goto :goto_4

    :cond_d
    move p2, v5

    .line 325
    :goto_4
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901fc

    .line 326
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    .line 328
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    if-lez v6, :cond_e

    .line 329
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->b()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    :goto_5
    const v2, 0x7f090169

    .line 366
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;

    if-eqz v2, :cond_f

    .line 369
    invoke-virtual {v2, p2, v5}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a(ZZ)V

    .line 372
    :cond_f
    iget-object p1, p1, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_10

    .line 374
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->a()I

    move-result p1

    if-lez p1, :cond_10

    .line 375
    invoke-static {v4}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 376
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v1, :cond_12

    if-eqz v3, :cond_11

    .line 381
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v4, v5

    :goto_6
    invoke-direct {p0, v1, v4}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Landroid/view/View;Z)V

    :cond_12
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/facebeauty/f$a;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->f:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    .line 171
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/b;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->j:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 174
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->i:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->k:F

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 152
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->m:Z

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 155
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 8

    .line 102
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->l:Z

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const v2, 0x7f0901fe

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 117
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    .line 118
    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    aput v7, v4, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    move v5, v6

    :cond_3
    aput v5, v4, v1

    const-string v1, "alpha"

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xfa

    .line 121
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 127
    new-array p2, v3, [F

    fill-array-data p2, :array_0

    const-string v3, "rotation"

    invoke-static {v2, v3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v2, 0x1f4

    .line 128
    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 132
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 135
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/c$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/c;Landroid/view/View;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyItemChanged(I)V

    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public b(I)V
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectPositionChange, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newSelectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 198
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    .line 199
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 204
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 p0, 0x1

    .line 208
    invoke-virtual {v1, p0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_3
    if-lez p1, :cond_5

    .line 210
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyItemChanged(I)V

    goto :goto_1

    .line 213
    :cond_4
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->c:I

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method public c(I)Lcom/oplus/camera/ui/menu/facebeauty/b;
    .locals 1

    if-ltz p1, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/facebeauty/b;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/facebeauty/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->c()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/oplus/camera/ui/menu/facebeauty/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/c$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/ui/menu/facebeauty/c$a;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 90
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/oplus/camera/ui/menu/facebeauty/c$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/c$a;)V

    return-void
.end method
