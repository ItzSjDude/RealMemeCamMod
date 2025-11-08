.class public Lcom/oplus/camera/ui/modepanel/m;
.super Ljava/lang/Object;
.source "ModePanelUIControl.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:I

.field private d:Landroid/view/animation/PathInterpolator;

.field private e:Landroid/view/animation/PathInterpolator;

.field private f:Lcom/oplus/camera/ui/modepanel/n;

.field private g:Lcom/oplus/camera/ui/modepanel/n$a;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->a:Landroid/app/Activity;

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/m;->c:I

    .line 19
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/modepanel/m;->d:Landroid/view/animation/PathInterpolator;

    .line 20
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/modepanel/m;->e:Landroid/view/animation/PathInterpolator;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    .line 24
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/m;->h:I

    .line 25
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/m;->i:I

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/m;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/m;->b:Landroid/view/ViewGroup;

    .line 30
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/m;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705f1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/m;->c:I

    return-void
.end method

.method private f()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oplus/camera/ui/modepanel/n;

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/m;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/m;->b:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/n;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/m;->h:I

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/m;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/n;->a(II)V

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/modepanel/n;->a(Lcom/oplus/camera/ui/modepanel/n$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/n;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public a(II)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/m;->h:I

    .line 58
    iput p2, p0, Lcom/oplus/camera/ui/modepanel/m;->i:I

    .line 60
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p2, :cond_0

    .line 61
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/m;->i:I

    invoke-virtual {p2, p1, p0}, Lcom/oplus/camera/ui/modepanel/n;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/m;->a(Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;Z)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/m;->f()V

    .line 84
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/ui/modepanel/n;->a(ILandroid/view/animation/Animation;Z)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/n$a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/m;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/m;->f()V

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/m;->f()V

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/ui/modepanel/n;->a(IZI)V

    return-void
.end method

.method public b()V
    .locals 7

    .line 88
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/m;->f()V

    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/m;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xfa

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x96

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 95
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/oplus/camera/ui/modepanel/m;->c:I

    int-to-float v5, v5

    invoke-direct {v4, v1, v1, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 96
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/m;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v5, 0x190

    .line 97
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 98
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 100
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/camera/ui/modepanel/n;->a(ILandroid/view/animation/Animation;Z)V

    return-void
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, p1, v1}, Lcom/oplus/camera/ui/modepanel/n;->a(ILandroid/view/animation/Animation;Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->b(Z)V

    :cond_0
    return-void
.end method

.method public b(ZI)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 109
    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/ui/modepanel/n;->a(IZI)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 120
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 121
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/m;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xfa

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 124
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/oplus/camera/ui/modepanel/m;->c:I

    int-to-float v3, v3

    invoke-direct {v2, v1, v1, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/m;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x190

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 128
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/n;->a(ILandroid/view/animation/Animation;Z)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/n;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/m;->f:Lcom/oplus/camera/ui/modepanel/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/n;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
