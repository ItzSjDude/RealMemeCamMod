.class public Lcom/oplus/camera/t/h;
.super Landroid/widget/RelativeLayout;
.source "StreetTrackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/t/h$b;,
        Lcom/oplus/camera/t/h$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:D

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/oplus/camera/ui/control/MainShutterButton;

.field private t:Lcom/oplus/camera/t/h$a;

.field private u:Landroid/graphics/Paint;

.field private v:Lcom/oplus/camera/t/h$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/oplus/camera/t/h;->a:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/t/h;->b:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/t/h;->c:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/t/h;->d:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/t/h;->e:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/t/h;->f:I

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/oplus/camera/t/h;->g:I

    .line 45
    iput v0, p0, Lcom/oplus/camera/t/h;->h:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 46
    iput v1, p0, Lcom/oplus/camera/t/h;->i:F

    .line 47
    iput v1, p0, Lcom/oplus/camera/t/h;->j:F

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/oplus/camera/t/h;->k:F

    .line 49
    iput v1, p0, Lcom/oplus/camera/t/h;->l:F

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/oplus/camera/t/h;->m:D

    .line 51
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->n:Z

    .line 52
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->o:Z

    .line 53
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->p:Z

    .line 54
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->q:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->r:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/t/h;->b:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b27

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/oplus/camera/t/h;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/t/h;->a:I

    .line 67
    iget p1, p0, Lcom/oplus/camera/t/h;->a:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/oplus/camera/t/h;->e:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/t/h;->m:D

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f090338

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/MainShutterButton;

    iput-object p1, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 71
    invoke-direct {p0}, Lcom/oplus/camera/t/h;->g()V

    .line 72
    invoke-virtual {p0, p0}, Lcom/oplus/camera/t/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/oplus/camera/t/h;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/oplus/camera/t/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(FFFF)I
    .locals 9

    sub-float v0, p1, p3

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p2, p4

    .line 107
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 109
    iget v2, p0, Lcom/oplus/camera/t/h;->e:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 113
    :cond_0
    iput p1, p0, Lcom/oplus/camera/t/h;->i:F

    .line 114
    iput p2, p0, Lcom/oplus/camera/t/h;->j:F

    const/4 v2, 0x0

    cmpl-float v3, v2, v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_a

    cmpl-float v8, v2, v1

    if-nez v8, :cond_1

    goto/16 :goto_1

    :cond_1
    cmpg-float v2, p1, p3

    if-gtz v2, :cond_3

    cmpg-float v3, p2, p4

    if-gez v3, :cond_3

    div-float p1, v1, v0

    float-to-double p1, p1

    .line 127
    iget-wide p3, p0, Lcom/oplus/camera/t/h;->m:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_2

    .line 128
    iput v4, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_2
    div-float/2addr v0, v1

    float-to-double p1, v0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_9

    .line 130
    iput v6, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_3
    cmpl-float p1, p1, p3

    if-lez p1, :cond_5

    cmpg-float p3, p2, p4

    if-gtz p3, :cond_5

    div-float p1, v1, v0

    float-to-double p1, p1

    .line 133
    iget-wide p3, p0, Lcom/oplus/camera/t/h;->m:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_4

    .line 134
    iput v5, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_4
    div-float/2addr v0, v1

    float-to-double p1, v0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_9

    .line 136
    iput v6, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_5
    if-gez v2, :cond_7

    cmpl-float p3, p2, p4

    if-ltz p3, :cond_7

    div-float p1, v1, v0

    float-to-double p1, p1

    .line 139
    iget-wide p3, p0, Lcom/oplus/camera/t/h;->m:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_6

    .line 140
    iput v4, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_6
    div-float/2addr v0, v1

    float-to-double p1, v0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_9

    .line 142
    iput v7, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_7
    if-ltz p1, :cond_9

    cmpl-float p1, p2, p4

    if-lez p1, :cond_9

    div-float p1, v1, v0

    float-to-double p1, p1

    .line 145
    iget-wide p3, p0, Lcom/oplus/camera/t/h;->m:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_8

    .line 146
    iput v5, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_0

    :cond_8
    div-float/2addr v0, v1

    float-to-double p1, v0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_9

    .line 148
    iput v7, p0, Lcom/oplus/camera/t/h;->g:I

    .line 152
    :cond_9
    :goto_0
    iget p0, p0, Lcom/oplus/camera/t/h;->g:I

    return p0

    :cond_a
    :goto_1
    if-nez v3, :cond_c

    cmpg-float p1, p2, p4

    if-gez p1, :cond_b

    goto :goto_2

    :cond_b
    move v6, v7

    .line 118
    :goto_2
    iput v6, p0, Lcom/oplus/camera/t/h;->g:I

    goto :goto_4

    :cond_c
    cmpl-float p2, v2, v1

    if-nez p2, :cond_e

    cmpg-float p1, p1, p3

    if-gez p1, :cond_d

    goto :goto_3

    :cond_d
    move v4, v5

    .line 120
    :goto_3
    iput v4, p0, Lcom/oplus/camera/t/h;->g:I

    .line 123
    :cond_e
    :goto_4
    iget p0, p0, Lcom/oplus/camera/t/h;->g:I

    return p0
