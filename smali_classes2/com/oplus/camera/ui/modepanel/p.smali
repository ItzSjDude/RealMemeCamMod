.class public Lcom/oplus/camera/ui/modepanel/p;
.super Ljava/lang/Object;
.source "MoreUIControl.java"

# interfaces
.implements Lcom/oplus/camera/ui/modepanel/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/modepanel/p$c;,
        Lcom/oplus/camera/ui/modepanel/p$a;,
        Lcom/oplus/camera/ui/modepanel/p$e;,
        Lcom/oplus/camera/ui/modepanel/p$d;,
        Lcom/oplus/camera/ui/modepanel/p$b;
    }
.end annotation


# static fields
.field public static a:I = 0x3


# instance fields
.field private A:I

.field private b:Landroid/app/Activity;

.field private c:Landroid/view/ViewGroup;

.field private d:I

.field private e:Lcom/oplus/camera/ui/modepanel/l;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/RelativeLayout$LayoutParams;

.field private h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

.field private i:Lcom/oplus/camera/ui/modepanel/o;

.field private j:Lcom/oplus/camera/ui/modepanel/p$b;

.field private k:Lcom/oplus/camera/ui/modepanel/f;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/oplus/camera/ui/widget/AnimationButton;

.field private o:Lcom/oplus/camera/ui/modepanel/h;

.field private p:Landroid/view/GestureDetector;

.field private q:Landroid/view/GestureDetector;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/oplus/camera/screen/g;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/a/a/f;

.field private z:Lcom/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/oplus/camera/ui/modepanel/f;Lcom/oplus/camera/screen/g;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    .line 81
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    .line 84
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    .line 85
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->o:Lcom/oplus/camera/ui/modepanel/h;

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->p:Landroid/view/GestureDetector;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->q:Landroid/view/GestureDetector;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->r:Ljava/util/HashMap;

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/p;->t:Z

    .line 92
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/p;->u:Z

    .line 94
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/p;->w:I

    const v1, 0x7f0c00f9

    .line 96
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/p;->x:I

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    .line 114
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    .line 115
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/p;->c:Landroid/view/ViewGroup;

    .line 116
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/p;->d:I

    .line 117
    new-instance p1, Lcom/oplus/camera/ui/modepanel/l;

    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/ui/modepanel/l;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    .line 118
    iput-object p5, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    .line 120
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07008b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    .line 121
    iput-object p4, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/p;)Landroid/view/GestureDetector;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->p:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->p:Landroid/view/GestureDetector;

    return-object p1
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 925
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 926
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    const/16 v1, 0xff

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    .line 928
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    const v0, 0x7f0901cd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/a/e;

    .line 245
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/e;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    .line 251
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    .line 252
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->o:Lcom/oplus/camera/ui/modepanel/h;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/modepanel/h;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/p;F)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->b(F)V

    return-void
.end method

