.class public Lcom/coui/appcompat/widget/navigation/a;
.super Landroid/widget/FrameLayout;
.source "COUINavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o$a;


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:[I


# instance fields
.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Landroid/widget/ImageView;

.field private j:Landroidx/appcompat/view/menu/j;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:I

.field private n:I

.field private o:Lcom/coui/appcompat/widget/COUIHintRedDot;

.field private p:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/navigation/a;->a:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/widget/navigation/a;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->c:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->d:F

    const p1, 0x3e99999a    # 0.3f

    .line 73
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->e:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 74
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->f:F

    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->h:I

    .line 95
    iput p2, p0, Lcom/coui/appcompat/widget/navigation/a;->n:I

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/navigation/a;)Lcom/coui/appcompat/widget/COUIHintRedDot;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 119
    sget v0, Lcoui/support/appcompat/R$layout;->coui_navigation_item_layout:I

    .line 120
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/a;->n:I

    if-eqz v1, :cond_0

    .line 121
    sget v0, Lcoui/support/appcompat/R$layout;->coui_navigation_item_default_layout:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    sget v1, Lcoui/support/appcompat/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    .line 125
    sget v1, Lcoui/support/appcompat/R$id;->normalLable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    .line 126
    sget v1, Lcoui/support/appcompat/R$id;->tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 417
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method private b()V
    .locals 10

    .line 387
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v9, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/coui/appcompat/widget/navigation/a$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/navigation/a$1;-><init>(Lcom/coui/appcompat/widget/navigation/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    if-gez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 314
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    return-void

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    if-nez p1, :cond_2

    .line 318
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/a;->b()V

    .line 320
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->p:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 322
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 323
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 325
    iget-object p2, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 326
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 327
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/j;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    return-object p0
.end method

.method public getItemPosition()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/coui/appcompat/widget/navigation/a;->h:I

    return p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/j;I)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setCheckable(Z)V

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setChecked(Z)V

    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setEnabled(Z)V

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setId(I)V

    .line 138
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/navigation/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/at;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->removeAllViews()V

    .line 112
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/a;->a()V

    .line 113
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 114
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    iget p0, p0, Lcom/coui/appcompat/widget/navigation/a;->m:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 207
    sget-object p0, Lcom/coui/appcompat/widget/navigation/a;->b:[I

    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/navigation/a;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 182
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    const/16 p0, 0x10

    .line 184
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 214
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 216
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/navigation/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 221
    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 222
    iget-object p3, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->o:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->layout(IIII)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->refreshDrawableState()V

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/h/s;->a(Landroid/content/Context;I)Landroidx/core/h/s;

    move-result-object p1

    .line 195
    invoke-static {p0, p1}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/s;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    invoke-static {p0, p1}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/s;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 235
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 238
    new-array v2, v0, [I

    const v3, 0x10100a0

    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    mul-int/2addr v4, v3

    aput v4, v2, v1

    .line 239
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 249
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->i:Landroid/widget/ImageView;

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->k:Landroid/content/res/ColorStateList;

    .line 265
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 295
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/h/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .locals 2

    .line 280
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->n:I

    .line 281
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/a;->removeAllViews()V

    .line 282
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/a;->a()V

    .line 283
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->j:Landroidx/appcompat/view/menu/j;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 284
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    iget-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    iget p0, p0, Lcom/coui/appcompat/widget/navigation/a;->m:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->h:I

    return-void
.end method

.method public setMaxTextWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/a;->l:Landroid/content/res/ColorStateList;

    .line 276
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 289
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/a;->m:I

    .line 290
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/a;->g:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
