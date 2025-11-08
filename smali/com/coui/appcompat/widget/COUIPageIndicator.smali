.class public Lcom/coui/appcompat/widget/COUIPageIndicator;
.super Landroid/widget/FrameLayout;
.source "COUIPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIPageIndicator$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/animation/ValueAnimator;

.field private C:Landroid/os/Handler;

.field private D:I

.field private E:Lcom/coui/appcompat/widget/COUIPageIndicator$a;

.field private F:I

.field private G:Landroid/content/Context;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/widget/LinearLayout;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 141
    sget v0, Lcoui/support/appcompat/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->m:F

    .line 89
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->n:F

    .line 90
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->o:F

    .line 91
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->q:Z

    .line 100
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    .line 104
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->s:Z

    .line 108
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->t:Z

    .line 112
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    .line 116
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->v:Z

    .line 117
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->w:Z

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    .line 158
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->F:I

    goto :goto_0

    .line 161
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->F:I

    .line 163
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->G:Landroid/content/Context;

    .line 164
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->y:Ljava/util/List;

    const/4 v2, 0x1

    .line 166
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->h:Z

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    .line 168
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 169
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->f:I

    .line 170
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->c:I

    .line 171
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    .line 172
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    .line 173
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotCornerRadius:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    div-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->e:I

    .line 174
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotClickable:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->g:Z

    .line 176
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotStrokeWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->d:I

    .line 177
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 181
    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 184
    new-array p2, v3, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    .line 185
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xf0

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 186
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_2

    .line 187
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {p3, v5, v1, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/widget/COUIPageIndicator$1;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$1;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/widget/COUIPageIndicator$2;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$2;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->z:Landroid/graphics/Paint;

    .line 241
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->z:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->z:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->f:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    mul-int/2addr p3, v3

    add-int/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    .line 244
    new-instance p2, Lcom/coui/appcompat/widget/COUIPageIndicator$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$3;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    .line 254
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    .line 255
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 256
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->addView(Landroid/view/View;)V

    .line 259
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->c(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->m:F

    return p1
.end method

.method private a(ZI)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_page_indicator_dot_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 305
    sget v1, Lcoui/support/appcompat/R$id;->page_indicator_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 306
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_0

    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot_stroke:I

    goto :goto_0

    :cond_0
    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_2

    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot_stroke:I

    goto :goto_1

    :cond_2
    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 314
    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 315
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    invoke-direct {p0, p1, v1, p2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(ZLandroid/view/View;I)V

    return-object v0
.end method

.method private a(ZLandroid/view/View;I)V
    .locals 0

    .line 293
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 295
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->d:I

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 299
    :goto_0
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->e:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->t:Z

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->m:F

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->n:F

    return p1
.end method

.method private b()V
    .locals 2

    .line 352
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->i:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 355
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->D:I

    .line 356
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->requestLayout()V

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->o:F

    return p0
.end method

.method private c()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a()V

    .line 364
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 262
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->f(I)V

    .line 263
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->o:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 264
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 265
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->n:F

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    return-void
.end method

.method private d(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 324
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->t:Z

    return p1
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    return p0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 330
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->h:Z

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->c:I

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(ZI)Landroid/view/View;

    move-result-object v1

    .line 332
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->g:Z

    if-eqz v2, :cond_0

    .line 333
    new-instance v2, Lcom/coui/appcompat/widget/COUIPageIndicator$4;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator$4;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->y:Ljava/util/List;

    sget v3, Lcoui/support/appcompat/R$id;->page_indicator_dot:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    return-object p0
.end method

.method private f(I)V
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->D:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    .line 531
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->o:F

    goto :goto_0

    .line 533
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    .line 534
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->p:F

    int-to-float v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->o:F

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/COUIPageIndicator;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    return p0
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->v:Z

    return p0
.end method

.method static synthetic i(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->q:Z

    return p0
.end method

.method static synthetic j(Lcom/coui/appcompat/widget/COUIPageIndicator;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->c()V

    return-void
.end method

.method static synthetic k(Lcom/coui/appcompat/widget/COUIPageIndicator;)Lcom/coui/appcompat/widget/COUIPageIndicator$a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->E:Lcom/coui/appcompat/widget/COUIPageIndicator$a;

    return-object p0
.end method

.method static synthetic l(Lcom/coui/appcompat/widget/COUIPageIndicator;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->t:Z

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->w:Z

    .line 550
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 551
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz v1, :cond_0

    .line 552
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    if-gt v1, p1, :cond_2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->q:Z

    .line 556
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->f(I)V

    .line 561
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    const/16 v1, 0x11

    if-eq v0, p1, :cond_4

    .line 562
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a()V

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    :cond_5
    :goto_1
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    return-void
.end method

.method public a(IFI)V
    .locals 3

    .line 455
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 463
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    if-gt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    if-eqz p3, :cond_2

    .line 466
    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->D:I

    int-to-float p3, p3

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    mul-int v2, p1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 467
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 469
    :cond_2
    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    mul-int v1, p1, v0

    add-int/2addr p3, v1

    int-to-float p3, p3

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    .line 470
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 473
    :goto_1
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    if-eqz p3, :cond_4

    .line 474
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->s:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz p3, :cond_3

    .line 475
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 477
    :cond_3
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 478
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 482
    :cond_4
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz p3, :cond_5

    .line 483
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 485
    :cond_5
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 486
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    :cond_6
    if-eqz p3, :cond_7

    .line 492
    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->D:I

    int-to-float p3, p3

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 493
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 495
    :cond_7
    iget p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    int-to-float p3, p3

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->l:I

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 496
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 498
    :goto_2
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    if-eqz p3, :cond_9

    .line 499
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->s:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz p3, :cond_8

    .line 500
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 502
    :cond_8
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 503
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 507
    :cond_9
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz p3, :cond_a

    .line 508
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 510
    :cond_a
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 511
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 516
    :cond_b
    :goto_3
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->m:F

    .line 517
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->n:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_c

    .line 519
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    .line 521
    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->d()V

    .line 583
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    if-eqz p1, :cond_4

    .line 584
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->r:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->e()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_4

    .line 588
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->u:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->w:Z

    if-nez p1, :cond_4

    .line 589
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 590
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a()V

    .line 593
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->C:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 595
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->w:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->A:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 389
    iget p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->D:I

    iget p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->j:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->k:I

    .line 412
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->c(I)V

    return-void
.end method

.method public setDotCornerRadius(I)V
    .locals 0

    .line 646
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->e:I

    return-void
.end method

.method public setDotSize(I)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->a:I

    return-void
.end method

.method public setDotSpacing(I)V
    .locals 0

    .line 637
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->b:I

    return-void
.end method

.method public setDotStrokeWidth(I)V
    .locals 0

    .line 664
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->d:I

    return-void
.end method

.method public setDotsCount(I)V
    .locals 1

    .line 397
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->i:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->d(I)V

    .line 398
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->i:I

    .line 399
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->b()V

    .line 400
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->e(I)V

    return-void
.end method

.method public setIsClickable(Z)V
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->g:Z

    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/widget/COUIPageIndicator$a;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->E:Lcom/coui/appcompat/widget/COUIPageIndicator$a;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .locals 3

    .line 429
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->c:I

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 432
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->h:Z

    invoke-direct {p0, v2, v1, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(ZLandroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTraceDotColor(I)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->f:I

    .line 421
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->z:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
