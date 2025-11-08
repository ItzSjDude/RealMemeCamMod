.class public Lcom/oplus/camera/ui/modepanel/e;
.super Ljava/lang/Object;
.source "FloatViewContainer.java"


# instance fields
.field private a:Lcom/oplus/camera/ui/modepanel/d;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:F

.field private e:F

.field private f:Lcom/oplus/camera/screen/g;

.field private g:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/screen/g;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->b:Ljava/lang/ref/WeakReference;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/e;->d:F

    .line 31
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/e;->e:F

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/e;->g:I

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    return-void
.end method

.method private a(IIILjava/lang/String;ZI)Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090392

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 121
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v6, p4, v4}, Lcom/oplus/camera/ui/modepanel/d;->a(Ljava/lang/String;I)F

    move-result v6

    float-to-int v6, v6

    .line 123
    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 124
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Lcom/oplus/camera/ui/modepanel/d;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/oplus/camera/ui/modepanel/d;->setTag(ILjava/lang/Object;)V

    :goto_0
    const v2, 0x800033

    .line 130
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {v5, p5}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    const/4 v2, 0x0

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {p1, p4, v3}, Lcom/oplus/camera/ui/modepanel/d;->a(Ljava/lang/String;I)F

    move-result p1

    .line 140
    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result p4

    mul-int/2addr p4, v3

    int-to-float p4, p4

    add-float/2addr p1, p4

    .line 141
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    .line 142
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result p6

    invoke-static {}, Lcom/oplus/camera/k;->a()I

    move-result v3

    sub-int/2addr p6, v3

    int-to-float p6, p6

    div-float/2addr p6, p1

    int-to-float p1, p2

    sub-float/2addr p1, p4

    float-to-int p2, p1

    int-to-float p1, p3

    sub-float/2addr p1, p6

    float-to-int p3, p1

    goto :goto_1

    :cond_2
    move p2, v2

    move p3, p2

    .line 147
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0704b7

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p3, p1

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0704b6

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/oplus/camera/screen/b/a;->a(IIII)[I

    move-result-object p0

    .line 151
    aget p1, p0, v2

    .line 152
    aget p0, p0, v4

    if-eqz p5, :cond_3

    .line 155
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {v5, p1, p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    return-object v5
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->b:Ljava/lang/ref/WeakReference;

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 95
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private i()Landroid/widget/FrameLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->b:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private j()Landroid/widget/FrameLayout;
    .locals 3

    .line 165
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "FloatViewContainer"

    const-string v2, "getActivityRoot error."

    .line 172
    invoke-static {v1, v2, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getModeId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public a(I)V
    .locals 3

    .line 248
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/e;->g:I

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz v0, :cond_0

    .line 251
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/e;->g:I

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    invoke-virtual {v2}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/d;->a(II)V

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/d;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setVisibility(I)V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/oplus/camera/k;->a(Landroid/content/Context;I)V

    return-void
.end method

.method protected a(Landroid/graphics/Rect;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/modepanel/d;->a(Landroid/graphics/Rect;I)V

    return-void

    .line 239
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adsorpt, params invalid, targetRect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mFloatView: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FloatViewContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/e;->d:F

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/e;->e:F

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 210
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/e;->d:F

    sub-float v2, v0, v1

    .line 211
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/e;->e:F

    sub-float v1, p1, v1

    .line 212
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/e;->d:F

    .line 213
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/e;->e:F

    goto :goto_0

    :cond_1
    move v1, v2

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_2

    .line 217
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/modepanel/d;->a(FF)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/oplus/camera/ui/modepanel/k;IIII)V
    .locals 9

    .line 45
    monitor-enter p0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v4, p2, :cond_0

    if-eq v3, p2, :cond_0

    :try_start_0
    const-string v1, "FloatViewContainer"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add, can\'t add float view, invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->j()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/modepanel/e;->a(Landroid/widget/FrameLayout;)V

    .line 54
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v5

    if-nez v5, :cond_1

    .line 55
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz v5, :cond_2

    .line 59
    monitor-exit p0

    return-void

    .line 62
    :cond_2
    new-instance v5, Lcom/oplus/camera/ui/modepanel/d;

    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/oplus/camera/ui/modepanel/d;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    .line 63
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/e;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v6

    .line 64
    :goto_0
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    iget-object v8, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    invoke-virtual {v8}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Lcom/oplus/camera/ui/modepanel/d;->setRotation(F)V

    .line 66
    new-array v3, v3, [I

    aput p3, v3, v6

    aput p4, v3, v4

    .line 67
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    invoke-virtual {v3}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/oplus/camera/screen/b/a;->a(II)[I

    move-result-object v1

    .line 68
    iget-object v8, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move v6, v7

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/modepanel/e;->a(IIILjava/lang/String;ZI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/oplus/camera/ui/modepanel/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/e;->g:I

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/e;->f:Lcom/oplus/camera/screen/g;

    invoke-virtual {v3}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ui/modepanel/d;->a(II)V

    .line 71
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/modepanel/d;->a(Lcom/oplus/camera/ui/modepanel/k;I)V

    .line 72
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v1, p2}, Lcom/oplus/camera/ui/modepanel/d;->a(I)V

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setVisibility(I)V

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/e;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-static {v1}, Landroidx/core/h/v;->D(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 87
    iput-object v2, p0, Lcom/oplus/camera/ui/modepanel/e;->b:Ljava/lang/ref/WeakReference;

    .line 90
    :cond_1
    iput-object v2, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    return-void
.end method

.method protected c()Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->isShown()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected d()Z
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected e()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->a()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->b()V

    :cond_0
    return-void
.end method

.method protected g()Landroid/graphics/Rect;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getFloatLocation()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected h()F
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/e;->a:Lcom/oplus/camera/ui/modepanel/d;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getTextTranslationY()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