.end method

.method private a(IFF)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v3, p1, :cond_4

    .line 391
    iget v3, p0, Lcom/oplus/camera/t/h;->g:I

    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    cmpl-float v3, p2, p3

    if-gtz v3, :cond_3

    :cond_1
    iget v3, p0, Lcom/oplus/camera/t/h;->g:I

    if-eqz v3, :cond_2

    if-ne v0, v3, :cond_4

    :cond_2
    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    .line 393
    :cond_3
    iget p0, p0, Lcom/oplus/camera/t/h;->h:I

    return p0

    .line 397
    :cond_4
    iget p2, p0, Lcom/oplus/camera/t/h;->h:I

    if-ne v2, p2, :cond_5

    if-ne v1, p1, :cond_5

    .line 398
    iput v2, p0, Lcom/oplus/camera/t/h;->h:I

    goto :goto_0

    .line 399
    :cond_5
    iget p2, p0, Lcom/oplus/camera/t/h;->h:I

    if-ne v1, p2, :cond_6

    if-ne v2, p1, :cond_6

    .line 400
    iput v1, p0, Lcom/oplus/camera/t/h;->h:I

    goto :goto_0

    .line 401
    :cond_6
    iget p2, p0, Lcom/oplus/camera/t/h;->h:I

    if-nez p2, :cond_7

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 402
    iput p1, p0, Lcom/oplus/camera/t/h;->h:I

    goto :goto_0

    .line 403
    :cond_7
    iget p2, p0, Lcom/oplus/camera/t/h;->h:I

    if-ne v0, p2, :cond_8

    if-nez p1, :cond_8

    .line 404
    iput v0, p0, Lcom/oplus/camera/t/h;->h:I

    goto :goto_0

    .line 406
    :cond_8
    iput p1, p0, Lcom/oplus/camera/t/h;->h:I

    .line 409
    :goto_0
    iget p0, p0, Lcom/oplus/camera/t/h;->h:I

    return p0
.end method

