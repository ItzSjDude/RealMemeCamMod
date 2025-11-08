.class public Lcom/coui/appcompat/widget/l;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "COUIPanelConstraintLayout.java"


# instance fields
.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Landroidx/constraintlayout/widget/c;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:I

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/l;->h:Z

    .line 87
    invoke-direct {p0}, Lcom/coui/appcompat/widget/l;->c()V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    if-eqz p2, :cond_0

    .line 210
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2, v2, p2}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2, v2, p2}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    .line 220
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcoui/support/appcompat/R$dimen;->TD07:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/Button;->setTextSize(IF)V

    const-string p2, "sans-serif-medium"

    .line 225
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 227
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_1

    .line 229
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 231
    :cond_1
    iget p0, p0, Lcom/coui/appcompat/widget/l;->y:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    const/16 p0, 0x11

    .line 233
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setGravity(I)V

    const/4 p0, 0x4

    .line 234
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextAlignment(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 91
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 93
    invoke-direct {p0}, Lcom/coui/appcompat/widget/l;->d()V

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->coui_bottom_sheet_bottom_btn_text_color:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->z:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v1, v2, v0}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/l;->y:I

    :goto_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_drag_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 105
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_drag_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 106
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/l;->j:I

    .line 108
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 109
    iget v3, p0, Lcom/coui/appcompat/widget/l;->j:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 112
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 114
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 116
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/l;->addView(Landroid/view/View;)V

    .line 119
    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroidx/constraintlayout/widget/c;->b(II)V

    .line 120
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/l;->a(IZ)V

    return-void
.end method

.method private e()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 165
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 166
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/l;->h:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_panel_divider_background_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/l;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/c;->b(II)V

    .line 171
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3, v1, v3}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1, v3}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getId()I

    move-result p0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/coui/appcompat/widget/l;->s:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lcom/coui/appcompat/widget/l;->v:Landroid/view/View$OnClickListener;

    .line 287
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->p:Landroid/widget/Button;

    iget-object p2, p0, Lcom/coui/appcompat/widget/l;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_alert_dialog_button_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_bottom_bar_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerButDividerVerMargin(I)V

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_bottom_button_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerButVerPadding(I)V

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_bottom_bar_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerPaddingBottom(I)V

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerButPaddingOffset(I)V

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->p:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    const v2, 0x102001b

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->q:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/l;->r:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->p:Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->q:Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->w:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->r:Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->x:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/l;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getId()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/c;->b(II)V

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v2, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getId()I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 147
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/l;->a(IZ)V

    .line 148
    invoke-direct {p0}, Lcom/coui/appcompat/widget/l;->e()V

    .line 149
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Z

    const/4 v1, 0x0

    .line 154
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    .line 155
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 180
    iput-object p1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    .line 181
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/l;->addView(Landroid/view/View;)V

    .line 185
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/c;->b(II)V

    .line 186
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 187
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 188
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 189
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 190
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v4, v1, v3}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v4, v1, v3}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, v4, v2, v4}, Landroidx/constraintlayout/widget/c;->a(IIII)V

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->k:Landroidx/constraintlayout/widget/c;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 198
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Z

    const/4 v0, 0x0

    .line 200
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    .line 201
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->m:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 291
    iput-object p1, p0, Lcom/coui/appcompat/widget/l;->t:Ljava/lang/String;

    .line 292
    iput-object p2, p0, Lcom/coui/appcompat/widget/l;->w:Landroid/view/View$OnClickListener;

    .line 293
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->q:Landroid/widget/Button;

    iget-object p2, p0, Lcom/coui/appcompat/widget/l;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->w:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 297
    iput-object p1, p0, Lcom/coui/appcompat/widget/l;->u:Ljava/lang/String;

    .line 298
    iput-object p2, p0, Lcom/coui/appcompat/widget/l;->x:Landroid/view/View$OnClickListener;

    .line 299
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->r:Landroid/widget/Button;

    iget-object p2, p0, Lcom/coui/appcompat/widget/l;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->x:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/l;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->o:Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    return-object p0
.end method

.method public getDragView()Landroid/widget/ImageView;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLayoutAtMaxHeight()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/l;->g:Z

    return p0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method public setDividerVisibility(Z)V
    .locals 2

    .line 311
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/l;->h:Z

    .line 312
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 314
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcoui/support/appcompat/R$color;->coui_panel_divider_background_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 316
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 246
    iput-object p1, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDragViewDrawableTintColor(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/l;->j:I

    if-eq v1, p1, :cond_0

    .line 258
    iput p1, p0, Lcom/coui/appcompat/widget/l;->j:I

    .line 259
    iget p1, p0, Lcom/coui/appcompat/widget/l;->j:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 260
    iget-object p1, p0, Lcom/coui/appcompat/widget/l;->l:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/widget/l;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLayoutAtMaxHeight(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/l;->g:Z

    return-void
.end method
