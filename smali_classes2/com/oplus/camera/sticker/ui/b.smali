.class public Lcom/oplus/camera/sticker/ui/b;
.super Ljava/lang/Object;
.source "GridItemViewTag.java"


# instance fields
.field public a:Lcom/oplus/camera/ui/LoaddingProgress;

.field public b:Lcom/oplus/camera/ui/RotateImageView;

.field public c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Landroid/animation/Animator;

.field private f:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/LoaddingProgress;Lcom/oplus/camera/ui/RotateImageView;Landroid/widget/ImageView;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->a:Lcom/oplus/camera/ui/LoaddingProgress;

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/oplus/camera/sticker/ui/b;->d:Z

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/b;->a:Lcom/oplus/camera/ui/LoaddingProgress;

    .line 26
    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/b;->b:Lcom/oplus/camera/ui/RotateImageView;

    .line 27
    iput-object p3, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected a(ZZ)V
    .locals 11

    .line 31
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/sticker/ui/b;->d:Z

    if-ne v1, p1, :cond_1

    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    const-wide/16 v2, 0xfa

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "alpha"

    const/16 v7, 0xff

    const/4 v8, 0x0

    if-nez v1, :cond_2

    .line 40
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    new-array v9, v5, [Ljava/lang/Object;

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 40
    invoke-static {v0, v6, v1, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    sget-object v1, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    new-instance v1, Lcom/oplus/camera/sticker/ui/b$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/sticker/ui/b$1;-><init>(Lcom/oplus/camera/sticker/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 55
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    if-nez v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    .line 56
    invoke-static {v0, v6, v1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    .line 58
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 59
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    sget-object v1, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    new-instance v1, Lcom/oplus/camera/sticker/ui/b$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/sticker/ui/b$2;-><init>(Lcom/oplus/camera/sticker/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    .line 78
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/b;->e:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_3

    .line 80
    :cond_6
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/b;->f:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_3

    .line 83
    :cond_7
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 84
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v8, 0x4

    :goto_2
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_3
    iput-boolean p1, p0, Lcom/oplus/camera/sticker/ui/b;->d:Z

    return-void
.end method
