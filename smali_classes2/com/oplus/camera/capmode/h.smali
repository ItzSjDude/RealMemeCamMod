.class public Lcom/oplus/camera/capmode/h;
.super Lcom/oplus/camera/capmode/d;
.source "FishEyeMode.java"


# static fields
.field private static final g:Ljava/lang/String; = "h"


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/capmode/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/capmode/h;->mPreferences:Landroid/content/SharedPreferences;

    .line 140
    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1001b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "pref_fish_eye_mode"

    .line 139
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 3

    .line 201
    new-instance v0, Lcom/oplus/camera/statistics/model/FishEyeMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result v2

    iget p0, p0, Lcom/oplus/camera/capmode/h;->mCameraId:I

    invoke-direct {v0, v1, v2, p0}, Lcom/oplus/camera/statistics/model/FishEyeMsgData;-><init>(Landroid/content/Context;ZI)V

    .line 202
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/FishEyeMsgData;->report()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 206
    sget-object v0, Lcom/oplus/camera/capmode/h;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFishEyeActivateState, mbCapModeInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/h;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFishEyeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/h;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->G(Z)V

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_2

    .line 215
    iget-object p0, p0, Lcom/oplus/camera/capmode/h;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->h(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected doAfterStartPreview()V
    .locals 7

    .line 178
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->doAfterStartPreview()V

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/capmode/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/oplus/camera/capmode/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1001b3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "fishEye"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_fish_eye_filter_index"

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80ab

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 p0, 0x100

    .line 50
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 51
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 66
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;
    .locals 0

    const-wide p2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 61
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFaceView()Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "fish_eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_6
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_camera_high_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f048920 -> :sswitch_a
        -0x5c5df3f5 -> :sswitch_9
        -0x500c4e2d -> :sswitch_8
        -0x4c684fe0 -> :sswitch_7
        -0x289e651d -> :sswitch_6
        -0x1fb63c36 -> :sswitch_5
        -0x5f8f68b -> :sswitch_4
        0x2537249 -> :sswitch_3
        0xb8585f9 -> :sswitch_2
        0x55733c3f -> :sswitch_1
        0x5f579904 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->B(Z)V

    .line 125
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->C(Z)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->q(Z)V

    const p0, 0x7f0806ae

    .line 127
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->a(I)V

    const p0, 0x7f0806ad

    .line 128
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->b(I)V

    return-object v0
.end method

.method public isNeedAPSProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBeforePreview()V
    .locals 3

    .line 151
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBeforePreview()V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/capmode/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/capmode/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->FISH_EYE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->c()V

    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/h;->h:Z

    .line 163
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->c()V

    .line 165
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/h;->h:Z

    .line 173
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->c()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string p1, "pref_fish_eye_mode"

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->a()Z

    move-result p1

    .line 192
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->c()V

    .line 193
    invoke-direct {p0}, Lcom/oplus/camera/capmode/h;->b()V

    .line 195
    iget-object p2, p0, Lcom/oplus/camera/capmode/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FISH_EYE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/capmode/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method
