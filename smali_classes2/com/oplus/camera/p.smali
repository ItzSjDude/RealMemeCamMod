.class public Lcom/oplus/camera/p;
.super Ljava/lang/Object;
.source "HistogramProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/p$a;,
        Lcom/oplus/camera/p$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/res/Resources;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/oplus/camera/p$a;

.field private h:Landroid/animation/Animator;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/oplus/camera/ui/m;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/ValueAnimator;

.field private final m:Ljava/lang/Object;

.field private n:Landroid/renderscript/RenderScript;

.field private o:Landroid/content/Context;

.field private p:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private q:Landroid/renderscript/Allocation;

.field private r:Landroid/renderscript/Allocation;

.field private s:[B

.field private t:[F

.field private u:[F

.field private v:[F

.field private w:[F

.field private x:Lcom/oplus/camera/jni/FormatConverter;

.field private y:Landroid/os/Handler;

.field private z:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/oplus/camera/p$a;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/oplus/camera/p;->a:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/p;->b:I

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/p;->c:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/p;->e:Landroid/content/res/Resources;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/p;->j:Lcom/oplus/camera/ui/m;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/p;->m:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/p;->o:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/p;->p:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/p;->s:[B

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/p;->t:[F

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/p;->u:[F

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/p;->v:[F

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/p;->w:[F

    .line 61
    new-instance v1, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {v1}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/p;->x:Lcom/oplus/camera/jni/FormatConverter;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    iput-object p1, p0, Lcom/oplus/camera/p;->o:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/p;->e:Landroid/content/res/Resources;

    .line 68
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    .line 69
    iput-object p3, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    return-void
.end method

.method public static a(II)Landroid/util/Size;
    .locals 1

    .line 450
    div-int/lit8 p0, p0, 0x3

    .line 451
    div-int/lit8 p1, p1, 0x3

    .line 453
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 457
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 461
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/p;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget v0, v0, Lcom/oplus/camera/p$a;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x14

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-nez p2, :cond_1

    .line 81
    iget-object p2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p2, p2, Lcom/oplus/camera/p$a;->b:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    if-nez p3, :cond_3

    const/4 p2, 0x1

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 86
    iget-object p2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p2, p2, Lcom/oplus/camera/p$a;->d:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p2, p2, Lcom/oplus/camera/p$a;->d:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 92
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p0, p0, Lcom/oplus/camera/p$a;->c:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/p;)Landroid/widget/FrameLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/p;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->m:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Lcom/oplus/camera/professional/u$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/p;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->p:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 266
    iget-boolean v0, p0, Lcom/oplus/camera/p;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/p;)Landroid/renderscript/Allocation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/p;)[B
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->s:[B

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/p;)[F
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->t:[F

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/p;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/p;->a:I

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/p;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/p;->b:I

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/p;)[F
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->u:[F

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/p;)[F
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->v:[F

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/p;)[F
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->w:[F

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/p;)Lcom/oplus/camera/jni/FormatConverter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->x:Lcom/oplus/camera/jni/FormatConverter;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/p;)Lcom/oplus/camera/ui/m;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->j:Lcom/oplus/camera/ui/m;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/p;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "HistogramProcessorManager"

    const-string v1, "updateHistogramLayout"

    .line 242
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/camera/p;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/p;->a:I

    .line 273
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/p;->b:I

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HistogramProcessorManager onOpen, mSizeHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/p;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSizeWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/p;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HistogramProcessorManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/oplus/camera/p;->m:Ljava/lang/Object;

    monitor-enter p1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/p;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/p;->p:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 281
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v1, p0, Lcom/oplus/camera/p;->b:I

    iget v2, p0, Lcom/oplus/camera/p;->a:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    .line 284
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v1, p0, Lcom/oplus/camera/p;->b:I

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/p;->a:I

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    .line 287
    iget v0, p0, Lcom/oplus/camera/p;->b:I

    iget v1, p0, Lcom/oplus/camera/p;->a:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/camera/p;->s:[B

    .line 288
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oplus/camera/p;->t:[F

    const/16 v0, 0x100

    .line 289
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/oplus/camera/p;->u:[F

    .line 290
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/oplus/camera/p;->v:[F

    .line 291
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/p;->w:[F

    .line 292
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object p1, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 295
    new-instance p1, Lcom/oplus/camera/p$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/p$b;-><init>(Lcom/oplus/camera/p;Lcom/oplus/camera/p$1;)V

    iput-object p1, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 299
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 292
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/p$a;Z)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;ZZ)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;ZZJ)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0, p2, p3}, Lcom/oplus/camera/p;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    iget v1, p1, Lcom/oplus/camera/p$a;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const-wide/16 v0, 0x15e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_3

    .line 175
    iget-object p2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p2, p2, Lcom/oplus/camera/p$a;->b:I

    .line 176
    iget-object v6, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    iget-object v7, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_2

    .line 179
    new-array v7, v5, [I

    aput v6, v7, v4

    aput p2, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    .line 180
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/p$1;

    invoke-direct {v6, p0}, Lcom/oplus/camera/p$1;-><init>(Lcom/oplus/camera/p;)V

    invoke-virtual {p2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 192
    :cond_2
    new-array v8, v5, [I

    aput v6, v8, v4

    aput p2, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 195
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_4

    .line 196
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 197
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 200
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    .line 201
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 202
    iput-object v2, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    .line 207
    iget-object p2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget p2, p2, Lcom/oplus/camera/p$a;->d:I

    .line 208
    iget-object p3, p0, Lcom/oplus/camera/p;->z:Landroid/widget/RelativeLayout$LayoutParams;

    iget p3, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 210
    iget-object v2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_5

    .line 211
    new-array v2, v5, [I

    aput p3, v2, v4

    aput p2, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    .line 212
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/oplus/camera/p$2;

    invoke-direct {p3, p0}, Lcom/oplus/camera/p$2;-><init>(Lcom/oplus/camera/p;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    .line 224
    :cond_5
    new-array v0, v5, [I

    aput p3, v0, v4

    aput p2, v0, v3

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 227
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_7

    .line 228
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 229
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 232
    :cond_6
    iget-object p2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_7

    .line 233
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 234
    iput-object v2, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    .line 238
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/professional/u$a;)V
    .locals 4

    const-string v0, "HistogramProcessorManager"

    const-string v1, "showHistogram"

    .line 115
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oplus/camera/p;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    const v1, 0x7f0803fd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/p;->e:Landroid/content/res/Resources;

    const v1, 0x7f070612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 124
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/p;->e:Landroid/content/res/Resources;

    const v2, 0x7f070614

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 126
    iget-object v1, p0, Lcom/oplus/camera/p;->e:Landroid/content/res/Resources;

    const v2, 0x7f070613

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/camera/p;->a(Landroid/widget/RelativeLayout$LayoutParams;ZZ)V

    .line 128
    iget-object v2, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v2, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/p;->j:Lcom/oplus/camera/ui/m;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/oplus/camera/ui/m;

    iget-object v2, p0, Lcom/oplus/camera/p;->o:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/p;->j:Lcom/oplus/camera/ui/m;

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/p;->j:Lcom/oplus/camera/ui/m;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/oplus/camera/p;->c:Z

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    iget v2, v2, Lcom/oplus/camera/p$a;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p1, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/oplus/camera/p;->c(Lcom/oplus/camera/professional/u$a;)V

    :cond_2
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/p;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    if-nez v1, :cond_0

    .line 380
    monitor-exit v0

    return-void

    .line 382
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-direct {p0}, Lcom/oplus/camera/p;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 385
    new-instance v1, Lcom/oplus/camera/p$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/p$3;-><init>(Lcom/oplus/camera/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 394
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    iget-object p1, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object p0, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 382
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(Lcom/oplus/camera/professional/u$a;)V
    .locals 2

    const-string v0, "HistogramProcessorManager"

    const-string v1, "stopAndHideHistogram"

    .line 304
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 308
    iput-object v1, p0, Lcom/oplus/camera/p;->k:Landroid/animation/ValueAnimator;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 313
    iput-object v1, p0, Lcom/oplus/camera/p;->l:Landroid/animation/ValueAnimator;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/p;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 318
    invoke-direct {p0, p1}, Lcom/oplus/camera/p;->c(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lcom/oplus/camera/p;->c:Z

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 327
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    if-eqz p0, :cond_5

    .line 331
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public b()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/oplus/camera/p;->c:Z

    return p0
.end method

.method public c()V
    .locals 3

    const-string v0, "HistogramProcessorManager"

    const-string v1, "HistogramProcessorManager onClose"

    .line 336
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p;->b(Lcom/oplus/camera/professional/u$a;)V

    .line 340
    iget-object v1, p0, Lcom/oplus/camera/p;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    if-nez v2, :cond_0

    .line 342
    monitor-exit v1

    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 353
    :cond_2
    iput-object v0, p0, Lcom/oplus/camera/p;->r:Landroid/renderscript/Allocation;

    .line 354
    iput-object v0, p0, Lcom/oplus/camera/p;->q:Landroid/renderscript/Allocation;

    .line 356
    iget-object v2, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 358
    iput-object v0, p0, Lcom/oplus/camera/p;->n:Landroid/renderscript/RenderScript;

    .line 361
    :cond_3
    iput-object v0, p0, Lcom/oplus/camera/p;->s:[B

    .line 362
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iput-object v0, p0, Lcom/oplus/camera/p;->t:[F

    .line 365
    iput-object v0, p0, Lcom/oplus/camera/p;->u:[F

    .line 366
    iput-object v0, p0, Lcom/oplus/camera/p;->w:[F

    .line 367
    iput-object v0, p0, Lcom/oplus/camera/p;->v:[F

    .line 368
    iput-object v0, p0, Lcom/oplus/camera/p;->y:Landroid/os/Handler;

    .line 369
    iput-object v0, p0, Lcom/oplus/camera/p;->d:Landroid/os/Handler;

    .line 371
    iget-object v1, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 372
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 373
    iput-object v0, p0, Lcom/oplus/camera/p;->h:Landroid/animation/Animator;

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 362
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/oplus/camera/p;->g:Lcom/oplus/camera/p$a;

    if-eqz p0, :cond_1

    .line 403
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070523

    .line 404
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0707b3

    .line 405
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/oplus/camera/p$a;->c:I

    :cond_1
    return-void
.end method
