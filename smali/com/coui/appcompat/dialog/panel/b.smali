.class public Lcom/coui/appcompat/dialog/panel/b;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "COUIBottomSheetDialog.java"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/view/View;

.field private G:Lcom/a/a/f;

.field private H:Lcom/a/a/f;

.field private I:Landroid/view/View;

.field private J:Landroid/view/ViewGroup;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private O:Z

.field private P:Landroid/view/inputmethod/InputMethodManager;

.field private Q:Landroid/animation/AnimatorSet;

.field private R:F

.field private S:F

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Landroid/view/View$OnApplyWindowInsetsListener;

.field private X:Lcom/coui/appcompat/dialog/panel/g;

.field private Y:Lcom/coui/appcompat/dialog/panel/d;

.field private Z:Landroid/view/WindowInsets;

.field private aa:Landroid/view/WindowInsets;

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:Landroid/os/Handler;

.field private final af:I

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/coui/appcompat/dialog/panel/f;

.field private aj:I

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:I

.field private aq:Z

.field private ar:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private as:Landroid/content/ComponentCallbacks;

.field private d:I

.field private e:Lcom/coui/appcompat/widget/IgnoreWindowInsetsFrameLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/View;

.field private j:Lcom/coui/appcompat/widget/l;

.field private k:Landroid/view/ViewGroup;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Landroid/view/View$OnTouchListener;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/b;->a:Landroid/view/animation/Interpolator;

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/b;->b:Landroid/view/animation/Interpolator;

    .line 105
    sget-object v0, Lcom/coui/appcompat/dialog/panel/b;->a:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/coui/appcompat/dialog/panel/b;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 230
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->l:Z

    .line 138
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->x:Z

    .line 142
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->z:Z

    .line 143
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->A:Z

    .line 144
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->B:Z

    .line 147
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->E:I

    .line 153
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->K:I

    .line 154
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->L:Z

    .line 155
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    const/4 v2, 0x0

    .line 160
    iput v2, p0, Lcom/coui/appcompat/dialog/panel/b;->R:F

    .line 161
    iput v2, p0, Lcom/coui/appcompat/dialog/panel/b;->S:F

    .line 162
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->T:Z

    .line 163
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->U:Z

    .line 164
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->V:I

    const/4 v2, 0x0

    .line 165
    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->W:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 166
    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    const/16 v3, 0x1f4

    .line 177
    iput v3, p0, Lcom/coui/appcompat/dialog/panel/b;->af:I

    .line 178
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ag:Z

    .line 180
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    .line 182
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->aj:I

    .line 185
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->am:Z

    .line 186
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->an:Z

    .line 187
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ao:Z

    .line 189
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->aq:Z

    .line 1273
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$6;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ar:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1303
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$7;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->as:Landroid/content/ComponentCallbacks;

    .line 231
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog:[I

    sget v3, Lcoui/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 233
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-direct {p0, p2, v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->s:Landroid/graphics/drawable/Drawable;

    .line 234
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->t:I

    .line 235
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-direct {p0, p2, v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    .line 236
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_panel_layout_tint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->v:I

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 239
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->v:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 241
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 242
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/b;->w:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method static synthetic A(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->T:Z

    return p0
.end method

.method static synthetic B(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->l()V

    return-void
.end method

.method static synthetic C(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic D(Lcom/coui/appcompat/dialog/panel/b;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->S:F

    return p0
.end method

.method static synthetic E(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    return-object p0
.end method

.method static synthetic F(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->I:Landroid/view/View;

    return-object p0
.end method

.method static synthetic G(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->t()V

    return-void
.end method

.method static synthetic H(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic I(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->O:Z

    return p0
.end method

.method static synthetic J(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    return p0
.end method

.method static synthetic K(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->K:I

    return p0
.end method

.method static synthetic L(Lcom/coui/appcompat/dialog/panel/b;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->R:F

    return p0
.end method

.method static synthetic M(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->aq:Z

    return p0
.end method

.method static synthetic N(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ag:Z

    return p0
.end method

.method static synthetic O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->G:Lcom/a/a/f;

    return-object p0
.end method

.method static synthetic P(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->D:I

    return p0
.end method

.method static synthetic Q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->F:Landroid/view/View;

    return-object p0
.end method

.method static synthetic R(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->C:I

    return p0
.end method

.method static synthetic S(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->E:I

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->R:F

    return p1
.end method

.method static a(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    .line 254
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lcoui/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 256
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->aj:I

    return p1
.end method

.method private a(III)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 910
    new-array v0, v0, [F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 912
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    int-to-float p3, p3

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coui/appcompat/dialog/panel/d;->d()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 917
    :goto_0
    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/coui/appcompat/dialog/panel/b$2;-><init>(Lcom/coui/appcompat/dialog/panel/b;FII)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->k:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->Z:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->P:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Lcom/coui/appcompat/widget/l;
    .locals 2

    .line 301
    new-instance v0, Lcom/coui/appcompat/widget/l;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/l;-><init>(Landroid/content/Context;)V

    .line 302
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 303
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/b;->t:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 304
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/l;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/l;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private a(IZLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 863
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->T:Z

    .line 865
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    .line 869
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->O:Z

    if-eqz v0, :cond_1

    .line 870
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 874
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    if-lez v0, :cond_8

    .line 875
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz p2, :cond_3

    .line 876
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->K:I

    :cond_2
    add-int/2addr v0, p1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->R:F

    float-to-int v0, v0

    :goto_1
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    move v2, v3

    goto :goto_2

    .line 877
    :cond_4
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/b;->K:I

    .line 879
    :cond_5
    :goto_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_6

    const/high16 v4, 0x42f00000    # 120.0f

    sub-int v5, v0, v2

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 882
    iget v4, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43960000    # 300.0f

    add-float/2addr v4, v5

    .line 883
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    float-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 884
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/coui/appcompat/dialog/panel/b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 886
    :cond_6
    iget v4, p0, Lcom/coui/appcompat/dialog/panel/b;->V:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x42480000    # 50.0f

    sub-int v5, v0, v2

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 887
    iget v4, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    add-float/2addr v4, v5

    .line 888
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/coui/appcompat/dialog/panel/b;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 890
    :goto_3
    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    float-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_7

    .line 892
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    :cond_7
    iget-object p3, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    .line 895
    invoke-direct {p0, v0, v2, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(III)Landroid/animation/ValueAnimator;

    move-result-object p1

    aput-object p1, v4, v3

    .line 896
    invoke-direct {p0, p2}, Lcom/coui/appcompat/dialog/panel/b;->f(Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    aput-object p1, v4, v1

    .line 894
    invoke-virtual {p3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 897
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    xor-int/lit8 p1, p2, 0x1

    .line 898
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ab:Z

    :cond_8
    return-void
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1256
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1257
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->I:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 1004
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->I:Landroid/view/View;

    .line 1005
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object p1

    .line 1006
    invoke-virtual {p1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    .line 1007
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    const-wide v0, 0x400e666666666666L    # 3.8

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 1008
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 1007
    invoke-virtual {p1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    .line 1009
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$5;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {p1, v0}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    .line 1038
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1222
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 1224
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v2, -0x80000000

    .line 1227
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1228
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/a/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit16 p0, v1, -0x2001

    and-int/lit8 p0, p0, -0x11

    goto :goto_0

    .line 1232
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_2

    or-int/lit16 p0, v1, 0x100

    goto :goto_0

    :cond_2
    or-int/lit8 p0, v1, 0x10

    .line 1238
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;IZLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/b;->a(IZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private a(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/l;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    .line 495
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 497
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/l;->setLayoutAtMaxHeight(Z)V

    .line 498
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_bottom_sheet_margin_bottom_if_need:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 501
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p2

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, -0x1

    .line 503
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 505
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ak:Z

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/b;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->S:F

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/b;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    return p1
.end method

.method private b(I)Landroid/animation/ValueAnimator;
    .locals 6

    .line 967
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/a/k;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    .line 970
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 971
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v4, v3, v5, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_0
    if-eq v2, p1, :cond_1

    .line 974
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 975
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 976
    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$4;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/dialog/panel/b$4;-><init>(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->aa:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_bottom_sheet_bg_bottom_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ap:I

    .line 487
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    return-void
.end method

.method private b(Landroid/content/res/Configuration;)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 477
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->am:Z

    return p1
.end method

.method static synthetic c(Lcom/coui/appcompat/dialog/panel/b;I)Landroid/animation/ValueAnimator;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->b(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    return-object p0
.end method

.method private c(I)V
    .locals 5

    .line 1455
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->G:Lcom/a/a/f;

    .line 1457
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->G:Lcom/a/a/f;

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    const-wide/high16 v3, 0x4045000000000000L    # 42.0

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    const/4 v0, 0x0

    .line 1458
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->E:I

    .line 1459
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->G:Lcom/a/a/f;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$10;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/panel/b$10;-><init>(Lcom/coui/appcompat/dialog/panel/b;I)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    .line 1494
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->G:Lcom/a/a/f;

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private c(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1333
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    .line 1334
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->O:Z

    if-nez v0, :cond_0

    return-void

    .line 1335
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1336
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x43f00000    # 480.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v3, v4

    .line 1341
    :cond_3
    invoke-direct {p0, v3, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->an:Z

    return p1
.end method

.method static synthetic d(Lcom/coui/appcompat/dialog/panel/b;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->D:I

    return p1
.end method

.method static synthetic d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method private d(I)V
    .locals 3

    .line 1498
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->F:Landroid/view/View;

    .line 1501
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->F:Landroid/view/View;

    .line 1502
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    .line 1499
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private d(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/a/m;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    .line 1349
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic d(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    return p1
.end method

.method private e(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1362
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1366
    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->f(Landroid/content/res/Configuration;)I

    move-result p1

    .line 1367
    iput p1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->width:I

    .line 1368
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1369
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/dialog/panel/b;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->d(I)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 672
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 674
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->al:Z

    .line 675
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    goto :goto_0

    .line 676
    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->al:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 677
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->al:Z

    .line 678
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$16;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/dialog/panel/b$16;-><init>(Lcom/coui/appcompat/dialog/panel/b;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ak:Z

    return p0
.end method

.method static synthetic e(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ab:Z

    return p1
.end method

.method private f(Landroid/content/res/Configuration;)I
    .locals 5

    .line 1374
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1375
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1377
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    move v2, v3

    :cond_1
    int-to-float p1, v0

    const/high16 v0, 0x43f00000    # 480.0f

    cmpl-float p1, p1, v0

    if-gez p1, :cond_3

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    return p0

    .line 1379
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$dimen;->coui_panel_landscape_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private f(Z)Landroid/animation/ValueAnimator;
    .locals 3

    .line 944
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->S:F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    .line 946
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 947
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$3;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private f()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/dialog/panel/b;->f(Landroid/content/res/Configuration;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 315
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->r()V

    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/dialog/panel/b;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->c(I)V

    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/dialog/panel/b;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->T:Z

    return p1
.end method

.method static synthetic g(Lcom/coui/appcompat/dialog/panel/b;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->E:I

    return p1
.end method

.method static synthetic g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v1, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v1, :cond_1

    .line 330
    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/b;->K:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(I)V

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->L:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Z)V

    .line 332
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(I)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(I)V

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_pull_up_max_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/b;->C:I

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/b$1;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/dialog/panel/b;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->e(Z)V

    return-void
.end method

.method private h()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, -0x1

    .line 414
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    .line 415
    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->z:Z

    return p0
.end method

.method private i()V
    .locals 2

    .line 420
    sget v0, Lcoui/support/appcompat/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/IgnoreWindowInsetsFrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->e:Lcom/coui/appcompat/widget/IgnoreWindowInsetsFrameLayout;

    .line 421
    sget v0, Lcoui/support/appcompat/R$id;->panel_outside:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->y:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/b$11;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    :cond_1
    sget v0, Lcoui/support/appcompat/R$id;->coordinator:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->g:Landroid/view/View;

    .line 438
    sget v0, Lcoui/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    .line 439
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 440
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->x:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$12;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/b$12;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 453
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->A:Z

    return p0
.end method

.method static synthetic j(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ap:I

    return p0
.end method

.method private j()V
    .locals 3

    .line 458
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/a/m;->d(Landroid/content/Context;)I

    move-result v0

    .line 459
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 462
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 463
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->f()V

    .line 466
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Landroid/content/Context;)V

    .line 467
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->d(Landroid/content/res/Configuration;)V

    .line 468
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Landroid/content/res/Configuration;)V

    .line 469
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Landroid/content/res/Configuration;)V

    .line 470
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic k(Lcom/coui/appcompat/dialog/panel/b;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->u()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lcom/coui/appcompat/dialog/panel/f;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/f;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    .line 595
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ae:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 596
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    new-instance v2, Lcom/coui/appcompat/dialog/panel/b$14;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/b$14;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/f;->a(Landroid/view/View;Lcom/coui/appcompat/dialog/panel/f$a;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->s()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ag:Z

    .line 627
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Z)V

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->P:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->findFocus()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    return p0
.end method

.method static synthetic m(Lcom/coui/appcompat/dialog/panel/b;)Landroid/os/Handler;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ae:Landroid/os/Handler;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 639
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->W:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 643
    new-instance v1, Lcom/coui/appcompat/dialog/panel/b$15;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/b$15;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->W:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 668
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->W:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->aj:I

    return p0
.end method

.method private n()V
    .locals 0

    .line 793
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method static synthetic o(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->P:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 797
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$17;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$17;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(IZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private p()V
    .locals 5

    .line 823
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ac:Z

    if-eqz v0, :cond_0

    .line 824
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ad:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 826
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xc8

    .line 827
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 828
    sget-object v2, Lcom/coui/appcompat/dialog/panel/b;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    new-instance v2, Lcom/coui/appcompat/dialog/panel/b$18;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/b$18;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 849
    new-array v0, v2, [Landroid/animation/Animator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/panel/b;->f(Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    .line 851
    new-array v4, v4, [Landroid/animation/Animator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/panel/b;->f(Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v4, v3

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 853
    :goto_1
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic p(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->am:Z

    return p0
.end method

.method static synthetic q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private q()V
    .locals 4

    .line 1042
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/f;->e()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    const/4 v0, 0x0

    .line 1044
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->H:Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->Z:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 1159
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->P:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->am:Z

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ak:Z

    if-nez v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->P:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1165
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    if-eqz p0, :cond_2

    .line 1166
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method private s()Z
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->w:Ljava/lang/ref/WeakReference;

    .line 1245
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/coui/appcompat/a/m;->b(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic s(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->an:Z

    return p0
.end method

.method static synthetic t(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->d:I

    return p0
.end method

.method private t()V
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ar:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private u()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1397
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$8;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$8;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    return-object v0
.end method

.method static synthetic u(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ab:Z

    return p0
.end method

.method static synthetic v(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->k:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private v()Lcom/coui/appcompat/dialog/panel/g;
    .locals 1

    .line 1423
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$9;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$9;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    return-object v0
.end method

.method static synthetic w(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->aa:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private w()V
    .locals 3

    .line 1608
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_0

    .line 1609
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->l:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/l;->setDividerVisibility(Z)V

    .line 1610
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/l;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1611
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/l;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1612
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/l;->c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1613
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/l;->b()V

    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/coui/appcompat/dialog/panel/b;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ac:Z

    return p0
.end method

.method static synthetic y(Lcom/coui/appcompat/dialog/panel/b;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b;->ad:I

    return p0
.end method

.method static synthetic z(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->n()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->i:Landroid/view/View;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 776
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ad:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    .line 1319
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->U:Z

    .line 1320
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/d;->a(Lcom/coui/appcompat/widget/l;)V

    .line 1322
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/d;->a()V

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->f()V

    .line 1325
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Landroid/content/res/Configuration;)V

    .line 1326
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->e(Landroid/content/res/Configuration;)V

    .line 1327
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->c(Landroid/content/res/Configuration;)V

    .line 1328
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Landroid/content/Context;)V

    .line 1329
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_0

    .line 1566
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    .line 1567
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/l;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->y:Landroid/view/View$OnTouchListener;

    .line 1055
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1056
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->y:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1624
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->m:Ljava/lang/String;

    .line 1625
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/b;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 767
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ac:Z

    return-void
.end method

.method public a(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1600
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->l:Z

    .line 1601
    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/dialog/panel/b;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1602
    invoke-virtual {p0, p4, p5}, Lcom/coui/appcompat/dialog/panel/b;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1603
    invoke-virtual {p0, p6, p7}, Lcom/coui/appcompat/dialog/panel/b;->c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1604
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->w()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1635
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->o:Ljava/lang/String;

    .line 1636
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/b;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->ab:Z

    if-nez p1, :cond_1

    .line 781
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->r()V

    .line 782
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->p()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->o()V

    goto :goto_0

    .line 788
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->n()V

    :goto_0
    return-void
.end method

.method public c()Lcom/coui/appcompat/widget/l;
    .locals 0

    .line 1172
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    return-object p0
.end method

.method public c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1646
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->q:Ljava/lang/String;

    .line 1647
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/b;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1108
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->M:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1110
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->O:Z

    :cond_0
    return-void
.end method

.method public d()Lcom/coui/appcompat/dialog/panel/d;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Y:Lcom/coui/appcompat/dialog/panel/d;

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Lcom/coui/appcompat/dialog/panel/d;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/d;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Y:Lcom/coui/appcompat/dialog/panel/d;

    .line 1252
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->Y:Lcom/coui/appcompat/dialog/panel/d;

    return-object p0
.end method

.method public d(Z)V
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->B:Z

    if-eq v0, p1, :cond_1

    .line 1120
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->B:Z

    .line 1121
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of p1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_1

    .line 1122
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->B:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->v()Lcom/coui/appcompat/dialog/panel/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    .line 1123
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/g;)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 757
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->q()V

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Z)V

    return-void
.end method

.method public e()Landroid/widget/Button;
    .locals 1

    .line 1658
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 749
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 752
    :cond_0
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->hide()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 512
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onAttachedToWindow()V

    .line 513
    new-instance v0, Landroid/os/Handler;

    .line 515
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/dialog/panel/b$13;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/b$13;-><init>(Lcom/coui/appcompat/dialog/panel/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ae:Landroid/os/Handler;

    .line 533
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->j()V

    .line 534
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/d;->a(I)V

    .line 537
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 538
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->s()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/b;->ao:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 540
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->ag:Z

    .line 541
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    const/4 v1, 0x0

    :cond_0
    or-int/lit8 v1, v1, 0x10

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 547
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/view/Window;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->ar:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 552
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->as:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 553
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_4

    .line 554
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->B:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->v()Lcom/coui/appcompat/dialog/panel/g;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/g;)V

    .line 557
    :cond_4
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ah:Z

    if-eqz v0, :cond_5

    .line 558
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->k()V

    .line 561
    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->m()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->g()V

    .line 323
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->h()V

    .line 324
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->i()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 566
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/d;->b()Z

    .line 568
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->Y:Lcom/coui/appcompat/dialog/panel/d;

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 573
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->W:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->Q:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/animation/Animator;)V

    .line 576
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->as:Landroid/content/ComponentCallbacks;

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b;->as:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->N:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v2, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v2, :cond_3

    .line 580
    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/g;)V

    .line 581
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->X:Lcom/coui/appcompat/dialog/panel/g;

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_4

    .line 584
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ai:Lcom/coui/appcompat/dialog/panel/f;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    :cond_4
    const/4 v0, 0x1

    .line 586
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Z)V

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 588
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/b;->ae:Landroid/os/Handler;

    .line 589
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 1130
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 1131
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->z:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 1136
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p1, :cond_0

    .line 1137
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1138
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->z:Z

    .line 1140
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/b;->A:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 281
    invoke-static {}, Lcom/coui/appcompat/a/t;->a()Lcom/coui/appcompat/a/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/a/t;->a(Landroid/content/Context;)V

    .line 282
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/b;->x:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/Context;)Lcom/coui/appcompat/widget/l;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    .line 284
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/b;->w()V

    .line 286
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->i:Landroid/view/View;

    .line 287
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/l;->b(Landroid/view/View;)V

    .line 289
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 290
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->j:Lcom/coui/appcompat/widget/l;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 292
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->i:Landroid/view/View;

    .line 293
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    .line 296
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->J:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b;->F:Landroid/view/View;

    return-void

    .line 279
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContentView can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