.method private synthetic a([Ljava/lang/Object;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->l()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-ltz p4, :cond_0

    return v0

    .line 594
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p4, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p4

    const/4 v2, 0x1

    const-string v3, "MoreUIControl"

    if-gtz p4, :cond_4

    const/high16 p4, 0x43480000    # 200.0f

    .line 595
    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    goto :goto_1

    .line 603
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_3

    .line 604
    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p1, "handleNormalFling, slide to next mode"

    .line 605
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->b()V

    return v2

    :cond_4
    :goto_1
    const-string p1, "handleNormalFling, slide to previous mode"

    .line 596
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->a()V

    return v2
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 213
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->q:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 214
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/ui/modepanel/p$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/modepanel/p$e;-><init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->q:Landroid/view/GestureDetector;

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->q:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/modepanel/p;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private b(F)V
    .locals 2

    .line 286
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setTranslationY(F)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setTranslationX(F)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 294
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 648
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 649
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/modepanel/k;

    if-eqz v2, :cond_1

    .line 651
    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 652
    invoke-virtual {v2, p2}, Lcom/oplus/camera/ui/modepanel/k;->a(I)V

    .line 654
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 655
    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ui/modepanel/o;->a(Ljava/util/ArrayList;Z)V

    .line 656
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 657
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->j(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 820
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 821
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    const/16 v1, 0xff

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    .line 823
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 168
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->o:Lcom/oplus/camera/ui/modepanel/h;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/h;->a()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    return v0

    .line 620
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    const/4 v2, 0x1

    if-gtz p3, :cond_4

    const/high16 p3, 0x43480000    # 200.0f

    .line 621
    invoke-static {p4, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_3

    .line 627
    invoke-static {p4, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 628
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->b()V

    return v2

    .line 622
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->a()V

    return v2
.end method

.method static synthetic b(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/modepanel/p;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/f;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->o()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/modepanel/p;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/modepanel/p;)Lcom/a/a/f;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/modepanel/p;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    return-object p0
.end method

.method private i(I)V
    .locals 4

    .line 125
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "MoreUIControl"

    const-string v0, "initMoreModeView"

    .line 129
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->h(I)V

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/p;->x:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    const v2, 0x7f06049a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    const/4 v0, 0x4

    const/4 v2, -0x1

    if-ne p1, v0, :cond_2

    .line 141
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    sget v0, Lcom/oplus/camera/screen/f;->b:I

    sub-int/2addr p1, v0

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/oplus/camera/screen/f;->b:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 146
    :cond_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    .line 150
    :goto_0
    new-instance p1, Lcom/oplus/camera/ui/modepanel/o;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/p;->d:I

    invoke-direct {p1, v0, v2}, Lcom/oplus/camera/ui/modepanel/o;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    .line 151
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/oplus/camera/ui/modepanel/o;->a(Ljava/util/ArrayList;Z)V

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/o;->e(I)V

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/modepanel/o;->a(Lcom/oplus/camera/ui/modepanel/o$a;)V

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/p;->d:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/o;->c(I)V

    .line 156
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const v0, 0x7f09025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const v0, 0x7f090251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    .line 158
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const v0, 0x7f09024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/p$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    sget v3, Lcom/oplus/camera/ui/modepanel/p;->a:I

    invoke-direct {v0, p0, v2, v3}, Lcom/oplus/camera/ui/modepanel/p$a;-><init>(Lcom/oplus/camera/ui/modepanel/p;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/p$c;

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/modepanel/p$c;-><init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 161
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/r;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/r;->a(Z)V

    .line 162
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$T4uo11FGQSQq6nCrhJdu68PFBOg;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$T4uo11FGQSQq6nCrhJdu68PFBOg;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v1, Lcom/oplus/camera/ui/modepanel/p$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/p$1;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 207
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$PhOMKfmjAS0HCGgrDP9EifNH4F4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$PhOMKfmjAS0HCGgrDP9EifNH4F4;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/screen/b/a;->b(Lcom/oplus/camera/screen/b/o$a;)V

    .line 209
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->j(I)V

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 211
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$f;->a(J)V

    .line 212
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$fkmXciEyVxm7m0fTIIJJgiepHr8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$fkmXciEyVxm7m0fTIIJJgiepHr8;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->q()V

    .line 223
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->k:Lcom/oplus/camera/ui/modepanel/f;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->m()V

    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    return-object p0
.end method

.method private j(I)V
    .locals 3

    .line 771
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v1, v0, 0x1

    const/4 v2, 0x4

    if-gt p1, v1, :cond_0

    .line 772
    invoke-static {}, Lcom/oplus/camera/k;->h()I

    move-result p1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x1

    if-le p1, v1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_1

    .line 774
    invoke-static {}, Lcom/oplus/camera/k;->i()I

    move-result p1

    goto :goto_0

    .line 775
    :cond_1
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v1, v0, 0x2

    if-le p1, v1, :cond_2

    mul-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_2

    .line 776
    invoke-static {}, Lcom/oplus/camera/k;->j()I

    move-result p1

    goto :goto_0

    .line 777
    :cond_2
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v1, v0, 0x3

    if-le p1, v1, :cond_3

    mul-int/2addr v0, v2

    if-gt p1, v0, :cond_3

    .line 778
    invoke-static {}, Lcom/oplus/camera/k;->k()I

    move-result p1

    goto :goto_0

    .line 779
    :cond_3
    sget v0, Lcom/oplus/camera/ui/modepanel/p;->a:I

    mul-int/lit8 v1, v0, 0x4

    if-le p1, v1, :cond_4

    mul-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_4

    .line 780
    invoke-static {}, Lcom/oplus/camera/k;->l()I

    move-result p1

    goto :goto_0

    .line 782
    :cond_4
    invoke-static {}, Lcom/oplus/camera/k;->l()I

    move-result p1

    .line 785
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 787
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    if-ne v2, v1, :cond_5

    .line 788
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 789
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0709f6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    .line 790
    iget p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 791
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0709ea

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 792
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setVerticalFadingEdgeEnabled(Z)V

    .line 793
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    const v1, 0x7f0709e1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setFadingEdgeLength(I)V

    goto :goto_1

    .line 795
    :cond_5
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 796
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 797
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setVerticalFadingEdgeEnabled(Z)V

    .line 800
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/ui/modepanel/p;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    return p0
.end method

.method private l()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/AnimationButton;

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    .line 230
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07079c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setTextSize(IF)V

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$_7M7QnXwdHjXyNyCWxJW_gJ4kYo;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$_7M7QnXwdHjXyNyCWxJW_gJ4kYo;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$PhOMKfmjAS0HCGgrDP9EifNH4F4(Lcom/oplus/camera/ui/modepanel/p;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$T4uo11FGQSQq6nCrhJdu68PFBOg(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$_7M7QnXwdHjXyNyCWxJW_gJ4kYo(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$de-1XOT9ysj02ElFfQBROzubhBo(Lcom/oplus/camera/ui/modepanel/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$fkmXciEyVxm7m0fTIIJJgiepHr8(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/p;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$n8prsoDVZI_r3aGgjjU0PeZE1uk(Lcom/oplus/camera/ui/modepanel/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/h;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->o:Lcom/oplus/camera/ui/modepanel/h;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    if-eqz v0, :cond_0

    .line 258
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    int-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 269
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/screen/g;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz v0, :cond_0

    .line 276
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    int-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 306
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/p;->v:I

    int-to-double v2, v2

    .line 309
    invoke-virtual {v1, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/modepanel/p$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/modepanel/p$2;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    .line 310
    invoke-virtual {v1, v2}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    .line 328
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/modepanel/p$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/p$3;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    .line 331
    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->s()V

    return-void
.end method

.method private r()Z
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz p0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/a/a/f;->i()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private s()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->t()V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    .line 959
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    if-eqz v1, :cond_1

    .line 965
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 966
    sget-object v1, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->s:Lcom/oplus/camera/screen/g;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/g;->i()Lcom/oplus/camera/screen/f$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/screen/f$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->o(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 968
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->b:Landroid/app/Activity;

    .line 969
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07079b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMoreModeDataChange, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/p;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreUIControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/l;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/o;->a(Ljava/util/ArrayList;Z)V

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/o;->notifyDataSetChanged()V

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/modepanel/p;->j(I)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, more itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreUIControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    if-eqz p0, :cond_0

    .line 515
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/modepanel/p$b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/modepanel/p;->b(II)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/h;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->o:Lcom/oplus/camera/ui/modepanel/h;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/p$b;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->j:Lcom/oplus/camera/ui/modepanel/p$b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/p;->t:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/l;->a(I)V

    .line 360
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->a()V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-nez v2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/a/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    invoke-virtual {p0}, Lcom/a/a/f;->i()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Z)Z
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    const-string v1, "MoreUIControl"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hideMoreView, MoreMode is executing the enter animation"

    .line 444
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    :cond_1
    const-string v0, "hideMoreView"

    .line 449
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->p()V

    goto :goto_0

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->m()V

    .line 455
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public c(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/l;->b(I)V

    .line 365
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->a()V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/f;->i()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(I)V
    .locals 2

    .line 399
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/p;->w:I

    .line 400
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->i(I)V

    .line 402
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    const-string v0, "MoreUIControl"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/f;->i()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "showMoreView, MoreMode is executing the end animation"

    .line 404
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 407
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p0, "showMoreView, MoreMode has been shown"

    .line 409
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 415
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget v0, p0, Lcom/oplus/camera/ui/modepanel/p;->d:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/o;->d(I)V

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result p1

    if-nez p1, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->t()V

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    .line 424
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->n()V

    .line 425
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/p;->o()V

    .line 427
    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/p;->t:Z

    if-nez p1, :cond_3

    return-void

    .line 431
    :cond_3
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/p;->t:Z

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/modepanel/o;->a(Ljava/util/ArrayList;Z)V

    .line 433
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/o;->notifyDataSetChanged()V

    .line 434
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->j(I)V

    .line 435
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->r:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/f;->i()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(I)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public f()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    .line 501
    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->y:Lcom/a/a/f;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    .line 506
    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/p;->d:I

    .line 489
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    if-eqz p0, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/o;->c(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 804
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setClickable(Z)V

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/p;->u:Z

    .line 814
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/modepanel/o;->a(Z)V

    .line 815
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result v0

    .line 817
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/oplus/camera/ui/modepanel/o;->notifyItemRangeChanged(IILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 818
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 819
    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$n8prsoDVZI_r3aGgjjU0PeZE1uk;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$n8prsoDVZI_r3aGgjjU0PeZE1uk;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 825
    new-instance v1, Lcom/oplus/camera/ui/modepanel/p$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/p$4;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 851
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 852
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public g(I)V
    .locals 1

    const/4 v0, -0x1

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/p;->b(II)V

    return-void
.end method

.method public h()V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    if-nez v0, :cond_0

    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/l;->c()V

    .line 911
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/modepanel/k;

    .line 914
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/p;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 915
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/p;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/modepanel/k;->a(I)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/modepanel/o;->a(Ljava/util/ArrayList;Z)V

    .line 920
    iput-boolean v2, p0, Lcom/oplus/camera/ui/modepanel/p;->u:Z

    .line 921
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/modepanel/o;->a(Z)V

    .line 922
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/o;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/modepanel/p;->j(I)V

    const/4 v0, 0x2

    .line 923
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 924
    new-instance v1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$de-1XOT9ysj02ElFfQBROzubhBo;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$de-1XOT9ysj02ElFfQBROzubhBo;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 930
    new-instance v1, Lcom/oplus/camera/ui/modepanel/p$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/modepanel/p$5;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 951
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 952
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public h(I)V
    .locals 3

    .line 856
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/p;->A:I

    .line 857
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p;->z:Lcom/a/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    const v1, 0x7f0c00f9

    if-eq p1, v2, :cond_1

    .line 871
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/p;->x:I

    const/4 p1, 0x3

    .line 872
    sput p1, Lcom/oplus/camera/ui/modepanel/p;->a:I

    goto :goto_1

    .line 866
    :cond_1
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/p;->x:I

    .line 867
    sput v2, Lcom/oplus/camera/ui/modepanel/p;->a:I

    goto :goto_1

    :cond_2
    const p1, 0x7f0c00fa

    .line 861
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/p;->x:I

    .line 862
    sput v2, Lcom/oplus/camera/ui/modepanel/p;->a:I

    .line 876
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    if-eqz p1, :cond_3

    .line 877
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/o;->d()V

    .line 880
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->h:Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 881
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 884
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->n:Lcom/oplus/camera/ui/widget/AnimationButton;

    if-eqz p1, :cond_5

    const/16 v2, 0x8

    .line 885
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/widget/AnimationButton;->setVisibility(I)V

    .line 888
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 889
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 892
    :cond_6
    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->f:Landroid/view/View;

    .line 893
    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->g:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 896
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p;->e:Lcom/oplus/camera/ui/modepanel/l;

    if-eqz p1, :cond_7

    .line 897
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/l;->c()V

    .line 900
    :cond_7
    iput-object v1, p0, Lcom/oplus/camera/ui/modepanel/p;->i:Lcom/oplus/camera/ui/modepanel/o;

    .line 901
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/p;->w:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->d(I)V

    :cond_8
    return-void
.end method

.method public i()Z
    .locals 1

    .line 974
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-boolean p0, p0, Lcom/oplus/camera/ui/modepanel/p;->u:Z

    return p0

    .line 976
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 977
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public j()V
    .locals 1

    .line 984
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p;->l:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 985
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
