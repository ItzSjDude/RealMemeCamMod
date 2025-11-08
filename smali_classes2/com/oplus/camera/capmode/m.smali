.class public Lcom/oplus/camera/capmode/m;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "LongExposureMode.java"


# instance fields
.field private final g:Ljava/lang/Object;

.field private h:Lcom/oplus/camera/ui/o;

.field private i:Lcom/oplus/camera/ui/i;

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/oplus/camera/longexposure/g;

.field private q:Lcom/oplus/camera/longexposure/d;

.field private r:Lcom/oplus/camera/ui/RotateImageView;

.field private s:Lcom/oplus/camera/longexposure/k;

.field private t:Lcom/oplus/camera/longexposure/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 67
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    .line 70
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 71
    iput p2, p0, Lcom/oplus/camera/capmode/m;->k:I

    const-wide/16 p3, 0x0

    .line 72
    iput-wide p3, p0, Lcom/oplus/camera/capmode/m;->l:J

    .line 73
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/m;->m:Z

    .line 74
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/m;->n:Z

    .line 75
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/m;->o:Z

    .line 76
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    .line 1130
    new-instance p1, Lcom/oplus/camera/capmode/m$5;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/m$5;-><init>(Lcom/oplus/camera/capmode/m;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/m;->t:Lcom/oplus/camera/longexposure/f;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/o;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    return-object p0
.end method

.method private a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f1001fa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(IZI)V
    .locals 8

    .line 928
    iget-object p3, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p3, :cond_0

    .line 929
    iput p1, p0, Lcom/oplus/camera/capmode/m;->k:I

    .line 930
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    :cond_0
    return-void
.end method

.method private a(IZII)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 936
    iput v1, v0, Landroid/os/Message;->what:I

    .line 937
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 938
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 939
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 940
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/m;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;IZI)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/m;->a(IZI)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;IZII)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/m;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/m;ZZ)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "hideLongExposureMenu"

    .line 307
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/g;->a(Z)V

    .line 311
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/g;->b(Z)V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "hideLongExposureIcon"

    .line 342
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/longexposure/d;->a(ZZ)V

    :cond_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLongExposureIcon, isMoreModeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    if-eqz p0, :cond_2

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/longexposure/d;->a(ZZZ)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/m;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/oplus/camera/capmode/m;->k:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 1176
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1177
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x57

    .line 1197
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x4b

    .line 1193
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x4a

    .line 1189
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x49

    .line 1185
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x48

    .line 1181
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 1203
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1204
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 1205
    iget p1, p0, Lcom/oplus/camera/capmode/m;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 1207
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1208
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string p0, "manual"

    .line 1210
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 1213
    :goto_1
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLongExposureMenu  isMoreModeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/g;->a(Z)V

    .line 328
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/g;->c(Z)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/m;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/oplus/camera/capmode/m;->k:I

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/m;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/m;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    return-void
.end method

