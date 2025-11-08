.class public Lcom/oplus/camera/filmvideomode/q;
.super Lcom/oplus/camera/filmvideomode/a;
.source "FilmUIControlV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/q$a;
    }
.end annotation


# instance fields
.field protected s:Landroid/widget/RelativeLayout;

.field protected t:Lcom/oplus/camera/filmvideomode/o;

.field protected u:Lcom/oplus/camera/filmvideomode/m;

.field protected v:Landroid/view/GestureDetector;

.field protected w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

.field protected x:Landroid/animation/ObjectAnimator;

.field protected y:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->t:Lcom/oplus/camera/filmvideomode/o;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->v:Landroid/view/GestureDetector;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->f:Lcom/oplus/camera/e/d;

    .line 58
    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    .line 59
    invoke-interface {p3}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    const p2, 0x7f0803da

    .line 60
    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->k:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    const p2, 0x7f0903b4

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 62
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    const p2, 0x7f090338

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/MainShutterButton;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 63
    iput-object p4, p0, Lcom/oplus/camera/filmvideomode/q;->n:Landroid/view/ViewGroup;

    .line 64
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    const p2, 0x7f090193

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 65
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/oplus/camera/filmvideomode/q$a;

    invoke-direct {p3, p0}, Lcom/oplus/camera/filmvideomode/q$a;-><init>(Lcom/oplus/camera/filmvideomode/q;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->v:Landroid/view/GestureDetector;

    const-string p1, "com.oplus.feature.landscape.camera.sensor.support"

    .line 67
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 68
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707bb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 71
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070a50

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private C()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    .line 376
    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private D()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 617
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 620
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/filmvideomode/q$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/filmvideomode/q$5;-><init>(Lcom/oplus/camera/filmvideomode/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/q;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 606
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/oplus/camera/filmvideomode/n;

    invoke-direct {v2}, Lcom/oplus/camera/filmvideomode/n;-><init>()V

    const v3, 0x7f10014b

    .line 263
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    .line 264
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/filmvideomode/q$2;

    invoke-direct {v3, p0}, Lcom/oplus/camera/filmvideomode/q$2;-><init>(Lcom/oplus/camera/filmvideomode/q;)V

    .line 265
    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Lcom/oplus/camera/filmvideomode/n$a;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v2, Lcom/oplus/camera/filmvideomode/n;

    invoke-direct {v2}, Lcom/oplus/camera/filmvideomode/n;-><init>()V

    const v3, 0x7f1001f6

    .line 273
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/filmvideomode/q$3;

    invoke-direct {v3, p0}, Lcom/oplus/camera/filmvideomode/q$3;-><init>(Lcom/oplus/camera/filmvideomode/q;)V

    .line 275
    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/n;->a(Lcom/oplus/camera/filmvideomode/n$a;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lcom/oplus/camera/filmvideomode/n;

    invoke-direct {v2}, Lcom/oplus/camera/filmvideomode/n;-><init>()V

    const v3, 0x7f10037c

    .line 283
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/n;->a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/filmvideomode/q$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/filmvideomode/q$4;-><init>(Lcom/oplus/camera/filmvideomode/q;)V

    .line 285
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/n;->a(Lcom/oplus/camera/filmvideomode/n$a;)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Lcom/oplus/camera/filmvideomode/m;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/oplus/camera/filmvideomode/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1, v0}, Lcom/oplus/camera/filmvideomode/m;->a(Ljava/util/ArrayList;)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->t:Lcom/oplus/camera/filmvideomode/o;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/o;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected B()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_2

    .line 303
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    .line 762
    invoke-super {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 763
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->d()Z

    move-result v0

    const-string v1, "on"

    const-string v2, "off"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsHistogramOpen:Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsLog:Ljava/lang/String;

    .line 765
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsMovieHdr:Ljava/lang/String;

    return-object p1
.end method

.method public a()V
    .locals 6

    const-string v0, "FilmUIControlV2"

    const-string v1, "initMenuList"

    .line 210
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v3, 0x1

    .line 215
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/g;->b(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f080582

    .line 217
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f0804b8

    .line 218
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f0804aa

    .line 219
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->b(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080622

    .line 225
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080611

    .line 226
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oplus.feature.movie.mode.hdr.log.support"

    .line 228
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->g()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v5, 0x2

    .line 231
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->b(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f08052e

    .line 233
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f08052b

    .line 234
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->b()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v5, 0x3

    .line 238
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->b(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 239
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080536

    .line 240
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v5, 0x7f080535

    .line 241
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->f()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v5, 0x4

    .line 246
    invoke-virtual {v1, v5}, Lcom/oplus/camera/filmvideomode/g;->b(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f08062f

    .line 248
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f080630

    .line 249
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lcom/oplus/camera/filmvideomode/e;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-direct {v1, v0, v4, v3, v2}, Lcom/oplus/camera/filmvideomode/e;-><init>(Ljava/util/List;Landroid/content/SharedPreferences;ZZ)V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/f;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 395
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/q;->i(Z)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 401
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 402
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 403
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v0, "pref_film_video_eis_menu"

    .line 568
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->b(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "on"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->D()V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->v:Landroid/view/GestureDetector;

    if-eqz p0, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected b(IZ)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "funcKey_click"

    .line 802
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->buildEventId(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCameraId:I

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 809
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_mode_key"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCaptureMode:Ljava/lang/String;

    :cond_2
    const-string p0, "1"

    const-string v1, "2"

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, "38"

    .line 838
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v1

    .line 840
    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string p1, "57"

    .line 826
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move-object p0, v1

    .line 828
    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string p1, "69"

    .line 832
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move-object p0, v1

    .line 834
    :goto_2
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string p1, "26"

    .line 820
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    move-object p0, v1

    .line 822
    :goto_3
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string p1, "59"

    .line 814
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    move-object p0, v1

    .line 816
    :goto_4
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 847
    :goto_5
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->report()V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    const-string v0, "FilmUIControlV2"

    const-string v1, "showSubMenuPanelAnim"

    .line 169
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 172
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    .line 444
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 448
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    .line 449
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    .line 450
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 453
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 456
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/k;->a()Z

    move-result p2

    if-nez p2, :cond_c

    .line 457
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->B()Z

    move-result p2

    if-nez p2, :cond_c

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    if-nez p3, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    if-eqz p2, :cond_6

    .line 469
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/k;->c()Z

    move-result v2

    .line 470
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 472
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 473
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/k;->b()V

    goto :goto_3

    .line 475
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->i(Z)V

    .line 478
    :goto_3
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    .line 479
    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 480
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v2, p3, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    goto :goto_4

    .line 482
    :cond_5
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v2, p3, v3, v4}, Lcom/oplus/camera/filmvideomode/e;->b(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    goto :goto_4

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v2, p3}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    .line 489
    :goto_4
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->b()I

    move-result p3

    if-eq p3, v1, :cond_a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/4 v0, 0x3

    if-eq p3, v0, :cond_8

    const/4 v0, 0x4

    if-eq p3, v0, :cond_7

    goto :goto_5

    .line 503
    :cond_7
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->a(Lcom/oplus/camera/filmvideomode/g;)V

    goto :goto_5

    .line 499
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->d(Lcom/oplus/camera/filmvideomode/g;)V

    goto :goto_5

    .line 495
    :cond_9
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->b(Lcom/oplus/camera/filmvideomode/g;)V

    goto :goto_5

    .line 491
    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->c(Lcom/oplus/camera/filmvideomode/g;)V

    .line 507
    :goto_5
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    .line 508
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p3

    const-string v0, "pref_film_show_ui_default"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    :cond_b
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->b()I

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/filmvideomode/q;->b(IZ)V

    return-void

    :cond_c
    :goto_6
    const-string p0, "FilmUIControlV2"

    const-string p1, "onMenuItemClick is intercepted, return"

    .line 459
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    const-string v0, "pref_film_video_hdr"

    if-eqz p1, :cond_0

    .line 583
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "on"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 3

    const-string v0, "FilmUIControlV2"

    const-string v1, "hideSubMenuPanelAnim"

    .line 182
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 185
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/filmvideomode/q$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/filmvideomode/q$1;-><init>(Lcom/oplus/camera/filmvideomode/q;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->y:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected c(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->f(Z)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 864
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 865
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 854
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 855
    invoke-virtual {v0, p2}, Lcom/oplus/camera/filmvideomode/g;->d(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 856
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method protected d(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    const-string v0, "pref_film_video_log"

    if-eqz p1, :cond_0

    .line 649
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "on"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 873
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 874
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method protected f(Z)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/oplus/camera/filmvideomode/o;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/filmvideomode/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->t:Lcom/oplus/camera/filmvideomode/o;

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 85
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 87
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->t:Lcom/oplus/camera/filmvideomode/o;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 92
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07080a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 95
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 96
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->A()V

    .line 97
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 99
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->b(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->z()V

    return-void
.end method

.method protected g(Z)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->w:Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->h(Z)V

    return-void
.end method

.method protected h(Z)V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    const v1, 0x7f0903b4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 157
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x96

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x96

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    :cond_3
    return-void
.end method

.method protected i(Z)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/k;->b(Z)V

    .line 382
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/k;->d()V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 3

    .line 527
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 532
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 533
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "pref_film_show_ui_default"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 542
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 543
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 544
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->b()V

    .line 545
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v2, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected j(Z)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_film_mode_key"

    .line 551
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 554
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/filmvideomode/q;->a(ZI)V

    .line 555
    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/filmvideomode/q;->a(ZI)V

    .line 556
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "torch"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->D()V

    const-string p1, "3"

    .line 562
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/m;->a(I)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/n;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->E()V

    .line 694
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/q;->j(Z)V

    return-void
.end method

.method protected k(Z)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "grid"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const-string v1, "pref_film_video_guide_line"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "37"

    .line 593
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 700
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/m;->a(I)Lcom/oplus/camera/filmvideomode/n;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/n;->a()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->c()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/q;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/n;->a(Z)Lcom/oplus/camera/filmvideomode/n;

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->E()V

    :cond_1
    return-void
.end method

.method protected l(Z)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const-string v1, "pref_film_video_histogram"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "58"

    .line 600
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 7

    .line 724
    invoke-super {p0}, Lcom/oplus/camera/filmvideomode/a;->m()V

    .line 726
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 728
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 729
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 731
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 732
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 733
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 734
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v3, v2, v1, v2}, Lcom/oplus/camera/filmvideomode/e;->b(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/16 v3, 0x8

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0, v3, v6, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0, v3, v6, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 747
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 749
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0, v2, v6, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->s:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3, v6, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_5
    return-void
.end method

.method public n()V
    .locals 5

    .line 772
    invoke-super {p0}, Lcom/oplus/camera/filmvideomode/a;->n()V

    .line 773
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 775
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 777
    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 779
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 781
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 782
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 783
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 784
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const-wide/16 v3, 0xc8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    .line 792
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090261

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 412
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 414
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aC()V

    .line 421
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_film_video_eis_and_flash_enable"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 3

    .line 516
    invoke-super {p0}, Lcom/oplus/camera/filmvideomode/a;->p()V

    .line 518
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/q;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    .line 520
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->b:Landroid/app/Activity;

    const v1, 0x7f0903b4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setVisibility(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->setVisibility(I)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 128
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->d:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->m(Z)V

    :cond_3
    return-void
.end method
