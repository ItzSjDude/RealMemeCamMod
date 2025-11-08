.class public Lcom/oplus/camera/capmode/n;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "MacroMode.java"


# instance fields
.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/n;->g:Z

    .line 37
    iput p1, p0, Lcom/oplus/camera/capmode/n;->h:I

    return-void
.end method

.method private a()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/n;->mActivity:Landroid/app/Activity;

    .line 169
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100234

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget p0, p0, Lcom/oplus/camera/capmode/n;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 175
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 177
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100234

    const v2, 0x7f0805e9

    const v3, 0x7f0604ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget p0, p0, Lcom/oplus/camera/capmode/n;->h:I

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    .line 178
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayScreenHintIconInSwitchOn()V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/n;->isFlashState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/n;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/n;->g:Z

    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->displayScreenHintIconInSwitchOn()V

    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "macro"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_macro_filter_index"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->h:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->h:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80a6

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 p0, 0x100

    .line 111
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 238
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/n;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/n;->mCameraId:I

    const-string v0, "aps_algo_raw2yuv"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 229
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/n;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/n;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    return v1

    .line 222
    :pswitch_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ade66d -> :sswitch_7
        -0x7336bb70 -> :sswitch_6
        -0x5efa20f1 -> :sswitch_5
        -0x185952aa -> :sswitch_4
        0x140b168f -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x65b53143 -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_setting_key"

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_high_resolution_key"

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_capture"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    const-string p1, "MacroMode"

    const-string p2, "onAfterPictureTaken"

    .line 186
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/oplus/camera/capmode/n;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/n;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    const-string p1, "com.oplus.macro.best.focus.distance"

    .line 245
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/n;->h:I

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/n;->isFlashState()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/camera/capmode/n;->g:Z

    .line 247
    invoke-direct {p0}, Lcom/oplus/camera/capmode/n;->b()V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 0

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/oplus/camera/capmode/n;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 0

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 1

    .line 283
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/oplus/camera/capmode/n;->b()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 120
    :cond_0
    sget-boolean v3, Lcom/oplus/camera/Camera;->m:Z

    const-string v4, "off"

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/oplus/camera/Camera;->l:Z

    if-nez v3, :cond_5

    .line 121
    iget-object v3, v0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v3

    const-string v5, "pref_camera_videoflashmode_key"

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 122
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v6, v0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005b0

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v12, v0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005b2

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 132
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/oplus/camera/capmode/n;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_3

    return-void

    .line 136
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    iget-object v3, v0, Lcom/oplus/camera/capmode/n;->mActivity:Landroid/app/Activity;

    const v6, 0x7f1001bb

    .line 138
    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/n;->b()V

    goto :goto_1

    .line 143
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/n;->a()V

    :cond_5
    :goto_1
    const-string v3, "pref_subsetting_key"

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/n;->a()V

    .line 153
    :cond_6
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-eqz p2, :cond_0

    .line 255
    iget-object p1, p0, Lcom/oplus/camera/capmode/n;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/capmode/n;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/n;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/capmode/n;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method