.method private e()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/oplus/camera/longexposure/k;

    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v6, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/longexposure/k;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {v1}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/k;->a(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/longexposure/k;->d(I)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->j()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/g;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_effect_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_streamer_portrait_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_busy_traffic_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_flowing_clouds_and_water_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_light_painting_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_moving_crowd_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_streamer_portrait_auto_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_busy_traffic_auto_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_flowing_clouds_and_water_auto_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_light_painting_auto_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_moving_crowd_auto_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_long_exposure_exposure_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_restore_long_exposure_params"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/longexposure/k;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    .line 886
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f09022d

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setId(I)V

    .line 887
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0805cc

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 889
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0706b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 890
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706b0

    .line 891
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 892
    iget-object v3, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706af

    .line 893
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 895
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 896
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x15

    .line 897
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 898
    invoke-virtual {v4, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 899
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 900
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$xx5HLlaTKn40VIrUcJgimvowXQ0;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$xx5HLlaTKn40VIrUcJgimvowXQ0;-><init>(Lcom/oplus/camera/capmode/m;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x2

    const-string v3, "longExposure"

    invoke-interface {v0, p0, v3, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 945
    iput v1, v0, Landroid/os/Message;->what:I

    .line 947
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private i()V
    .locals 6

    const-string v0, "LongExposureMode"

    const-string v1, "resetAfterPictureTaken"

    .line 989
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    .line 992
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    const-string v2, "pref_burst_shot_key"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 993
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(IZ)V

    .line 994
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 995
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 996
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    invoke-static {v2, v3}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/m;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    .line 995
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    const-string v0, "pref_support_switch_camera"

    .line 998
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1003
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->az()V

    .line 1005
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->o:Z

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    .line 1007
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/m;->o:Z

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 1012
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const-wide/16 v4, 0xfa

    .line 1013
    invoke-static {v0, v1, v3, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1016
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->n:Z

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->u(Z)V

    .line 1018
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/m;->n:Z

    goto :goto_1

    .line 1020
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 1022
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isShowProPanelMenu()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1023
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1026
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result v0

    const-string v3, "pref_long_exposure_scene_menu_state"

    if-eqz v0, :cond_6

    .line 1027
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/m;->b(Z)V

    .line 1028
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 1029
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1030
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/k;->a(Z)V

    .line 1031
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/longexposure/k;->a(IZ)V

    goto :goto_1

    .line 1033
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 1034
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1035
    invoke-direct {p0, v1, v1, v2}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    .line 1036
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 1037
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1038
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 1039
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/g;->d()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    :goto_1
    return-void
.end method

.method private j()V
    .locals 6

    const-string v0, "pref_filter_process_key"

    .line 1045
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/m;->n:Z

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 1053
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1054
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1055
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    invoke-static {v4, v5}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/m;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    .line 1054
    invoke-static {v4}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 1056
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 1058
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->n:Z

    if-nez v0, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 1066
    :cond_2
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    .line 1067
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/m;->a(Z)V

    .line 1068
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1069
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    .line 1071
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    const-wide/16 v1, 0xfa

    .line 1072
    invoke-static {p0, v0, v3, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_3
    return-void
.end method

.method private k()V
    .locals 2

    .line 1217
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1218
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    const/16 p0, 0x4c

    .line 1221
    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const/4 p0, 0x1

    .line 1222
    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 1223
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09022d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 914
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    if-nez p1, :cond_1

    .line 915
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->au()V

    .line 917
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 972
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/g;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    .line 974
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/m;->a(Z)V

    .line 975
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_long_exposure_scene_menu_state"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 976
    invoke-direct {p0, v2, v2, v2}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    .line 977
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 978
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 979
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 981
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/g;->d()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    return v2

    :cond_0
    return v1
.end method

.method protected b()V
    .locals 4

    .line 1077
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "LongExposureMode"

    const-string v0, "captureRawDone, cancel capture after pause"

    .line 1078
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "LongExposureMode"

    const-string v1, "captureRawDone"

    .line 1083
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_1

    .line 1087
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->j()Z

    .line 1089
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->d()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/o;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/m;->l:J

    goto :goto_0

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/m;->l:J

    .line 1097
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 1099
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, 0x1

    const-string v3, "type_still_capture_raw"

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;Z)V

    .line 1103
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1104
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(I)V

    goto :goto_1

    .line 1106
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1109
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    .line 1111
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1c

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    .line 1112
    :goto_2
    new-instance v2, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v2}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v3, "button_color_inside_none"

    .line 1113
    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1115
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1116
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(IZ)V

    const v0, 0x7f10031b

    .line 1117
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    return-void

    :catchall_0
    move-exception p0

    .line 1089
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c()Z
    .locals 2

    .line 1126
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "auto"

    const-string v1, "pref_key_long_exposure_exposure_time"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 2

    .line 261
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllViewWhenAnimation, animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result p1

    if-nez p1, :cond_4

    .line 289
    invoke-direct {p0, v1, v1, v1}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 268
    iget-object p2, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 269
    invoke-direct {p0, v1, v1, p1}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    .line 270
    iget-object p2, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 271
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/g;->d()I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 276
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/m;->a(Z)V

    .line 277
    iget-object p2, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_long_exposure_scene_menu_state"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    .line 281
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()I
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result p0

    .line 1171
    invoke-virtual {v0, p0}, Lcom/oplus/camera/longexposure/k;->c(I)F

    move-result p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "longExposure"

    return-object p0
.end method

.method public getCurrFilterIndex()I
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 122
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    return p0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getFilterNoneIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.oplus.feature.street.long.exposure.support"

    .line 127
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.oplus.street.filter.type.default"

    .line 128
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/m;->getFilterTypeList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 136
    iget v2, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/m;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result p0

    return p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "com.oplus.feature.street.long.exposure.support"

    .line 846
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_street_filter_index"

    return-object p0

    :cond_0
    const-string p0, "key_long_exposure_filter_index"

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

    const-string p0, "com.oplus.feature.street.long.exposure.support"

    .line 103
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 104
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->f:Ljava/util/List;

    return-object p0

    .line 106
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->p:Lcom/oplus/camera/ui/preview/a/i;

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

    const-string p0, "com.oplus.feature.street.long.exposure.support"

    .line 112
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 113
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->p:Lcom/oplus/camera/ui/preview/a/i;

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

    const p0, 0x80aa

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 p0, 0x100

    .line 146
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 147
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 3

    .line 727
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 729
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 731
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    const/16 v1, 0x1d

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 734
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x1a

    .line 732
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    const-string p0, "button_shape_ring_none"

    .line 738
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "func_long_exposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_reset_auto_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_scale_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_b
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "func_cache_click_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 702
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v2

    .line 693
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    return v2

    .line 684
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p0, "com.oplus.long.exposure.no.wide"

    .line 677
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    .line 680
    :cond_1
    invoke-static {}, Lcom/oplus/camera/e/a;->g()Z

    move-result p0

    return p0

    :pswitch_5
    return v3

    .line 671
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getIsCapturingState()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 668
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getIsCapturingState()Z

    move-result p0

    return p0

    :pswitch_8
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ade66d -> :sswitch_13
        -0x64edfd1c -> :sswitch_12
        -0x5efa20f1 -> :sswitch_11
        -0x4322f869 -> :sswitch_10
        -0x289e651d -> :sswitch_f
        -0xdae10b4 -> :sswitch_e
        -0xb0f5f67 -> :sswitch_d
        -0x5f8f68b -> :sswitch_c
        0xb8585f9 -> :sswitch_b
        0x1073c1f2 -> :sswitch_a
        0x140b168f -> :sswitch_9
        0x1e7c3c3e -> :sswitch_8
        0x3e627798 -> :sswitch_7
        0x5f579904 -> :sswitch_6
        0x65ad1753 -> :sswitch_5
        0x65b53143 -> :sswitch_4
        0x74ed85e4 -> :sswitch_3
        0x75ca6ab5 -> :sswitch_2
        0x794f412f -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_timer_shutter_key"

    .line 707
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_flashmode_key"

    .line 708
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pref_filter_menu"

    .line 709
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pref_setting_key"

    .line 710
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "pref_subsetting_key"

    .line 714
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 718
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 722
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 760
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 761
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/m;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->i(Z)V

    const/4 p0, 0x0

    .line 762
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->J(Z)V

    return-object v0
.end method

.method public isLongExposureSceneMenuOpen()Z
    .locals 2

    .line 1121
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_long_exposure_scene_menu_state"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_tuning_data_raw"

    .line 769
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "type_tuning_data_yuv"

    .line 770
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "type_capture"

    .line 774
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 778
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 3

    const-string p1, "LongExposureMode"

    const-string p2, "onAfterPictureTaken"

    .line 544
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aJ()V

    .line 548
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/preview/a/t;->n(Z)V

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->i()V

    .line 554
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_1

    .line 555
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 556
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, p2, p2}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 557
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x4

    .line 558
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 557
    invoke-interface {p1, v0, v1, v2, p2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 559
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 2

    .line 504
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 510
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 4

    .line 402
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    const-string p1, "LongExposureMode"

    const-string v0, "onAfterStartPreview"

    .line 404
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result p1

    const-string v0, "pref_long_exposure_scene_menu_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    iget-object v3, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {v3}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/longexposure/k;->a(IZ)V

    .line 408
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/m;->b(Z)V

    .line 409
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/longexposure/k;->a(Z)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/longexposure/d;->a(Z)V

    .line 414
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 415
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/g;->d()I

    move-result p1

    invoke-direct {p0, p1, v2, v2, v2}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_1

    .line 419
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBeforePreview()V
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "onBeforePreview"

    .line 367
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d;->m(I)V

    :cond_0
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 4

    const-string p1, "LongExposureMode"

    const-string v0, "onBeforeSnapping"

    .line 426
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/m$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/m$4;-><init>(Lcom/oplus/camera/capmode/m;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 472
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 473
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 474
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 475
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 474
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/preview/a/t;->n(Z)V

    .line 482
    :cond_1
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/m;->m:Z

    return v1
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 538
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    const/4 p1, 0x1

    .line 539
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/m;->o:Z

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 532
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    const/4 p1, 0x0

    .line 533
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/m;->o:Z

    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 4

    const-string p1, "LongExposureMode"

    const-string v0, "onDeInitCameraMode"

    .line 625
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    .line 632
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    .line 633
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/m;->a(Z)V

    const/4 p1, 0x0

    .line 634
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    .line 635
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    const-string v1, "com.oplus.feature.street.long.exposure.support"

    .line 636
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 637
    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_long_exposure_scene_menu_state"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 638
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    .line 640
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 641
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->m(I)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "onDestroy"

    .line 647
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    .line 650
    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 1

    const-string p1, "LongExposureMode"

    const-string v0, "onEffectMenuPopDown"

    .line 855
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 857
    invoke-direct {p0, p1, p1, p1}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    .line 858
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_long_exposure_scene_menu_state"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 1

    const/4 v0, 0x1

    .line 841
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    return-void
.end method

.method public onFirstCaptureFrameAdd()V
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "onFirstCaptureFrameAdd"

    .line 565
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/m;->m:Z

    .line 568
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return-void
.end method

.method public onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    .line 1228
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/m;->mbPaused:Z

    if-nez p2, :cond_2

    .line 1229
    move-object p2, p1

    check-cast p2, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/g;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLongExposureType:Ljava/lang/String;

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLongExposureSettingTime:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "manual"

    .line 1238
    iput-object v0, p2, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLongExposureSettingTime:Ljava/lang/String;

    .line 1241
    :goto_0
    iget-wide v0, p0, Lcom/oplus/camera/capmode/m;->l:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLongExposureTotalCaptureTime:Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_flashmode_key"

    .line 864
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    iget p1, p0, Lcom/oplus/camera/capmode/m;->mCameraId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/m;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 866
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 869
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "on"

    .line 871
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 877
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 880
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 3

    const-string v0, "LongExposureMode"

    const-string v1, "onInitCameraMode"

    .line 152
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_restore_long_exposure_params"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->f()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/oplus/camera/ui/o;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v2, Lcom/oplus/camera/capmode/m$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/m$1;-><init>(Lcom/oplus/camera/capmode/m;)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/o;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/g$a;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Lcom/oplus/camera/ui/i;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v2, Lcom/oplus/camera/capmode/m$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/m$2;-><init>(Lcom/oplus/camera/capmode/m;)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/i;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/i$a;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    if-nez v0, :cond_3

    .line 204
    new-instance v0, Lcom/oplus/camera/longexposure/g;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/longexposure/g;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->t:Lcom/oplus/camera/longexposure/f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/g;->a(Lcom/oplus/camera/longexposure/f;)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    if-nez v0, :cond_4

    .line 209
    new-instance v0, Lcom/oplus/camera/longexposure/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/longexposure/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->t:Lcom/oplus/camera/longexposure/f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/d;->a(Lcom/oplus/camera/longexposure/f;)V

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/d;->a(I)V

    .line 215
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 216
    new-instance v0, Lcom/oplus/camera/capmode/m$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/m$3;-><init>(Lcom/oplus/camera/capmode/m;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/m;->j:Landroid/os/Handler;

    .line 248
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->g()V

    .line 249
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->e()V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    .line 818
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    const-string p1, "LongExposureMode"

    const-string v0, "onMoreModeHidden"

    .line 820
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 823
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    .line 824
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/g;->b(Z)V

    .line 827
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pref_long_exposure_scene_menu_state"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    .line 828
    invoke-direct {p0, v0, v0, p1}, Lcom/oplus/camera/capmode/m;->a(ZZZ)V

    .line 829
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 830
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, p1, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 831
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, p1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/capmode/m;->p:Lcom/oplus/camera/longexposure/g;

    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/g;->d()I

    move-result p1

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/oplus/camera/capmode/m;->a(IZII)V

    .line 834
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_1

    .line 835
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onMoreModeShown()V
    .locals 3

    const-string v0, "LongExposureMode"

    const-string v1, "onMoreModeShown"

    .line 802
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/k;->b(Z)V

    .line 805
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/m;->a(Z)V

    .line 806
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/capmode/m;->a(ZZ)V

    .line 807
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_long_exposure_scene_menu_state"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 809
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 813
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "LongExposureMode"

    const-string v1, "onPause"

    .line 596
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/m;->n:Z

    .line 600
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v2, "type_still_capture_raw"

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;Z)V

    .line 604
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/m;->m:Z

    .line 605
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->d(IZ)V

    .line 607
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/o;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/o;->a()V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/i;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/i;->a()V

    .line 613
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_3

    .line 614
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->n(Z)V

    :cond_3
    return-void
.end method

.method public onPictureCallback([BIIIZI)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/o;->a()V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/i;->a()V

    .line 527
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 744
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz p1, :cond_1

    .line 746
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 747
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid totalResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LongExposureMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "LongExposureMode"

    const-string v1, "onSingleTapUp"

    .line 788
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "LongExposureMode"

    const-string v0, "OnStop"

    .line 620
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTakePicture, mbFirstCaptureFrameAdd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/m;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/o;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 576
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->m:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->h:Lcom/oplus/camera/ui/o;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/o;->a()V

    :cond_0
    return v1

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/m;->m:Z

    if-eqz v0, :cond_2

    .line 583
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->i:Lcom/oplus/camera/ui/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/i;->a()V

    :cond_2
    return v1

    .line 589
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/m;->h()V

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->s:Lcom/oplus/camera/longexposure/k;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/k;->d(I)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->q:Lcom/oplus/camera/longexposure/d;

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/d;->a(I)V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/m;->r:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 499
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    return-void
.end method

.method public supportBeautyButton()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->isLongExposureSceneMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 380
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->supportBeautyButton()Z

    move-result p0

    return p0
.end method
