.class public Lcom/oplus/camera/filmvideomode/p;
.super Lcom/oplus/camera/filmvideomode/a;
.source "FilmUIControlV1.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;-><init>(Landroid/app/Activity;)V

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->b:Landroid/app/Activity;

    .line 28
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    .line 29
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->f:Lcom/oplus/camera/e/d;

    .line 31
    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    .line 32
    invoke-interface {p3}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    const p2, 0x7f0803da

    .line 33
    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->k:Landroid/graphics/drawable/Drawable;

    .line 34
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->b:Landroid/app/Activity;

    const p2, 0x7f0903b4

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/ThumbImageView;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 35
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->b:Landroid/app/Activity;

    const p2, 0x7f090338

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/MainShutterButton;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 36
    iput-object p4, p0, Lcom/oplus/camera/filmvideomode/p;->n:Landroid/view/ViewGroup;

    const-string p1, "com.oplus.feature.landscape.camera.sensor.support"

    .line 38
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 39
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707bb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 42
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->i()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070a50

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const-string v2, "pref_camera_film_mode_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 244
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/filmvideomode/p;->a(ZI)V

    .line 245
    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/filmvideomode/p;->a(ZI)V

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "torch"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/p;->z()V

    :cond_1
    return-void
.end method

.method private b(IZ)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "funcKey_click"

    .line 368
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->buildEventId(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCameraId:I

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 375
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_mode_key"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCaptureMode:Ljava/lang/String;

    :cond_2
    const-string p0, "1"

    const-string v1, "2"

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    goto :goto_4

    :cond_3
    const-string p1, "3"

    .line 380
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v1

    .line 382
    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string p1, "38"

    .line 386
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move-object p0, v1

    .line 388
    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string p1, "37"

    .line 392
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move-object p0, v1

    .line 394
    :goto_2
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string p1, "59"

    .line 398
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    move-object p0, v1

    .line 400
    :goto_3
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 407
    :goto_4
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->report()V

    return-void
.end method

.method private b(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    const-string v0, "pref_film_video_eis_menu"

    if-eqz p1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "on"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

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

.method private c(Lcom/oplus/camera/filmvideomode/g;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const-string v1, "pref_film_video_guide_line"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "grid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/p;->z()V

    :cond_1
    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/k;->b(Z)V

    .line 87
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->d()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/g;->b(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const/4 v3, 0x1

    .line 52
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->c(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v3, 0x7f080582

    .line 53
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f0804b8

    .line 54
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f0804aa

    .line 55
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->e()Z

    move-result v1

    .line 59
    new-instance v4, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v4}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 60
    invoke-virtual {v4, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f0804be

    .line 62
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f0804bb

    .line 63
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->f()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f08062f

    .line 68
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v4, 0x7f080630

    .line 69
    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/oplus/camera/filmvideomode/g;

    invoke-direct {v1}, Lcom/oplus/camera/filmvideomode/g;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->c()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->d(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v3, 0x7f080525

    .line 74
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    const v3, 0x7f080264

    .line 75
    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/g;->c(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/oplus/camera/filmvideomode/e;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-direct {v1, v0, v3, v2, v2}, Lcom/oplus/camera/filmvideomode/e;-><init>(Ljava/util/List;Landroid/content/SharedPreferences;ZZ)V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/f;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 94
    invoke-direct {p0, v1}, Lcom/oplus/camera/filmvideomode/p;->f(Z)V

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 152
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    .line 153
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    .line 154
    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->i()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 160
    invoke-virtual {p2}, Lcom/oplus/camera/filmvideomode/k;->a()Z

    move-result p2

    if-nez p2, :cond_c

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aT()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    if-nez p3, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    if-eqz p2, :cond_7

    .line 174
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/k;->c()Z

    move-result v2

    .line 175
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 177
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 178
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/k;->b()V

    goto :goto_3

    .line 180
    :cond_5
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/p;->f(Z)V

    .line 183
    :goto_3
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    .line 184
    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v2, p3, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    goto :goto_4

    .line 187
    :cond_6
    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v2, p3, v3, v4}, Lcom/oplus/camera/filmvideomode/e;->b(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    goto :goto_4

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v2, p3}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :goto_4
    const/4 v0, 0x3

    if-ne v0, p3, :cond_8

    .line 195
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/p;->a(Lcom/oplus/camera/filmvideomode/g;)V

    :cond_8
    const/4 v0, 0x2

    if-ne v0, p3, :cond_9

    .line 199
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/p;->b(Lcom/oplus/camera/filmvideomode/g;)V

    :cond_9
    if-ne v1, p3, :cond_a

    .line 203
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/p;->c(Lcom/oplus/camera/filmvideomode/g;)V

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 207
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v0

    const-string v1, "pref_film_show_ui_default"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/p;->z()V

    .line 211
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/oplus/camera/filmvideomode/p;->b(IZ)V

    :cond_c
    :goto_5
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 416
    invoke-virtual {v0, p2}, Lcom/oplus/camera/filmvideomode/g;->d(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 427
    invoke-virtual {v0, p2}, Lcom/oplus/camera/filmvideomode/g;->d(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 221
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 222
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "pref_film_show_ui_default"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 231
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 232
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->b()V

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v2, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    const/4 v2, 0x0

    .line 294
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 295
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/p;->a(Lcom/oplus/camera/filmvideomode/g;)V

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/g;->e()Z

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->c()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/p;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 5

    .line 314
    invoke-super {p0}, Lcom/oplus/camera/filmvideomode/a;->m()V

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 318
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 319
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    const/4 v2, 0x1

    .line 321
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 322
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 323
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v3, v1, v2, v1}, Lcom/oplus/camera/filmvideomode/e;->b(Lcom/oplus/camera/filmvideomode/f;IZZ)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0, v4, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v4, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 5

    .line 338
    invoke-super {p0}, Lcom/oplus/camera/filmvideomode/a;->n()V

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 341
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 343
    invoke-virtual {v3}, Lcom/oplus/camera/filmvideomode/e;->b()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 345
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    .line 347
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 348
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->e(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 349
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/g;->f(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/p;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;IZ)V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const-wide/16 v3, 0xc8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    .line 358
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090261

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/p;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aC()V

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/p;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_film_video_eis_and_flash_enable"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
