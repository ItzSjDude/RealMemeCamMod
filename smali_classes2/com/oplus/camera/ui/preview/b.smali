.class public Lcom/oplus/camera/ui/preview/b;
.super Ljava/lang/Object;
.source "AiHintUI.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/oplus/camera/ui/preview/AiTextHintView;

.field private d:Lcom/oplus/camera/ui/CameraUIListener;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/oplus/camera/ui/CameraUIListener;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->d:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/oplus/camera/ui/preview/b;->e:I

    .line 23
    iput v0, p0, Lcom/oplus/camera/ui/preview/b;->f:I

    .line 24
    iput v0, p0, Lcom/oplus/camera/ui/preview/b;->g:I

    .line 25
    iput v0, p0, Lcom/oplus/camera/ui/preview/b;->h:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/preview/b;->i:I

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    .line 30
    iput p2, p0, Lcom/oplus/camera/ui/preview/b;->i:I

    .line 31
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/b;->d:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method private e()V
    .locals 8

    .line 35
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    .line 37
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 42
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v3

    .line 43
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v4

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-nez v1, :cond_1

    const v1, 0x7f0c001c

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/AiTextHintView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    iget v2, p0, Lcom/oplus/camera/ui/preview/b;->e:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/oplus/camera/ui/preview/b;->i:I

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/b;->d:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(IIIIILcom/oplus/camera/ui/CameraUIListener;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/oplus/camera/ui/preview/b;->i:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/oplus/camera/ui/preview/b;->i:I

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 68
    iput p1, p0, Lcom/oplus/camera/ui/preview/b;->e:I

    .line 69
    iput p2, p0, Lcom/oplus/camera/ui/preview/b;->g:I

    .line 70
    iput p3, p0, Lcom/oplus/camera/ui/preview/b;->h:I

    .line 71
    iput p4, p0, Lcom/oplus/camera/ui/preview/b;->f:I

    .line 72
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/b;->f()V

    .line 73
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/b;->e()V

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-eqz p1, :cond_0

    .line 76
    iget p4, p0, Lcom/oplus/camera/ui/preview/b;->e:I

    iget v0, p0, Lcom/oplus/camera/ui/preview/b;->f:I

    invoke-virtual {p1, p4, v0, p2, p3}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(IIII)V

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->clearAnimation()V

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    .line 79
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->clearAnimation()V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/b;->f()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 109
    iput p1, p0, Lcom/oplus/camera/ui/preview/b;->f:I

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/b;->a(Z)V

    .line 113
    iget v0, p0, Lcom/oplus/camera/ui/preview/b;->e:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/b;->g:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/b;->h:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oplus/camera/ui/preview/b;->a(IIII)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/b;->c:Lcom/oplus/camera/ui/preview/AiTextHintView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 1

    .line 118
    iget p0, p0, Lcom/oplus/camera/ui/preview/b;->g:I

    const v0, 0x7f100091

    if-eq v0, p0, :cond_1

    const v0, 0x7f100094

    if-eq v0, p0, :cond_1

    const v0, 0x7f100090

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/b;->a:Landroid/app/Activity;

    return-void
.end method
