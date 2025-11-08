.class public Lcom/oplus/camera/capmode/q;
.super Lcom/oplus/camera/capmode/w;
.source "MultiVideoMode.java"


# instance fields
.field private g:Z

.field private h:Lcom/oplus/camera/capmode/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/q;->g:Z

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/oplus/camera/capmode/q;->h:Lcom/oplus/camera/capmode/a/a;

    .line 74
    new-instance p2, Lcom/oplus/camera/capmode/a/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p1}, Lcom/oplus/camera/capmode/a/a;-><init>(III)V

    iput-object p2, p0, Lcom/oplus/camera/capmode/q;->h:Lcom/oplus/camera/capmode/a/a;

    return-void
.end method

.method public static a(I)F
    .locals 1

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 681
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 682
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    const p0, 0x400851ec    # 2.13f

    goto :goto_1

    :cond_2
    const p0, 0x402b851f    # 2.68f

    :goto_1
    return p0

    :cond_3
    if-eqz v0, :cond_4

    const p0, 0x4005c28f    # 2.09f

    goto :goto_2

    :cond_4
    const p0, 0x402851ec    # 2.63f

    :goto_2
    return p0

    :cond_5
    if-eqz v0, :cond_6

    const p0, 0x40151eb8    # 2.33f

    goto :goto_3

    :cond_6
    const/high16 p0, 0x40400000    # 3.0f

    :goto_3
    return p0
.end method

