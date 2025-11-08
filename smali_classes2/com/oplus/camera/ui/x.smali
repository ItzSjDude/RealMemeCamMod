.class public Lcom/oplus/camera/ui/x;
.super Landroid/widget/LinearLayout;
.source "ZoomClickChangeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/x$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "x"


# instance fields
.field private b:Lcom/oplus/camera/ui/x$a;

.field private c:Ljava/text/DecimalFormat;

.field private d:Lcom/oplus/camera/ah;

.field private e:Z

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Z

.field private i:F

.field private j:Z

.field private k:J

.field private l:F

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/RotableTextView;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/animation/ValueAnimator;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    .line 39
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->c:Ljava/text/DecimalFormat;

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->d:Lcom/oplus/camera/ah;

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Lcom/oplus/camera/ui/x;->e:Z

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->f:Landroid/view/animation/Animation;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->g:Landroid/view/animation/Animation;

    .line 44
    iput-boolean p3, p0, Lcom/oplus/camera/ui/x;->h:Z

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/x;->i:F

    .line 46
    iput-boolean p3, p0, Lcom/oplus/camera/ui/x;->j:Z

    const-wide/16 v1, 0x0

    .line 47
    iput-wide v1, p0, Lcom/oplus/camera/ui/x;->k:J

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/x;->l:F

    .line 49
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    const/4 p2, 0x1

    .line 52
    iput p2, p0, Lcom/oplus/camera/ui/x;->p:I

    .line 64
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/x;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/x;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oplus/camera/ui/x;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    return-object p0
.end method

