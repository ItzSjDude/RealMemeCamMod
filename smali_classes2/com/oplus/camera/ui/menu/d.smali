.class public Lcom/oplus/camera/ui/menu/d;
.super Lcom/oplus/camera/ui/menu/BasicOptionItemList;
.source "OptionItemIconTextList.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/d$a;
    }
.end annotation


# instance fields
.field private B:Lcom/oplus/camera/ui/RotateImageView;

.field private C:Lcom/oplus/camera/ui/r;

.field private D:Lcom/oplus/camera/ui/CameraUIListener;

.field private E:Lcom/oplus/camera/ui/menu/j;

.field private F:Ljava/lang/String;

.field private G:Landroid/view/animation/PathInterpolator;

.field private H:Landroid/view/animation/PathInterpolator;

.field private I:I

.field private J:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 5

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->F:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->G:Landroid/view/animation/PathInterpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->H:Landroid/view/animation/PathInterpolator;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b2a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/d;->I:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b29

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/d;->J:I

    .line 62
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->setClipChildren(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 162
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/d;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private b(Z)Z
    .locals 5

    .line 294
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 295
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bP()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 297
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bP()I

    move-result p0

    if-ne v3, p0, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 299
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bP()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    .line 301
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bP()I

    move-result p0

    if-ne v3, p0, :cond_1

    :cond_3
    if-eqz p1, :cond_5

    goto :goto_0

    .line 305
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bP()I

    move-result p0

    if-ne v1, p0, :cond_1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method private j()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/oplus/camera/ui/r;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/r;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    new-instance v1, Lcom/oplus/camera/ui/menu/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/d$a;-><init>(Lcom/oplus/camera/ui/menu/d;Lcom/oplus/camera/ui/menu/d$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/r;->a(Lcom/oplus/camera/ui/r$a;)V

    .line 217
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/r;->setDuration(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 273
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(I)V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 276
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    const v2, 0x7f08022d

    if-eqz v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    invoke-static {p1, v2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    invoke-static {p1, v2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    const v0, 0x7f08022e

    invoke-static {p1, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/d;->j()V

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 345
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Landroid/view/View;II)V

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->v:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getItemsMeasureHeight()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/d;->a(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 73
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 75
    iget p1, p0, Lcom/oplus/camera/ui/menu/d;->b:I

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->i()V

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->v:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(ZZI)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/d;->b(Z)Z

    move-result p1

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/d;->b(ZZI)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gez p2, :cond_0

    move p2, v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 243
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/d;->s:Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    .line 248
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public b()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b()V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/d;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->i()V

    return-void
.end method

.method public b(ZZI)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    int-to-long v1, p3

    .line 317
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZJ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected c()V
    .locals 10

    .line 167
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->w:Landroid/view/animation/AnimationSet;

    .line 169
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x12c

    .line 170
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 171
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/d;->G:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x96

    .line 172
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 173
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/d;->w:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 174
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/oplus/camera/ui/menu/d;->I:I

    int-to-float v8, v8

    invoke-direct {v0, v3, v3, v8, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 176
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v8}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v8

    const/4 v9, 0x1

    if-ne v9, v8, :cond_0

    .line 177
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/oplus/camera/ui/menu/d;->J:I

    int-to-float v8, v8

    invoke-direct {v0, v8, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 180
    :cond_0
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 181
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/d;->H:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 183
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/d;->w:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->z:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->z:Landroid/view/animation/Animation$AnimationListener;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->w:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/d;->z:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->y:Landroid/view/animation/AnimationSet;

    .line 192
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->G:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->y:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oplus/camera/ui/menu/d;->I:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 198
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne v9, v1, :cond_2

    .line 199
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oplus/camera/ui/menu/d;->J:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 202
    :cond_2
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 203
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->H:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->y:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->A:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/d;->A:Landroid/view/animation/Animation$AnimationListener;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->y:Landroid/view/animation/AnimationSet;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->A:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->clearAnimation()V

    const/16 v0, 0x8

    .line 258
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/d;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getItemsMeasureHeight()I
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 382
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result v0

    if-le v1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result p0

    move v1, p0

    :cond_4
    :goto_1
    return v1
.end method

.method public getItemsMeasureWidth()I
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getMeasuredWidth()I

    move-result p0

    add-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public h()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/d;->removeView(Landroid/view/View;)V

    .line 478
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    .line 481
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/d;->C:Lcom/oplus/camera/ui/r;

    .line 482
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h()V

    return-void
.end method

.method public i()V
    .locals 10

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    .line 89
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->b()I

    move-result v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getChildCount()I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070755

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 95
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07075f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x4

    .line 99
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070a05

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070a06

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 105
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v6

    .line 109
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v5

    move v6, v4

    .line 113
    :goto_0
    new-instance v7, Lcom/oplus/camera/ui/menu/j;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/oplus/camera/ui/menu/j;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V

    iput-object v7, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 114
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/2addr v6, v1

    sub-int/2addr v0, v6

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/oplus/camera/ui/menu/d;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/d;->p:I

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setGravity(I)V

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    invoke-virtual {v0, v7}, Lcom/oplus/camera/ui/menu/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070756

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 119
    invoke-virtual {v0, v5, v1}, Lcom/oplus/camera/ui/menu/j;->setTextSize(IF)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setMaxLines(I)V

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    const v2, 0x7f06048e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setItemText(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    if-eq v6, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/d;->addView(Landroid/view/View;)V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    new-instance v1, Lcom/oplus/camera/ui/menu/d$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/d$1;-><init>(Lcom/oplus/camera/ui/menu/d;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/j;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 404
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    .line 406
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070557

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move p2, v0

    move p3, p2

    .line 411
    :goto_0
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v1

    if-gt p2, p4, :cond_6

    .line 412
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p4, :cond_0

    .line 415
    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result p5

    .line 416
    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v2

    add-int/2addr v2, p3

    .line 417
    invoke-virtual {p4, v0, p3, p5, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    add-int/2addr p5, p1

    add-int/2addr p3, p5

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 421
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d;->D:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    if-eqz p1, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a06

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 424
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070a07

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 425
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f070a08

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    .line 427
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 428
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/j;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 429
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/j;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p5

    .line 427
    invoke-virtual {p2, p3, p5, v0, v2}, Lcom/oplus/camera/ui/menu/j;->layout(IIII)V

    .line 431
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_6

    .line 432
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p3, :cond_2

    .line 435
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v0

    .line 436
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v1

    sub-int v2, p4, v0

    add-int/2addr v1, p5

    .line 437
    invoke-virtual {p3, v2, p5, p4, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    add-int/2addr v0, p1

    sub-int/2addr p4, v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 441
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    if-eqz p1, :cond_6

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 449
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070424

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v0

    .line 453
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070755

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 454
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/j;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p5, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 455
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/j;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/d;->E:Lcom/oplus/camera/ui/menu/j;

    .line 456
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/j;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    .line 454
    invoke-virtual {p3, v0, v2, v3, v4}, Lcom/oplus/camera/ui/menu/j;->layout(IIII)V

    .line 458
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_3
    if-ltz p3, :cond_6

    .line 459
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_5

    .line 462
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result v1

    .line 463
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result v2

    sub-int v3, p5, v2

    .line 465
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    sub-int v4, p4, v1

    add-int/2addr v2, v3

    .line 467
    invoke-virtual {v0, v4, v3, p4, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    add-int/2addr v1, p2

    sub-int/2addr p4, v1

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 392
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->onMeasure(II)V

    .line 394
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->q:Landroid/content/Context;

    const v0, 0x7f08022d

    invoke-static {p1, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 535
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/d;->n:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/d;->a(I)V

    :goto_0
    return-void
.end method

.method public setOptionItemIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/d;->B:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setSelectItemIndex(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 323
    iget v0, p0, Lcom/oplus/camera/ui/menu/d;->k:I

    if-eq p1, v0, :cond_2

    .line 324
    iput p1, p0, Lcom/oplus/camera/ui/menu/d;->k:I

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    move v0, p1

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/d;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    .line 331
    iget v2, p0, Lcom/oplus/camera/ui/menu/d;->k:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/d;->F:Ljava/lang/String;

    return-void
.end method