.method private a(Ljava/lang/String;IIII)Landroid/util/Size;
    .locals 5

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/q;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->C()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v2, 0x2

    const-string v3, "type_multi_sub_preview_frame"

    const-string v4, "type_multi_main_preview_frame"

    if-ne v2, p3, :cond_4

    .line 204
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz p3, :cond_2

    if-ne v0, p2, :cond_1

    .line 206
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p4, p5}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_1
    int-to-float p1, p4

    div-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p5

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 208
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, p2, :cond_3

    int-to-float p1, p4

    div-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p5

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 214
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 218
    :cond_3
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p4, p5}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_4
    if-ne v0, p3, :cond_8

    .line 222
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v2, 0x40151eb8    # 2.33f

    if-eqz p3, :cond_6

    if-ne v0, p2, :cond_5

    .line 224
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p4, p5}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_5
    int-to-float p1, p5

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 226
    invoke-static {p0, p1, p1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 230
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, p2, :cond_7

    int-to-float p1, p5

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 232
    invoke-static {p0, p1, p1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 236
    :cond_7
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p4, p5}, Landroid/util/Size;-><init>(II)V

    :cond_8
    :goto_1
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.multi.video.mode.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_multicamera_type_selected_key"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->r(I)V

    :cond_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 309
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/capmode/q;->a(ZZZZ)V

    .line 310
    invoke-direct {p0}, Lcom/oplus/camera/capmode/q;->a()V

    return-void
.end method

.method private a(ZZZZ)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZZZ)V

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p3, 0x0

    invoke-interface {p1, p3, v1, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 320
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p3, 0x0

    invoke-interface {p1, p2, v1, v1, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(ZZ)V

    .line 325
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->isVideoRecordStarting()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->isVideoRecordStarted()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_2

    .line 328
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 329
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->supportMenuLeftButton()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 333
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(ZZ)V

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->supportBeautyButton()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 337
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public afterStartRecording()V
    .locals 2

    .line 367
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStartRecording()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0, v1, v0, v0, v1}, Lcom/oplus/camera/capmode/q;->a(ZZZZ)V

    return-void
.end method

.method public beforeStartRecording()V
    .locals 5

    .line 345
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 348
    iget-object v2, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->aA()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 352
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    return-void
.end method

.method protected canShowResumeButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "multiCamera"

    return-object p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 493
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_MULTI_VIDEO_CUSTOM_BEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method protected getDefaultCommonBeautyValue()I
    .locals 0

    .line 498
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->isFaceBeautyDefaultOff()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x28

    return p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_multi_video_facebeauty_level_menu"

    return-object p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMultiCameraDecision()Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->h:Lcom/oplus/camera/capmode/a/a;

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x802c

    return p0
.end method

.method public getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 661
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    .line 662
    sget-object p0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    return-object p0

    :cond_0
    const/16 p0, 0x10e

    if-ne p0, p1, :cond_1

    .line 666
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    return-object p0

    :cond_1
    const/16 p0, 0x5a

    if-ne p0, p1, :cond_2

    .line 668
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    return-object p0

    .line 670
    :cond_2
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    const-string p0, "com.oplus.multi.video.mode.1080p.support"

    .line 140
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 141
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x780

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const-string p0, "com.oplus.multi.video.mode.normal.picturesize"

    .line 143
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 8

    if-eqz p2, :cond_4

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    const-string v1, "pref_multicamera_show_position_state_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_multicamera_type_selected_key"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "com.oplus.multi.video.mode.normal.picturesize"

    const-string v1, "com.oplus.multi.video.mode.1080p.support"

    const/4 v2, 0x2

    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_0

    if-eq v5, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v6, 0x780

    const/16 v7, 0x438

    move-object v2, p0

    move-object v3, p2

    .line 172
    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/capmode/q;->a(Ljava/lang/String;IIII)Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v2, p0

    move-object v3, p2

    .line 176
    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/capmode/q;->a(Ljava/lang/String;IIII)Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 160
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x3c0

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 163
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    move-object p0, p1

    .line 183
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreviewSize, surfaceType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", previewSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiVideoMode"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 188
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/q;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "func_face_beauty_process"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "key_multicamera_type_menu_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "func_face_slender_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "func_out_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_b
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 290
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "com.oplus.video.watermark.support"

    .line 284
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 281
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/q;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    return v1

    .line 268
    :pswitch_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7b6c9fed -> :sswitch_f
        -0x6aa537a9 -> :sswitch_e
        -0x5efa20f1 -> :sswitch_d
        -0x500c4e2d -> :sswitch_c
        -0x423965f9 -> :sswitch_b
        -0x30f7a71d -> :sswitch_a
        -0x185952aa -> :sswitch_9
        -0xc607924 -> :sswitch_8
        0x739636c -> :sswitch_7
        0x140b168f -> :sswitch_6
        0x27866a5a -> :sswitch_5
        0x408542df -> :sswitch_4
        0x4a67fef8 -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x62d41c23 -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key_multicamera_type_menu_key"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->m(Z)V

    return-object p0
.end method

.method public isMultiVideoMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedAPSProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedTransAnimWhenRecording()Z
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result p0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needPreviewMeta(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "type_multi_main_preview_frame"

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "type_multi_sub_preview_frame"

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 464
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    .line 466
    invoke-direct {p0}, Lcom/oplus/camera/capmode/q;->a()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZZZ)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->J(Z)V

    return v1

    .line 393
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 10

    .line 408
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    .line 410
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->applyBeautyParam()V

    .line 411
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_multicamera_type_selected_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 412
    iget-object v2, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    const-string v4, "pref_multicamera_show_position_state_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 418
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/capmode/q;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/camera/e/b;->bf:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 420
    iget-object v4, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v4, :cond_6

    .line 421
    iget-object v4, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s(I)V

    .line 422
    iget-object v4, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-ne v3, v2, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-interface {v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->H(Z)V

    .line 424
    iget-object v4, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->I(Z)V

    .line 426
    invoke-static {v0}, Lcom/oplus/camera/capmode/q;->a(I)F

    move-result v1

    .line 427
    iget-object v4, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 434
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v5

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    if-eqz v5, :cond_4

    .line 435
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 436
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v8, v6

    double-to-int v5, v8

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    :goto_3
    int-to-float v8, v5

    div-float/2addr v8, v1

    .line 437
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    const v8, 0x7f0704f9

    .line 438
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const v9, 0x7f0704fa

    .line 439
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v5, v8

    sub-int/2addr v5, v1

    goto :goto_4

    :cond_4
    const v5, 0x7f0708c1

    .line 443
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v8, 0x7f0708c5

    .line 444
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 445
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v1

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 446
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v8

    sub-int/2addr v8, v1

    sub-int v5, v8, v5

    .line 447
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v8

    add-int/2addr v4, v8

    .line 450
    :goto_4
    iget-object v8, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v8, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->c(II)V

    if-ne v3, v0, :cond_5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_5
    int-to-double v8, v1

    mul-double/2addr v8, v6

    double-to-int v3, v8

    .line 454
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->d(II)V

    .line 456
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBeforePreview, state: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", smallSurfaceWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", smallSurfaceHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiVideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 4

    .line 632
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 635
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aA()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    invoke-interface {v0, v3, v3, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZZZ)V

    .line 637
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->isPanelMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/modepanel/b;->a(I)Lcom/oplus/camera/ui/modepanel/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/i;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "position_headline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 7

    .line 517
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 518
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 519
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "pref_multicamera_type_selected_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 521
    iget-object v3, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 522
    iget-object v3, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->az()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSubScreenValue:Ljava/lang/String;

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x1

    const-string v5, "pref_multicamera_show_position_state_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 531
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/q;->getProperCameraId(I)I

    move-result v2

    .line 532
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/q;->getProperCameraId(I)I

    move-result p0

    move v6, v2

    move v2, p0

    move p0, v6

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/q;->getProperCameraId(I)I

    move-result v2

    .line 535
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/q;->getProperCameraId(I)I

    move-result p0

    .line 538
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", sub: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mScreenCompose:Ljava/lang/String;

    .line 539
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mScreenMode:Ljava/lang/String;

    move-object p0, v0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 4

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/q;->g:Z

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    const-string v2, "key_multicamera_type_menu_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 89
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 90
    iget-object v2, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 91
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0708c0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 92
    invoke-static {}, Lcom/oplus/camera/gl/b/e;->a()Lcom/oplus/camera/gl/b/e;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v0, v1, v2, p0}, Lcom/oplus/camera/gl/b/e;->a(IIII)V

    return-void
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_multicamera_type_menu_key"

    .line 571
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 572
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->af()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 573
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0708be

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 574
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 575
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    .line 654
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100278

    .line 655
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_multicamera_type_menu_key"

    .line 654
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/camera/capmode/q;->a(ZZZ)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 645
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onMoreModeShown()V

    .line 647
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/modepanel/b;->a(I)Lcom/oplus/camera/ui/modepanel/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "position_headline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/oplus/camera/capmode/q;->a(ZZZZ)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    return-void
.end method

.method protected onResume(Z)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_multicamera_type_menu_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "key_multicamera_type_menu_key"

    .line 297
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/q;->getSupportFunction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 300
    iget-object p2, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100278

    .line 301
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 302
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mActivity:Landroid/app/Activity;

    const v2, 0x7f100279

    .line 303
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_multicamera_type_menu_need_zoom_key"

    .line 302
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p2, v0, p1}, Lcom/oplus/camera/capmode/q;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->J(Z)V

    .line 566
    :cond_0
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
    .locals 5

    .line 357
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 360
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 362
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    return-void
.end method