.method private synthetic a(FLandroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/x;->a(FZ)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 153
    sget v0, Lcom/oplus/camera/ag;->a:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 154
    sget p1, Lcom/oplus/camera/ag;->a:F

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/x$a;->a(F)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->setOrientation(I)V

    const/16 p1, 0x11

    .line 69
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->setGravity(I)V

    .line 70
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#.#"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/x;->c:Ljava/text/DecimalFormat;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->setClickable(Z)V

    return-void
.end method

.method private a(FF)Z
    .locals 3

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/x;->b(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 304
    iget v0, p0, Lcom/oplus/camera/ui/x;->l:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/x;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iput v1, p0, Lcom/oplus/camera/ui/x;->l:F

    :cond_0
    return p1

    :cond_1
    return p2
.end method

.method static synthetic a(Lcom/oplus/camera/ui/x;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/oplus/camera/ui/x;->h:Z

    return p1
.end method

.method private b(FF)Z
    .locals 0

    .line 318
    iget p0, p0, Lcom/oplus/camera/ui/x;->p:I

    invoke-static {p2, p0}, Lcom/oplus/camera/ag;->a(FI)F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$6pzU-Ovaa-G2AxJjB6f2woQDqc8(Lcom/oplus/camera/ui/x;FLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/x;->a(FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$DYtMIOCHyDHYrYGV8HECcFWaflE(Lcom/oplus/camera/ui/x;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/x;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a(F)Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/ui/x;->d:Lcom/oplus/camera/ah;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/x;->e:Z

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ah;->a(ZF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/RotableTextView;

    iget-boolean v4, p0, Lcom/oplus/camera/ui/x;->j:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/oplus/camera/ui/x;->l:F

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/RotableTextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 281
    iput v0, p0, Lcom/oplus/camera/ui/x;->l:F

    return-void
.end method

.method public a(FLjava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    iput p1, p0, Lcom/oplus/camera/ui/x;->i:F

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    .line 92
    iput p4, p0, Lcom/oplus/camera/ui/x;->p:I

    .line 93
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->removeAllViews()V

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    .line 95
    new-instance p2, Lcom/oplus/camera/ah;

    invoke-direct {p2}, Lcom/oplus/camera/ah;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/x;->d:Lcom/oplus/camera/ah;

    .line 97
    sget-object p2, Lcom/oplus/camera/ui/x;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, points: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 100
    new-instance v0, Lcom/oplus/camera/ui/preview/ah;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/ah;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070dbc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070dbb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 104
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 105
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 106
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setGravity(I)V

    .line 107
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070dbd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 108
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0806ac

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0, p4}, Lcom/oplus/camera/ui/x;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lcom/oplus/camera/util/Util;->A()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x2

    .line 111
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setPadding(IIII)V

    .line 112
    invoke-virtual {v0, p3, v2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 114
    new-instance v1, Lcom/oplus/camera/ui/-$$Lambda$x$6pzU-Ovaa-G2AxJjB6f2woQDqc8;

    invoke-direct {v1, p0, p4}, Lcom/oplus/camera/ui/-$$Lambda$x$6pzU-Ovaa-G2AxJjB6f2woQDqc8;-><init>(Lcom/oplus/camera/ui/x;F)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/x;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p4, p1}, Lcom/oplus/camera/ui/x;->a(FF)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotableTextView;->setSelected(Z)V

    .line 120
    iget-object p4, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public a(FZ)V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    if-eqz v0, :cond_5

    .line 126
    invoke-interface {v0}, Lcom/oplus/camera/ui/x$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/ui/x;->h:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/ui/x;->i:F

    .line 128
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/oplus/camera/ui/x;->l:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    :cond_0
    const-wide/16 v0, 0xc8

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/ui/x;->k:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    .line 130
    invoke-interface {v0}, Lcom/oplus/camera/ui/x$a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/ui/x;->l:F

    .line 131
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/x;->l:F

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/x$a;->b(F)V

    .line 138
    iput-boolean p2, p0, Lcom/oplus/camera/ui/x;->j:Z

    .line 140
    iget-boolean p2, p0, Lcom/oplus/camera/ui/x;->j:Z

    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->a()V

    .line 144
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/x;->j:Z

    invoke-interface {p2, p1, v0}, Lcom/oplus/camera/ui/x$a;->a(FZ)V

    .line 146
    iget-object p2, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_3

    .line 147
    new-array p2, v2, [F

    iget v2, p0, Lcom/oplus/camera/ui/x;->i:F

    aput v2, p2, v1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0100d1

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/-$$Lambda$x$DYtMIOCHyDHYrYGV8HECcFWaflE;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/-$$Lambda$x$DYtMIOCHyDHYrYGV8HECcFWaflE;-><init>(Lcom/oplus/camera/ui/x;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/x$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/x$1;-><init>(Lcom/oplus/camera/ui/x;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 184
    iget-object p2, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 187
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/oplus/camera/ui/x;->i:F

    aput v3, v2, v1

    aput p1, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 190
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/x;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(FZZ)V
    .locals 3

    .line 261
    iput p1, p0, Lcom/oplus/camera/ui/x;->i:F

    if-nez p3, :cond_0

    .line 263
    iget-boolean p3, p0, Lcom/oplus/camera/ui/x;->j:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    move v0, p3

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/RotableTextView;

    if-eqz p2, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/ui/x;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/RotableTextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 272
    iput p1, p0, Lcom/oplus/camera/ui/x;->l:F

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 0

    if-eqz p2, :cond_3

    .line 204
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->f:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0100ce

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/x;->f:Landroid/view/animation/Animation;

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->f:Landroid/view/animation/Animation;

    new-instance p2, Lcom/oplus/camera/ui/x$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/x$2;-><init>(Lcom/oplus/camera/ui/x;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->f:Landroid/view/animation/Animation;

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->g:Landroid/view/animation/Animation;

    if-nez p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/oplus/camera/ui/x;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0100cf

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/x;->g:Landroid/view/animation/Animation;

    .line 232
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->g:Landroid/view/animation/Animation;

    new-instance p2, Lcom/oplus/camera/ui/x$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/x$3;-><init>(Lcom/oplus/camera/ui/x;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/x;->g:Landroid/view/animation/Animation;

    .line 254
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/x;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/oplus/camera/ui/x;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/RotableTextView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFromClickView(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/oplus/camera/ui/x;->j:Z

    return-void
.end method

.method public setListener(Lcom/oplus/camera/ui/x$a;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/ui/x;->b:Lcom/oplus/camera/ui/x$a;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 199
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoomUnit(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/oplus/camera/ui/x;->e:Z

    return-void
.end method