.method private b(FF)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070a84

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 179
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 180
    iget v0, p0, Lcom/oplus/camera/t/h;->b:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/t/h$a;->setX(F)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/t/h$a;->setY(F)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/oplus/camera/t/h$a;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/t/h$a;-><init>(Lcom/oplus/camera/t/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    .line 222
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/t/h;->b:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    iget-object v1, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/t/h$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 236
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setPressed(Z)V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->performClick()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->p:Z

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b27

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->c()V

    .line 171
    iget v0, p0, Lcom/oplus/camera/t/h;->k:F

    iget v1, p0, Lcom/oplus/camera/t/h;->l:F

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/t/h;->b(FF)V

    .line 172
    invoke-direct {p0}, Lcom/oplus/camera/t/h;->h()V

    .line 173
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->d()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060521

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/camera/t/h;->a:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    iget-object p0, p0, Lcom/oplus/camera/t/h;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(FF)Z
    .locals 4

    .line 208
    iget v0, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 209
    iget v0, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 210
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 212
    iget p0, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->p:Z

    .line 190
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a84

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->c()V

    .line 194
    invoke-direct {p0}, Lcom/oplus/camera/t/h;->i()V

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->e()V

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x2

    .line 199
    new-array v1, v0, [I

    .line 200
    iget-object v2, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 201
    aget v2, v1, v2

    iget-object v3, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v3, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x1

    .line 202
    aget v1, v1, v3

    iget-object v3, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/2addr v3, v0

    sub-int/2addr v1, v3

    int-to-float v0, v1

    .line 203
    invoke-virtual {p0, v2}, Lcom/oplus/camera/t/h;->setX(F)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setY(F)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->n:Z

    const v0, 0x3f4ccccd    # 0.8f

    .line 267
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setAlpha(F)V

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setBackgroundColor(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->n:Z

    .line 273
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/h;->setBackgroundColor(I)V

    return-void
.end method

.method public f()Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Lcom/oplus/camera/t/h;->p:Z

    return p0
.end method

.method public getTrackMaxRadius()I
    .locals 0

    .line 437
    iget p0, p0, Lcom/oplus/camera/t/h;->a:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0}, Lcom/oplus/camera/t/h$b;->a()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-boolean v0, p0, Lcom/oplus/camera/t/h;->n:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/h;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 157
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 159
    iget-boolean p1, p0, Lcom/oplus/camera/t/h;->p:Z

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/t/h;->c:I

    .line 161
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/t/h;->d:I

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string p1, "StreetTrackLayout"

    const-string v0, "onLongClick"

    .line 79
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oplus/camera/t/h$b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/oplus/camera/t/h;->r:Z

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setPressed(Z)V

    return v0

    .line 87
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->r:Z

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->a()V

    .line 91
    iget-object p0, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz p0, :cond_1

    .line 92
    invoke-interface {p0}, Lcom/oplus/camera/t/h$b;->c()V

    :cond_1
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch: motionEvent.getAction():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreetTrackLayout"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_b

    goto/16 :goto_4

    .line 291
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/t/h;->p:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/oplus/camera/t/h;->c:I

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 295
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 298
    iget-object v3, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {v3}, Lcom/oplus/camera/t/h$a;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float v3, p1, v3

    .line 299
    iget-object v4, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {v4}, Lcom/oplus/camera/t/h$a;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v4

    sub-float v2, p2, v2

    .line 301
    iget-boolean v4, p0, Lcom/oplus/camera/t/h;->q:Z

    if-eqz v4, :cond_2

    .line 302
    iput p1, p0, Lcom/oplus/camera/t/h;->i:F

    .line 303
    iput p2, p0, Lcom/oplus/camera/t/h;->j:F

    .line 304
    iput-boolean v1, p0, Lcom/oplus/camera/t/h;->q:Z

    .line 307
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/t/h;->a(FF)Z

    move-result v4

    if-nez v4, :cond_9

    .line 308
    iget v2, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 309
    iget v3, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 311
    iget v4, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-float v8, v2, v3

    float-to-double v9, v8

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 314
    iget v5, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    .line 315
    iget v5, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-float v6, v5

    sub-float/2addr v6, v4

    :goto_0
    int-to-float v4, v5

    sub-float/2addr v4, v8

    goto :goto_2

    .line 317
    :cond_3
    iget v5, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    .line 318
    iget v5, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-float v6, v5

    add-float/2addr v6, v4

    goto :goto_0

    .line 320
    :cond_4
    iget v5, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    iget v5, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 321
    iget v5, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-float v6, v5

    sub-float/2addr v6, v4

    :goto_1
    int-to-float v4, v5

    add-float/2addr v4, v8

    goto :goto_2

    .line 323
    :cond_5
    iget v5, p0, Lcom/oplus/camera/t/h;->c:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_6

    iget v5, p0, Lcom/oplus/camera/t/h;->d:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_6

    .line 324
    iget v5, p0, Lcom/oplus/camera/t/h;->a:I

    int-to-float v6, v5

    add-float/2addr v6, v4

    goto :goto_1

    :cond_6
    move v6, v4

    move v4, v8

    .line 328
    :goto_2
    iget v5, p0, Lcom/oplus/camera/t/h;->f:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/oplus/camera/t/h;->f:I

    .line 330
    iget v5, p0, Lcom/oplus/camera/t/h;->f:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_7

    .line 331
    iput v1, p0, Lcom/oplus/camera/t/h;->f:I

    .line 333
    iget-object v5, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz v5, :cond_7

    .line 334
    iget v5, p0, Lcom/oplus/camera/t/h;->i:F

    iget v7, p0, Lcom/oplus/camera/t/h;->j:F

    invoke-direct {p0, p1, p2, v5, v7}, Lcom/oplus/camera/t/h;->a(FFFF)I

    move-result p1

    .line 335
    invoke-direct {p0, p1, v2, v3}, Lcom/oplus/camera/t/h;->a(IFF)I

    move-result p1

    .line 336
    iget-object p2, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    invoke-interface {p2, p1}, Lcom/oplus/camera/t/h$b;->a(I)V

    .line 340
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lcom/oplus/camera/t/h;->o:Z

    if-nez p2, :cond_8

    .line 341
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->o:Z

    .line 342
    invoke-interface {p1}, Lcom/oplus/camera/t/h$b;->e()V

    :cond_8
    move v3, v4

    move v2, v6

    goto :goto_3

    .line 345
    :cond_9
    iput-boolean v1, p0, Lcom/oplus/camera/t/h;->o:Z

    const/4 v0, -0x1

    .line 346
    iput v0, p0, Lcom/oplus/camera/t/h;->h:I

    .line 348
    iget-object v0, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz v0, :cond_a

    .line 349
    iget v4, p0, Lcom/oplus/camera/t/h;->i:F

    iget v5, p0, Lcom/oplus/camera/t/h;->j:F

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/oplus/camera/t/h;->a(FFFF)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/oplus/camera/t/h$b;->a(I)V

    .line 354
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/t/h$a;->setX(F)V

    .line 355
    iget-object p0, p0, Lcom/oplus/camera/t/h;->t:Lcom/oplus/camera/t/h$a;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/t/h$a;->setY(F)V

    goto :goto_4

    .line 362
    :cond_b
    iget-boolean p1, p0, Lcom/oplus/camera/t/h;->r:Z

    if-eqz p1, :cond_c

    .line 363
    invoke-direct {p0}, Lcom/oplus/camera/t/h;->j()V

    .line 366
    :cond_c
    iget-boolean p1, p0, Lcom/oplus/camera/t/h;->p:Z

    if-eqz p1, :cond_e

    .line 367
    iget-object p1, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    if-eqz p1, :cond_d

    .line 368
    invoke-interface {p1}, Lcom/oplus/camera/t/h$b;->d()V

    .line 371
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->b()V

    :cond_e
    :goto_4
    return v1

    .line 282
    :cond_f
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->q:Z

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/h;->k:F

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/h;->l:F

    .line 285
    iget-object p1, p0, Lcom/oplus/camera/t/h;->s:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setPressed(Z)V

    .line 286
    iput-boolean v0, p0, Lcom/oplus/camera/t/h;->r:Z

    .line 287
    invoke-virtual {p0, p2}, Lcom/oplus/camera/t/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public setTrackListener(Lcom/oplus/camera/t/h$b;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/oplus/camera/t/h;->v:Lcom/oplus/camera/t/h$b;

    return-void
.end method
