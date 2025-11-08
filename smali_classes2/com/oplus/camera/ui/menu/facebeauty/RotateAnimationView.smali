.class public Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;
.super Landroid/widget/ImageView;
.source "RotateAnimationView.java"

# interfaces
.implements Lcom/oplus/camera/ui/a$a;
.implements Lcom/oplus/camera/ui/inverse/a;
.implements Lcom/oplus/camera/ui/n;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field private final k:Landroid/view/animation/PathInterpolator;

.field private final l:Landroid/animation/ArgbEvaluator;

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Z

.field private u:Landroid/animation/ValueAnimator;

.field private v:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->k:Landroid/view/animation/PathInterpolator;

    .line 34
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->l:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    .line 44
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->g:J

    .line 46
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->h:Z

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->i:Z

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    .line 50
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->o:Z

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->p:I

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->q:I

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->r:I

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    .line 59
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    .line 66
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->k:Landroid/view/animation/PathInterpolator;

    .line 34
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->l:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d:Z

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    .line 44
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->g:J

    .line 46
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->h:Z

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->i:Z

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    .line 50
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->o:Z

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->p:I

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->q:I

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->r:I

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    .line 59
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    .line 76
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 p3, 0x0

    const v0, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->k:Landroid/view/animation/PathInterpolator;

    .line 34
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->l:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d:Z

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    .line 44
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->g:J

    .line 46
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->h:Z

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->i:Z

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    .line 50
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    .line 51
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->o:Z

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->p:I

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->q:I

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->r:I

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    .line 59
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    .line 81
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    .line 71
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    return-void
.end method

.method private c()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    .line 269
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->k:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$2;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->l:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$3;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->k:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$4;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 87
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    goto :goto_0

    .line 89
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    :goto_0
    if-ltz p1, :cond_1

    .line 93
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 94
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 96
    :goto_1
    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    if-ne p1, p2, :cond_2

    return-void

    .line 100
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    .line 102
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->e:Z

    if-eqz p1, :cond_6

    .line 103
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b:I

    .line 104
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    .line 106
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    .line 112
    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d:Z

    .line 113
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->g:J

    goto :goto_3

    .line 115
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 118
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->invalidate()V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->o:Z

    .line 223
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->p:I

    .line 224
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->postInvalidate()V

    return-void
.end method

.method public a(ZII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 334
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    .line 335
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060049

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 341
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    .line 344
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 345
    :goto_1
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    .line 346
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->q:I

    .line 347
    iput p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->r:I

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->invalidate()V

    :cond_3
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 p1, p1, 0x3

    .line 190
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 192
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 193
    new-array v0, v2, [I

    const v3, 0x7f040583

    aput v3, v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->mergeDrawableStates([I[I)[I

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->i:Z

    if-eqz v0, :cond_1

    .line 197
    new-array v0, v2, [I

    const v3, 0x7f040582

    aput v3, v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->mergeDrawableStates([I[I)[I

    .line 200
    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    if-eqz p0, :cond_2

    .line 201
    new-array p0, v2, [I

    const v0, 0x7f040586

    aput v0, p0, v1

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->v:Landroid/animation/ValueAnimator;

    .line 325
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->u:Landroid/animation/ValueAnimator;

    .line 326
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;)V

    .line 328
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 130
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 131
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_a

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 137
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->o:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v1

    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->p:I

    invoke-virtual {v1, p0, p1, v4}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Landroid/graphics/Canvas;I)V

    .line 141
    :cond_2
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    if-eq v1, v4, :cond_6

    .line 142
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 144
    iget-wide v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 145
    iget-wide v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->f:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 146
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->b:I

    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_4

    .line 147
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    .line 148
    :cond_4
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 149
    :goto_1
    iput v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 150
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->invalidate()V

    goto :goto_2

    .line 152
    :cond_5
    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c:I

    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    .line 156
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getPaddingLeft()I

    move-result v1

    .line 157
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getPaddingTop()I

    move-result v4

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getPaddingRight()I

    move-result v5

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getPaddingBottom()I

    move-result v6

    .line 160
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 161
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 165
    iget-boolean v8, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->t:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    if-eqz v8, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070a39

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v9, v7, v8

    .line 167
    iget v10, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->q:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 168
    iget v10, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->r:I

    add-int/2addr v10, v8

    int-to-float v10, v10

    .line 170
    iget-object v11, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->s:Landroid/graphics/Paint;

    if-eqz v11, :cond_7

    int-to-float v8, v8

    .line 171
    invoke-virtual {p1, v9, v10, v8, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_9

    if-lt v7, v2, :cond_8

    if-ge v5, v3, :cond_9

    :cond_8
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 177
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v8, v11

    mul-float/2addr v10, v11

    .line 178
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_9
    int-to-float v1, v1

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v1, v7

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 181
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v2

    int-to-float p0, p0

    div-float/2addr p0, v8

    neg-int v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 183
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public setHighLight(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->i:Z

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->refreshDrawableState()V

    .line 210
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->invalidate()V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->h:Z

    .line 216
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->refreshDrawableState()V

    .line 217
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->invalidate()V

    return-void
.end method

.method public setLightBackground(Z)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightBackground, isLightBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotateAnimationView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->j:Z

    .line 242
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->refreshDrawableState()V

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->postInvalidate()V

    return-void
.end method

.method public setNormalBackground(Z)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setLightBackground(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelected, isSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotateAnimationView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->isSelected()Z

    move-result v0

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->d()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c()V

    :cond_1
    :goto_0
    return-void
.end method
