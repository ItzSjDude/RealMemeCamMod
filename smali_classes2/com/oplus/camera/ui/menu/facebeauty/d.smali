.class public abstract Lcom/oplus/camera/ui/menu/facebeauty/d;
.super Ljava/lang/Object;
.source "FaceBeautyBaseMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/facebeauty/d$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/view/ViewGroup;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Landroid/view/ViewGroup;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/oplus/camera/ui/preview/a/f;

.field protected o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

.field protected p:Landroid/animation/Animator;

.field protected q:Landroid/animation/Animator;

.field protected r:Landroid/animation/Animator;

.field protected s:Landroid/animation/Animator;

.field protected t:Landroid/view/animation/PathInterpolator;

.field protected u:Landroid/view/animation/PathInterpolator;

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    const/16 v2, 0x96

    .line 55
    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    .line 56
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->h:Z

    .line 57
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->i:Z

    .line 58
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->j:Z

    const/4 v2, 0x1

    .line 59
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->k:Z

    .line 60
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    .line 61
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->m:Z

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->p:Landroid/animation/Animator;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->q:Landroid/animation/Animator;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->r:Landroid/animation/Animator;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->s:Landroid/animation/Animator;

    .line 72
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->t:Landroid/view/animation/PathInterpolator;

    .line 73
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->u:Landroid/view/animation/PathInterpolator;

    .line 74
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->v:I

    .line 75
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    .line 76
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->x:I

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->y:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 9

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showViews, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 409
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 410
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x2

    .line 411
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 413
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->o()Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [F

    .line 416
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->p()I

    move-result v8

    int-to-float v8, v8

    aput v8, v3, v2

    aput p2, v3, v1

    .line 415
    invoke-static {p1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 417
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 420
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 421
    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 422
    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/d$1;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 437
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 440
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected a(IIZI)Landroid/view/ViewGroup;
    .locals 11

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060439

    .line 298
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->r()I

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f07046c

    .line 301
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f07046d

    .line 302
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_0

    :cond_1
    const v3, 0x7f070c7f

    .line 304
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f070c80

    .line 305
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_0
    const v5, 0x7f07046e

    .line 308
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f07046f

    .line 309
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x7f070470

    .line 310
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v8, 0x7f07046b

    .line 311
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f07045e

    .line 312
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 313
    new-instance v9, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-direct {v9, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v9, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setId(I)V

    .line 315
    invoke-virtual {v9, p2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setText(I)V

    .line 316
    invoke-virtual {v9, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f0803e9

    .line 317
    invoke-virtual {v9, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 318
    invoke-virtual {v9, p1, v5}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTextSize(IF)V

    const/16 p2, 0x11

    .line 319
    invoke-virtual {v9, p2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setGravity(I)V

    const/4 p2, 0x1

    .line 320
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 322
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    if-ne p2, v2, :cond_2

    const/4 v2, 0x2

    .line 323
    invoke-virtual {v9, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setMaxLines(I)V

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v9, p2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setSingleLine(Z)V

    .line 328
    :goto_1
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v2, v0, v9}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 329
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    iget v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    const/4 v10, -0x2

    if-ne p2, v5, :cond_3

    move v8, v10

    :cond_3
    invoke-direct {v2, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 331
    invoke-virtual {v9, v3, v7, v3, v6}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setPadding(IIII)V

    .line 332
    invoke-virtual {v9, p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p3, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->r()I

    move-result p2

    if-nez p2, :cond_4

    .line 336
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    .line 338
    :cond_4
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 342
    :cond_5
    :goto_2
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {p2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance p3, Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p3, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {p3, p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 347
    invoke-virtual {p3, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setDotDiameter(I)V

    .line 348
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800035

    invoke-direct {p1, v10, v10, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 350
    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method protected a(Landroid/view/View;)V
    .locals 9

    .line 642
    instance-of p0, p1, Lcom/oplus/camera/ui/OplusNumSeekBar;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FaceBeautyBaseMenu"

    const-string v0, "moving seekBar dispatchTouchEvent cancel"

    .line 643
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 646
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/f;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanTabBackground, needBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move v0, p1

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 218
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected b(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 6

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideViews, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 455
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x2

    .line 456
    new-array v1, p2, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 458
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 460
    new-array v2, p2, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 462
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    .line 463
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 464
    new-instance v5, Lcom/oplus/camera/ui/menu/facebeauty/d$2;

    invoke-direct {v5, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d$2;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    new-array p2, p2, [F

    fill-array-data p2, :array_2

    const-string v5, "scaleY"

    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 473
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 477
    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/d$3;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d$3;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 492
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 494
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 497
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 498
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected b(Z)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabFaceViewEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->s:Landroid/animation/Animator;

    if-eqz p0, :cond_5

    .line 84
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected c(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 6

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideViews, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 514
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->o()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v4, 0x1

    .line 515
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->p()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 514
    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 516
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    .line 517
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 519
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 520
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 521
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 523
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 524
    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/d$4;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d$4;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 541
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(Landroid/view/View;)V

    .line 545
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected c()V
    .locals 11

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "initTabLayout"

    .line 88
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    .line 96
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->b()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const v1, 0x7f09009e

    const v4, 0x7f100141

    .line 103
    invoke-virtual {p0, v1, v4, v3, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(IIZI)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    .line 109
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-nez v4, :cond_1

    .line 110
    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    :cond_1
    move v4, v3

    move v5, v4

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 115
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    .line 118
    :cond_3
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-ne v3, v1, :cond_4

    .line 119
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    :cond_4
    move v4, v0

    move v5, v4

    move-object v1, v2

    .line 123
    :goto_0
    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->i:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    const v6, 0x7f0900a0

    const v8, 0x7f100142

    if-nez v1, :cond_5

    move v9, v3

    goto :goto_1

    :cond_5
    move v9, v0

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 124
    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(IIZI)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 128
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    move v5, v7

    .line 132
    :cond_6
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-nez v4, :cond_7

    .line 133
    iput v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    :cond_7
    move v4, v10

    goto :goto_2

    .line 136
    :cond_8
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 137
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    .line 140
    :cond_9
    iget v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-ne v7, v6, :cond_a

    .line 141
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    .line 145
    :cond_a
    :goto_2
    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->j:Z

    const/4 v8, 0x3

    if-eqz v6, :cond_d

    const v2, 0x7f09009f

    const v6, 0x7f10014c

    if-nez v1, :cond_b

    move v9, v3

    goto :goto_3

    :cond_b
    move v9, v0

    .line 146
    :goto_3
    invoke-virtual {p0, v2, v6, v9, v4}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(IIZI)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-nez v1, :cond_c

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    move v5, v8

    .line 154
    :cond_c
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-nez v2, :cond_f

    .line 155
    iput v8, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    goto :goto_4

    .line 158
    :cond_d
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz v4, :cond_e

    .line 159
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    .line 162
    :cond_e
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-ne v8, v2, :cond_f

    .line 163
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    .line 167
    :cond_f
    :goto_4
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-ne v2, v3, :cond_10

    .line 168
    iput v8, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    .line 171
    :cond_10
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_11

    move v2, v3

    goto :goto_5

    :cond_11
    move v2, v0

    .line 174
    :goto_5
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(Z)V

    .line 176
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-eq v4, v3, :cond_14

    if-eq v4, v7, :cond_13

    if-eq v4, v8, :cond_12

    if-eqz v1, :cond_15

    .line 203
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 205
    iput v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    goto :goto_6

    .line 194
    :cond_12
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz p0, :cond_15

    .line 195
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    .line 186
    :cond_13
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->c:Landroid/view/ViewGroup;

    if-eqz p0, :cond_15

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 188
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    .line 178
    :cond_14
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    if-eqz p0, :cond_15

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_15
    :goto_6
    return-void
.end method

.method public c(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->m:Z

    .line 652
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->n()V

    const/16 v1, 0x96

    .line 654
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    .line 656
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/preview/a/f;->a(I)V

    .line 660
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->f:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k(Z)V

    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->h(Z)V

    goto :goto_0

    .line 662
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->e(Z)V

    .line 677
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 678
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    if-eqz p0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    .line 679
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1

    :cond_4
    const/high16 p0, 0x3f000000    # 0.5f

    .line 681
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public c(I)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected d()V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFaceView, mbFaceBeautyEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->e()V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->b:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 687
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->m:Z

    .line 688
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->n()V

    .line 690
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->g(Z)V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->j(Z)V

    .line 698
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->m(Z)V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->j()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 260
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 261
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected e(Z)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "showFilterTabRedDot"

    .line 268
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 272
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    :cond_0
    return-void
.end method

.method protected f(Z)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "hideFilterTabRedDot"

    .line 277
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->d:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    :cond_0
    return-void
.end method

.method protected g(Z)V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "tabBeautyClick"

    .line 359
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->c()Z

    .line 362
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->n()V

    const/16 v0, 0xc8

    .line 363
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->e(Z)V

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    const/4 v1, 0x0

    const-string v2, "self_smooth"

    invoke-interface {v0, v2, v1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(Ljava/lang/String;IZ)V

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected h(Z)V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "tabMakeupClick"

    .line 372
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->n()V

    const/16 v0, 0xc8

    .line 375
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->h(Z)V

    .line 377
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    const/4 v1, 0x0

    const-string v2, "makeup"

    invoke-interface {v0, v2, v1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(Ljava/lang/String;IZ)V

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected i(Z)V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 3

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FaceBeautyBaseMenu"

    const-string v1, "tabFilterClick"

    .line 384
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->n()V

    const/16 v0, 0xc8

    .line 387
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->g:I

    .line 389
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/f;->a(I)V

    :cond_0
    const/4 v0, 0x1

    .line 393
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k(Z)V

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    const/4 v1, 0x0

    const-string v2, "filter"

    invoke-interface {v0, v2, v1, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(Ljava/lang/String;IZ)V

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(I)V

    :cond_1
    return-void
.end method

.method protected j(Z)V
    .locals 0

    return-void
.end method

.method protected k(Z)V
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFilterEffect, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->i(Z)V

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/d;->f(Z)V

    :cond_1
    const/4 v0, 0x3

    .line 756
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->l()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->b(Z)V

    .line 759
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz p0, :cond_2

    .line 760
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/f;->a(Z)V

    :cond_2
    return-void
.end method

.method public k()Z
    .locals 1

    .line 595
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->a(I)Z

    move-result p0

    return p0
.end method

.method protected l(Z)V
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz p0, :cond_0

    .line 766
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    .line 603
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->b(I)Z

    move-result p0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMakeupShown, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyBaseMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method protected m(Z)V
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz p0, :cond_0

    .line 772
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/f;->c(Z)V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 615
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->e:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->c(I)Z

    move-result p0

    return p0
.end method

.method protected n()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->p:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->q:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->s:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->s:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 798
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->k:Z

    return-void
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .line 706
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "translationX"

    goto :goto_0

    :cond_0
    const-string p0, "translationY"

    :goto_0
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 552
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 562
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->m:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->k:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 566
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->i()V

    goto :goto_0

    .line 580
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->j()V

    goto :goto_0

    .line 568
    :pswitch_2
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->l:Z

    if-nez v1, :cond_3

    return-void

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;->h()V

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 588
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 589
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 590
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected p()I
    .locals 2

    .line 714
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10e

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->x:I

    if-eq v0, v1, :cond_0

    .line 715
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->v:I

    neg-int p0, p0

    return p0

    .line 718
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->v:I

    return p0
.end method

.method public q()Landroid/view/View;
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected r()I
    .locals 1

    .line 783
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d;->w:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
