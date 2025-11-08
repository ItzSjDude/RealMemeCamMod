.class public Lcom/oplus/camera/ui/menu/facebeauty/e;
.super Lcom/oplus/camera/ui/menu/facebeauty/d;
.source "FaceBeautyCommonMenu.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/facebeauty/a;


# instance fields
.field private A:I

.field private B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

.field private C:Landroid/widget/RelativeLayout$LayoutParams;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/OplusNumSeekBar$a;Lcom/oplus/camera/ui/menu/facebeauty/d$a;II)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->A:I

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 32
    iput p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->w:I

    .line 33
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->y:Landroid/app/Activity;

    .line 34
    iput p5, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->x:I

    .line 35
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    .line 36
    invoke-direct {p0, p4, p5}, Lcom/oplus/camera/ui/menu/facebeauty/e;->c(II)I

    move-result p3

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-virtual {p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    .line 38
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    const p4, 0x7f090389

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->a:Landroid/widget/LinearLayout;

    .line 39
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(Landroid/app/Activity;)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->A:I

    .line 40
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    const p4, 0x7f090170

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 41
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p3, p2}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setOnProgressChangedListener(Lcom/oplus/camera/ui/OplusNumSeekBar$a;)V

    .line 42
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setFrontStyle(Z)V

    .line 43
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0706a5

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setmThumbTextShadowBlur(I)V

    .line 44
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060069

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setmThumbTextShadowColor(I)V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070494

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->v:I

    return-void
.end method

.method private c(II)I
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    const/16 p0, 0x10e

    if-ne p0, p2, :cond_0

    const p0, 0x7f0c00c6

    return p0

    :cond_0
    const p0, 0x7f0c00c5

    return p0

    :cond_1
    const p0, 0x7f0c00c4

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)I
    .locals 1

    .line 62
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->w:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070548

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049c

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->e:I

    .line 147
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->m(Z)V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->n:Lcom/oplus/camera/ui/preview/a/f;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->n:Lcom/oplus/camera/ui/preview/a/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/f;->a()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v0, 0x0

    const v1, -0x186a0

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    const/16 v0, 0x64

    .line 78
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->d(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->c(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->postInvalidate()V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->h:Z

    .line 109
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->j:Z

    .line 111
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/e;->c()V

    return-void
.end method

.method public b(II)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 87
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0xc

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    .line 90
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->y:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709dc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-direct {p1, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->y:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709df

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->A:I

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->C:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method protected e(Z)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFaceBeauty, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyCommonMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->l(Z)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showFaceBeauty, isThumbOnDragging"

    .line 121
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b()V

    :cond_0
    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->e:I

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->q:Landroid/animation/Animator;

    return-void
.end method

.method protected f(Z)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFaceBeauty, needAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyCommonMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->b(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->q:Landroid/animation/Animator;

    return-void
.end method

.method protected g(Z)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFaceBeauty, needAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyCommonMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/e;->c(Landroid/view/View;Z)Landroid/animation/Animator;

    return-void
.end method

.method public s()Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->z:Landroid/view/View;

    return-object p0
.end method

.method public t()Lcom/oplus/camera/ui/OplusNumAISeekBar;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/e;->B:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    return-object p0
.end method