.method protected onSwitchCameraButtonClick()V
    .locals 7

    .line 547
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/q;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/q;->g:Z

    .line 549
    iget-object v1, p0, Lcom/oplus/camera/capmode/q;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10025d

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 0

    .line 374
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->restoreDefaultMode(Z)V

    .line 376
    iget-object p1, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "key_multicamera_type_menu_key"

    .line 378
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 591
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 594
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/q;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    new-instance v3, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;

    const-string v4, "type_multi_main_preview_frame"

    .line 600
    invoke-virtual {p0, v0, v4}, Lcom/oplus/camera/capmode/q;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    const/4 v4, 0x5

    const-string v5, "rear_main"

    invoke-direct {v3, v5, v0, v4}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;-><init>(Ljava/lang/String;Landroid/util/Size;I)V

    .line 599
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    const-string v3, "type_multi_sub_preview_frame"

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;

    .line 604
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/q;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    const-string v3, "front_wide"

    invoke-direct {v0, v3, v1, v4}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;-><init>(Ljava/lang/String;Landroid/util/Size;I)V

    .line 603
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    :cond_0
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;

    .line 608
    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/capmode/q;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    const-string v3, "front_main"

    invoke-direct {v0, v3, v1, v4}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;-><init>(Ljava/lang/String;Landroid/util/Size;I)V

    .line 607
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :goto_0
    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setPreviewConfig(Ljava/util/List;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_multicamera_type_selected_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 615
    iget-object p0, p0, Lcom/oplus/camera/capmode/q;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    const-string v3, "pref_multicamera_show_position_state_key"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz v0, :cond_1

    if-ne v2, p0, :cond_2

    :cond_1
    move v1, v2

    .line 621
    :cond_2
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_DUAL_SCENE_MASTER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    return-void
.end method
