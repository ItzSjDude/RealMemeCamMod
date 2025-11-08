.class public Lcom/oplus/camera/ui/control/d;
.super Ljava/lang/Object;
.source "RecordingStopCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/d$b;,
        Lcom/oplus/camera/ui/control/d$a;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/Typeface;


# instance fields
.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcom/oplus/camera/ui/control/d$b;

.field private l:Lcom/oplus/camera/ui/control/d$a;

.field private m:Lcom/oplus/camera/ui/RotableTextView;

.field private n:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->b:F

    .line 33
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->c:F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->d:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->e:I

    .line 36
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->f:I

    .line 37
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->g:I

    .line 38
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/d;->h:Z

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/d;->i:Z

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->j:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->k:Lcom/oplus/camera/ui/control/d$b;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->n:Landroid/animation/ValueAnimator;

    .line 47
    new-instance v1, Lcom/oplus/camera/ui/control/d$a;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/control/d$a;-><init>(Lcom/oplus/camera/ui/control/d;Lcom/oplus/camera/ui/control/d$1;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/d;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/oplus/camera/ui/control/d;->j:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/d;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/oplus/camera/ui/control/d;->g:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/d;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/ui/control/d;->n:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f090193

    .line 137
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c33

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c32

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c35

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/d;->b:F

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c36

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/d;->c:F

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c34

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/camera/ui/control/d;->d:I

    .line 144
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/d;->e:I

    .line 145
    new-instance v5, Lcom/oplus/camera/ui/RotableTextView;

    invoke-direct {v5, p1}, Lcom/oplus/camera/ui/RotableTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    .line 146
    iget-object v5, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/oplus/camera/ui/RotableTextView;->setShadowLayer(FFFI)V

    .line 148
    sget-object v2, Lcom/oplus/camera/ui/control/d;->a:Landroid/graphics/Typeface;

    if-nez v2, :cond_1

    .line 149
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/oplus/camera/ui/control/d;->a:Landroid/graphics/Typeface;

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    sget-object v2, Lcom/oplus/camera/ui/control/d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    iget v2, p0, Lcom/oplus/camera/ui/control/d;->b:F

    invoke-virtual {p1, v6, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTextColor(I)V

    .line 155
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/d;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/d;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/d;I)I
    .locals 1

    .line 23
    iget v0, p0, Lcom/oplus/camera/ui/control/d;->j:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/ui/control/d;->j:I

    return v0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/control/d$b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d;->k:Lcom/oplus/camera/ui/control/d$b;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/d;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/oplus/camera/ui/control/d;->g:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/d;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d;->n:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    .line 161
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    .line 163
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d;->n:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 165
    iput-object v0, p0, Lcom/oplus/camera/ui/control/d;->n:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/control/d;->f:I

    if-eq v0, p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextOrientation, mLastOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingStopCountDownTimer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 192
    iput p1, p0, Lcom/oplus/camera/ui/control/d;->f:I

    :cond_0
    return-void
.end method

.method public a(ILandroid/app/Activity;I)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimer, time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingStopCountDownTimer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 p1, p1, 0x3e8

    .line 172
    iput p1, p0, Lcom/oplus/camera/ui/control/d;->j:I

    .line 173
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/control/d;->a(Landroid/app/Activity;)V

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 176
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p1, p3, p2}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 178
    iput p3, p0, Lcom/oplus/camera/ui/control/d;->f:I

    :cond_0
    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/d;->h:Z

    .line 182
    iget-object p2, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/d$a;->removeMessages(I)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/d$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/d$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/d$b;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/oplus/camera/ui/control/d;->k:Lcom/oplus/camera/ui/control/d$b;

    return-void
.end method

.method public b()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/d;->h:Z

    return p0
.end method

.method public c()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d;->l:Lcom/oplus/camera/ui/control/d$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/d$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/d;->h:Z

    .line 208
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 210
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d;->m:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 213
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/d;->i:Z

    .line 214
    iput v0, p0, Lcom/oplus/camera/ui/control/d;->j:I

    return-void
.end method
