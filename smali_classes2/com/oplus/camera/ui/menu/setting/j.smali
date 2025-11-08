.class public Lcom/oplus/camera/ui/menu/setting/j;
.super Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
.source "CameraMenuOptionSecondLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private final r:Landroid/view/animation/PathInterpolator;

.field private final s:Landroid/animation/ArgbEvaluator;

.field private t:Lcom/oplus/camera/ui/RotateImageView;

.field private u:Lcom/oplus/camera/ui/widget/c;

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    .line 55
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V

    .line 45
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 p3, 0x0

    const p4, 0x3f2b851f    # 0.67f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->r:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->s:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->v:Z

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/j;->w()V

    .line 134
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/j;->a:Lcom/oplus/camera/ComboPreferences;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return p4
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/widget/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    return-object p0
.end method

.method private h(Z)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 286
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->v:Z

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v0, 0x7f060072

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v0, 0x7f060071

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->n:Lcom/oplus/camera/ui/CameraUIListener;

    const v0, 0x7f0600a2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 295
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->v:Z

    const v1, 0x7f06006a

    if-eqz p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 304
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->w:Z

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(II)V

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$gJqMt1VT08CVyMyJH7kPUoloYbg(Lcom/oplus/camera/ui/menu/setting/j;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 223
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A()V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Landroid/view/View;)V

    .line 225
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    :cond_0
    return-void
.end method

.method public B()I
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070558

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703ff

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 172
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result p0

    return p0
.end method

.method public C()I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070558

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703ff

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 189
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result p0

    return p0
.end method

.method public J()Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method public a(IZ)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/oplus/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/j;->w()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Lcom/oplus/camera/ui/widget/c;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/c;->a(Z)V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/widget/c;->a(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    new-instance v0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;

    invoke-direct {v0, p0, p1, p3}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;-><init>(Lcom/oplus/camera/ui/menu/setting/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/widget/c;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/ui/menu/setting/j$1;

    invoke-direct {p2, p0, p4, p5}, Lcom/oplus/camera/ui/menu/setting/j$1;-><init>(Lcom/oplus/camera/ui/menu/setting/j;II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZZJ)V
    .locals 5

    .line 239
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 243
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->w:Z

    if-nez p2, :cond_1

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/j;->h(Z)V

    return-void

    .line 250
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/RotateImageView;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 254
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v0, 0x7f060096

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->s:Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, p2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    .line 257
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 256
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/j;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 260
    new-instance p2, Lcom/oplus/camera/ui/menu/setting/j$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/setting/j$2;-><init>(Lcom/oplus/camera/ui/menu/setting/j;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 60
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 65
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    const v2, 0x7f0803c6

    .line 68
    invoke-static {v1, v2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/j;->k:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/j;->h(Z)V

    .line 233
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->m:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->m:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected s()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->v:Z

    .line 275
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j;->t:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/j;->h(Z)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j;->u:Lcom/oplus/camera/ui/widget/c;

    :cond_1
    return-void
.end method

.method public z()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
