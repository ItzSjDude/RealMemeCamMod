.class public Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyItemFrame.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private final a:Landroid/view/animation/PathInterpolator;

.field private b:Z

.field private c:Z

.field private d:Landroid/animation/ObjectAnimator;

.field private e:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ea8f5c3    # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a:Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->b:Z

    .line 23
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->c:Z

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    .line 25
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    .line 37
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "FaceBeautyItemFrame"

    const-string v1, "executeShowAnimator"

    .line 99
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 104
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;Z)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "FaceBeautyItemFrame"

    const-string v1, "executeHideAnimator"

    .line 113
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 118
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public a(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->setSelected(Z)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0xff

    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 136
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 137
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 46
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->b:Z

    if-eqz p0, :cond_0

    .line 49
    new-array p0, v0, [I

    const/4 v0, 0x0

    const v1, 0x7f040583

    aput v1, p0, v0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    :cond_1
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    .line 154
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    .line 155
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 157
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->b:Z

    .line 58
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->refreshDrawableState()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->c:Z

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->c:Z

    if-eq v0, p1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 91
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->a()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyItemFrame;->b()V

    :cond_3
    :goto_0
    return-void
.end method
