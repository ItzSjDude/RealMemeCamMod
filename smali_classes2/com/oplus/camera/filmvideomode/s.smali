.class public Lcom/oplus/camera/filmvideomode/s;
.super Lcom/oplus/camera/capmode/w;
.source "MovieMode.java"

# interfaces
.implements Lcom/oplus/camera/filmvideomode/a$a;


# instance fields
.field g:Lcom/oplus/camera/p$a;

.field private h:Lcom/oplus/camera/filmvideomode/a;

.field private i:Lcom/oplus/camera/p;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    const/16 p1, 0x780

    .line 60
    iput p1, p0, Lcom/oplus/camera/filmvideomode/s;->j:I

    const/16 p1, 0x438

    .line 61
    iput p1, p0, Lcom/oplus/camera/filmvideomode/s;->k:I

    .line 62
    iput p1, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/s;->m:Z

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/oplus/camera/filmvideomode/s;->n:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/s;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->d()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/filmvideomode/s;)Landroid/content/SharedPreferences;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/filmvideomode/s;)Landroid/content/SharedPreferences;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private c()V
    .locals 4

    const-string v0, "com.oplus.movie.picturesize"

    .line 273
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraId:I

    .line 279
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->a()Ljava/util/List;

    move-result-object v0

    const-wide v1, 0x4002aaaaaaaaaaabL    # 2.3333333333333335

    const/16 v3, 0x438

    .line 278
    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/filmvideomode/s;->j:I

    .line 285
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/filmvideomode/s;->k:I

    .line 286
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/s;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 287
    iget v1, p0, Lcom/oplus/camera/filmvideomode/s;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    .line 290
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreviewXScale:F

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMovieSize, mPreviewSizeWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/s;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewSizeHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/s;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilmVideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/filmvideomode/s;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 297
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->j()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    const-string v1, "camera_ultra_wide"

    const-string v2, "pref_switch_camera_bar_key"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    iget v4, p0, Lcom/oplus/camera/filmvideomode/s;->n:I

    if-eq v0, v4, :cond_5

    .line 302
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Lcom/oplus/camera/filmvideomode/r;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/oplus/camera/filmvideomode/r;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    goto :goto_0

    :cond_2
    const-string v0, "func_movie_mode_v2"

    .line 304
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    new-instance v0, Lcom/oplus/camera/filmvideomode/q;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/oplus/camera/filmvideomode/q;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    goto :goto_0

    .line 307
    :cond_3
    new-instance v0, Lcom/oplus/camera/filmvideomode/p;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/oplus/camera/filmvideomode/p;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "camera_main"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 314
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 315
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/filmvideomode/a;->a(Z)V

    goto :goto_1

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/filmvideomode/a;->a(Z)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/filmvideomode/a$a;)V

    .line 322
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/filmvideomode/s;->n:I

    :cond_5
    const-string v0, "pref_film_video_histogram"

    .line 325
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->l()V

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->b()V

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ai()V

    .line 332
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->B(Z)V

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(ZZ)V

    :cond_7
    const-string v0, "com.oplus.feature.wide.angle.open.default"

    .line 338
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    .line 339
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->e()V

    .line 346
    iput-boolean v3, p0, Lcom/oplus/camera/filmvideomode/s;->m:Z

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/filmvideomode/s;)Lcom/oplus/camera/filmvideomode/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_bar_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_ultra_wide"

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 355
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 356
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/filmvideomode/a;->a(IZ)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/filmvideomode/a;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/s;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/s;->n:I

    if-eq v0, v1, :cond_1

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->d()V

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "on"

    const-string v1, "pref_film_video_eis_menu"

    .line 743
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h()Z
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_film_video_log"

    const-string v1, "off"

    .line 748
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()Z
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_film_video_hdr"

    const-string v1, "off"

    .line 753
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()Z
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_camera_film_mode_key"

    const-string v1, "off"

    .line 758
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k()Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_film_video_histogram"

    const-string v1, "off"

    .line 763
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l()V
    .locals 4

    .line 883
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->m()V

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lcom/oplus/camera/p;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/p;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/oplus/camera/p$a;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    .line 887
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Lcom/oplus/camera/p;->a(I)V

    goto :goto_0

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;Z)V

    :goto_0
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 893
    invoke-static {v1, v0}, Lcom/oplus/camera/p;->a(II)Landroid/util/Size;

    move-result-object v0

    .line 895
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p;->a(Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic lambda$BoVQr2c3WiKG91U5VkdWEIygNoQ(Lcom/oplus/camera/filmvideomode/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->e()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/oplus/camera/p$a;

    invoke-direct {v0}, Lcom/oplus/camera/p$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    .line 901
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    iput v1, v0, Lcom/oplus/camera/p$a;->a:I

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/p$a;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    iput v1, v0, Lcom/oplus/camera/p$a;->a:I

    .line 910
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 911
    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oplus/camera/p$a;->c:I

    .line 912
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/p$a;->d:I

    .line 913
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->g:Lcom/oplus/camera/p$a;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/oplus/camera/p$a;->e:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 2

    .line 942
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object v0

    .line 943
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    if-nez p0, :cond_0

    .line 945
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(I)Lcom/oplus/camera/e/h;
    .locals 0

    .line 937
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/s;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    return-object p0
.end method

.method public afterStartRecording()V
    .locals 1

    .line 623
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->displayScreenHintIconInSwitchOn()V

    .line 627
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStartRecording()V

    return-void
.end method

.method public afterStopRecording()V
    .locals 5

    .line 647
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 650
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 652
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStopRecording()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/filmvideomode/s$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/filmvideomode/s$3;-><init>(Lcom/oplus/camera/filmvideomode/s;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public beforeConfig()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/filmvideomode/-$$Lambda$s$BoVQr2c3WiKG91U5VkdWEIygNoQ;

    invoke-direct {v1, p0}, Lcom/oplus/camera/filmvideomode/-$$Lambda$s$BoVQr2c3WiKG91U5VkdWEIygNoQ;-><init>(Lcom/oplus/camera/filmvideomode/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeStartRecording()V
    .locals 5

    .line 607
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 611
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 612
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->m()V

    .line 618
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    return-void
.end method

.method protected configVideoBitRate()I
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x4c4b400

    return p0

    .line 252
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->configVideoBitRate()I

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 849
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 7

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, -0x1

    const v3, 0x7f080412

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 719
    :cond_0
    sget-boolean v0, Lcom/oplus/camera/Camera;->m:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    if-nez v0, :cond_1

    .line 720
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enterNeedShutterButtonAlphaTransition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 2

    .line 257
    iget v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraId:I

    const-string v1, "movieNoEis"

    invoke-static {v1, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->g()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "movie"

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "movie"

    return-object p0
.end method

.method public getDefaultAFMode()I
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    const-string v2, "pref_film_mode_focus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getDefaultAFMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultVideoCodec()Ljava/lang/String;
    .locals 0

    const-string p0, "H264"

    return-object p0
.end method

.method public getEntryGalleryAnim()I
    .locals 0

    .line 794
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f01008e

    return p0

    :cond_0
    const p0, 0x7f010091

    return p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getGuideLineKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_film_video_guide_line"

    return-object p0
.end method

.method public getLockedScreenMode()Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 960
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 961
    sget-object p0, Lcom/oplus/camera/screen/f$a;->rack90:Lcom/oplus/camera/screen/f$a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMovieHdrEnable()Ljava/lang/Byte;
    .locals 1

    const-string v0, "pref_film_video_hdr"

    .line 195
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x80a4

    return p0

    :cond_0
    const p0, 0x80a3

    return p0
.end method

.method public getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 951
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    .line 952
    sget-object p0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    return-object p0

    .line 954
    :cond_0
    sget-object p0, Lcom/oplus/camera/screen/f$a;->rack90:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public getPreviewDispalyWidth()I
    .locals 0

    .line 783
    iget p0, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    return p0
.end method

.method public getPreviewOutlineProvider()Lcom/oplus/camera/ui/q;
    .locals 5

    .line 826
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->c()V

    .line 832
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    .line 833
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    .line 834
    iget v2, p0, Lcom/oplus/camera/filmvideomode/s;->l:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    .line 837
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v1, v3

    invoke-direct {v4, v0, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 838
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707e0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 840
    new-instance v0, Lcom/oplus/camera/ui/q;

    invoke-direct {v0}, Lcom/oplus/camera/ui/q;-><init>()V

    int-to-float p0, p0

    invoke-virtual {v0, v4, p0}, Lcom/oplus/camera/ui/q;->a(Landroid/graphics/Rect;F)Lcom/oplus/camera/ui/q;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->c()V

    .line 268
    new-instance p1, Landroid/util/Size;

    iget v0, p0, Lcom/oplus/camera/filmvideomode/s;->j:I

    iget p0, p0, Lcom/oplus/camera/filmvideomode/s;->k:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_support_gimbal_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_setting_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_support_share_edit_thumb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_setting_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_film_video_histogram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_film_video_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_film_video_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "func_out_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_camera_film_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_f
    const-string v0, "func_movie_mode_v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_switch_camera_bar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_14
    const-string v0, "pref_exposure_focus_separate_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_15
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_16
    const-string v0, "key_full_screen_center_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v3, "com.oplus.feature.movie.mode.V2.support"

    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.oplus.10bits.heic.encode.support"

    .line 159
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/filmvideomode/s;->mbFrontCamera:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 160
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 155
    :pswitch_1
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.feature.movie.mode.hdr.log.support"

    .line 156
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 151
    :pswitch_2
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 146
    :pswitch_3
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/s;->mbFrontCamera:Z

    xor-int/2addr p0, v2

    return p0

    :pswitch_4
    return v1

    :pswitch_5
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x6dd3d5b8 -> :sswitch_16
        -0x64edfd1c -> :sswitch_15
        -0x6273229a -> :sswitch_14
        -0x5efa20f1 -> :sswitch_13
        -0x541be82c -> :sswitch_12
        -0x4f854398 -> :sswitch_11
        -0x4c684fe0 -> :sswitch_10
        -0x465cc9b2 -> :sswitch_f
        -0x30f7a71d -> :sswitch_e
        -0x2b9764e0 -> :sswitch_d
        -0xc607924 -> :sswitch_c
        -0xb0f5f67 -> :sswitch_b
        -0x3c8222d -> :sswitch_a
        -0x3c811df -> :sswitch_9
        0x739636c -> :sswitch_8
        0x140b168f -> :sswitch_7
        0x1a6bf281 -> :sswitch_6
        0x1ec78fce -> :sswitch_5
        0x260d3011 -> :sswitch_4
        0x27866a5a -> :sswitch_3
        0x32063b00 -> :sswitch_2
        0x5f579904 -> :sswitch_1
        0x788623dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 1

    .line 788
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz p1, :cond_0

    const-string v0, "pref_manual_exposure_key"

    .line 789
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    .line 788
    invoke-virtual {p1, p2, p3, p0}, Lcom/oplus/camera/filmvideomode/a;->a(IIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_film_video_log"

    .line 379
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "H265"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "pref_film_video_hdr"

    .line 383
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    const-string p0, "H264"

    return-object p0
.end method

.method protected getVideoFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 2

    const-string v0, "func_movie_mode_v2"

    .line 524
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0, v1}, Lcom/oplus/camera/filmvideomode/s;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 528
    :cond_0
    iget v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->K()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 532
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/util/Size;

    :cond_1
    return-object v1
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 1

    const-string v0, "func_movie_mode_v2"

    .line 239
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "4K"

    return-object p0

    :cond_0
    const-string p0, "video_size_1080p"

    return-object p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 978
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const-string v0, "com.oplus.movie.second.zoom.point.specific.value"

    .line 980
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 983
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->c(F)V

    :cond_0
    return-object p0
.end method

.method public isCropX()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHistogramOpen()Z
    .locals 1

    const-string v0, "pref_film_video_histogram"

    .line 879
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isMovieMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedSetRecordingMargin()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isQualcommEndOfStreamNeed()Z
    .locals 3

    .line 728
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 731
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->k()[B

    move-result-object p0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQualcommEndOfStreamNeed, endOfStreamValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FilmVideoMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 735
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSloganForceLandscape()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_bar_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.movie.default.video.frame.record.support"

    .line 769
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "camera_ultra_wide"

    .line 770
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->is4k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->isSloganOpen()Z

    move-result p0

    if-nez p0, :cond_0

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

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 1

    const-string v0, "pref_watermark_function_key"

    .line 860
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->needApsToProcessVideoWatermark()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 864
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result p0

    return p0
.end method

.method public isVideo10BitOpen()Z
    .locals 1

    const-string v0, "pref_film_video_log"

    .line 854
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "pref_film_video_hdr"

    .line 855
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

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

.method public needLutTexture()Z
    .locals 1

    const-string v0, "pref_film_video_hdr"

    .line 778
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_still_capture_yuv_main"

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_video_frame"

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string p1, "pref_watermark_function_key"

    .line 471
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const-string v0, "type_preview_frame"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 478
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/filmvideomode/s$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/filmvideomode/s$2;-><init>(Lcom/oplus/camera/filmvideomode/s;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->u()V

    .line 446
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_film_video_histogram"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->l()V

    .line 450
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->y()V

    .line 973
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 2

    .line 411
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->t()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    const-string v0, "pref_film_video_log"

    .line 418
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(B)V

    :cond_1
    const-string v0, "pref_film_video_hdr"

    .line 422
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->b(B)V

    .line 426
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_3
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FilmVideoMode"

    const-string v1, "onDeInitCameraMode"

    .line 93
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->v()V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->w()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->N()V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/ViewGroup;)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ah()V

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ar()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/oplus/camera/p;->c()V

    .line 114
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->s()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0}, Lcom/oplus/camera/p;->c()V

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    .line 682
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onDestroy()V

    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    .line 919
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 920
    move-object v1, p1

    check-cast v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    .line 922
    iget p0, p0, Lcom/oplus/camera/filmvideomode/s;->mDcsLux:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLux:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected onInitCameraMode()V
    .locals 2

    const-string v0, "FilmVideoMode"

    const-string v1, "onInitCameraMode"

    .line 78
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/s;->m:Z

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/filmvideomode/s$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/filmvideomode/s$1;-><init>(Lcom/oplus/camera/filmvideomode/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->p()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->N()V

    .line 503
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 455
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 457
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/s;->mbCapModeInit:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-nez p0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->f()V

    .line 659
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->o()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Lcom/oplus/camera/p;->d()V

    .line 665
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    invoke-virtual {v0}, Lcom/oplus/camera/p;->a()V

    .line 668
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "pref_film_video_guide_line"

    .line 540
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "off"

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 541
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "grid"

    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 543
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k(Z)V

    goto/16 :goto_3

    :cond_0
    const-string v2, "pref_camera_film_mode_key"

    .line 544
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v3, :cond_7

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    .line 547
    sget-boolean v6, Lcom/oplus/camera/Camera;->m:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/oplus/camera/Camera;->l:Z

    if-eqz v6, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v2, :cond_5

    .line 566
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v3}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 567
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    goto :goto_2

    .line 548
    :cond_2
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 549
    sget-boolean v3, Lcom/oplus/camera/Camera;->m:Z

    const-string v5, "disable_code"

    if-eqz v3, :cond_3

    .line 550
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1001eb

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0xbb8

    const/16 v16, 0x0

    invoke-interface/range {v6 .. v16}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZZIZ)V

    const-string v3, "temps_flash"

    .line 552
    invoke-virtual {v0, v5, v3}, Lcom/oplus/camera/filmvideomode/s;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 553
    :cond_3
    sget-boolean v3, Lcom/oplus/camera/Camera;->l:Z

    if-eqz v3, :cond_4

    .line 554
    iget-object v6, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f10022f

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0xbb8

    const/16 v16, 0x0

    invoke-interface/range {v6 .. v16}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZZIZ)V

    const-string v3, "battery_flash"

    .line 556
    invoke-virtual {v0, v5, v3}, Lcom/oplus/camera/filmvideomode/s;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    .line 560
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 561
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 570
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v2, :cond_6

    .line 571
    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/a;->l()V

    .line 574
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->displayScreenHintIconInSwitchOn()V

    goto/16 :goto_3

    :cond_7
    const-string v2, "pref_film_video_histogram"

    .line 575
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 576
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-eqz v3, :cond_9

    .line 579
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 582
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_3

    .line 584
    :cond_8
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/p;->b(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_3

    :cond_9
    const-string v2, "pref_film_video_hdr"

    .line 586
    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    const-string v6, "pref_film_video_log"

    if-eqz v3, :cond_a

    .line 587
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 589
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/filmvideomode/a;->c(Z)V

    goto :goto_3

    .line 592
    :cond_a
    invoke-virtual {v0, v6}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 593
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/filmvideomode/s;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 595
    iget-object v3, v0, Lcom/oplus/camera/filmvideomode/s;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 596
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/filmvideomode/a;->d(Z)V

    .line 600
    :cond_b
    :goto_3
    iget-object v2, v0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_c

    .line 601
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/w;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 692
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 693
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v6, v0

    add-double/2addr v6, v4

    double-to-int v0, v6

    .line 695
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 696
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/s;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 697
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 698
    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    .line 700
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    return v1

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/a;->q()V

    .line 706
    invoke-virtual {p0, v5, v2, v0}, Lcom/oplus/camera/filmvideomode/s;->getTouchEnable(ZII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->r()V

    .line 710
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopVideoRecording(Z)V
    .locals 1

    .line 632
    invoke-static {}, Lcom/oplus/camera/filmvideomode/b;->a()V

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/a;->n()V

    .line 638
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    .line 640
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->displayScreenHintIconInSwitchOn()V

    :cond_1
    return-void
.end method

.method public onYuvDataReceviced([B)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->i:Lcom/oplus/camera/p;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p;->a([B)V

    :cond_0
    return-void
.end method

.method protected readProfile()V
    .locals 3

    .line 508
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->readProfile()V

    .line 509
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getVideoSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/s;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    :cond_0
    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s;->h:Lcom/oplus/camera/filmvideomode/a;

    if-eqz p0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->x()V

    :cond_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 2

    .line 213
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 215
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_STABILIZATION_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "video_stabilization"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->getMovieHdrEnable()Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->KEY_MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_1
    const-string v0, "pref_film_video_log"

    .line 225
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/s;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 227
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/s;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 226
    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->isVideo10BitOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 234
    :cond_3
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BITRATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/s;->configVideoBitRate()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    return-void
.end method

.method public setFlashState()V
    .locals 0

    return-void
.end method

.method protected supportParameterAdjust()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
