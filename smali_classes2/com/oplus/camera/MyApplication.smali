.class public Lcom/oplus/camera/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/oplus/ocs/camera/CameraUnitClient;

.field private static c:Z

.field private static d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/oplus/camera/e/d;


# instance fields
.field private f:Landroid/os/ConditionVariable;

.field private g:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/oplus/camera/MyApplication;->e:Lcom/oplus/camera/e/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 62
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/MyApplication;->f:Landroid/os/ConditionVariable;

    .line 63
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/MyApplication;->g:Landroid/os/ConditionVariable;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/MyApplication;)Landroid/os/ConditionVariable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/MyApplication;->f:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static a()Lcom/oplus/camera/e/d;
    .locals 1

    .line 66
    sget-object v0, Lcom/oplus/camera/MyApplication;->e:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/oplus/camera/e/f;

    invoke-direct {v0}, Lcom/oplus/camera/e/f;-><init>()V

    sput-object v0, Lcom/oplus/camera/MyApplication;->e:Lcom/oplus/camera/e/d;

    .line 70
    :cond_0
    sget-object v0, Lcom/oplus/camera/MyApplication;->e:Lcom/oplus/camera/e/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 116
    sget-object v0, Lcom/oplus/camera/MyApplication;->b:Lcom/oplus/ocs/camera/CameraUnitClient;

    const-string v1, "MyApplication"

    if-eqz v0, :cond_0

    const-string p0, "initCameraUnit, already init"

    .line 117
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/h;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 123
    sget-object p0, Lcom/oplus/camera/MyApplication;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnit;->getCameraClient(Landroid/content/Context;)Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/MyApplication;->b:Lcom/oplus/ocs/camera/CameraUnitClient;

    goto :goto_0

    :cond_1
    const-string p0, "initCameraUnit, without camera permission, init CameraUnit failed! "

    .line 125
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/MyApplication;)Landroid/os/ConditionVariable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/MyApplication;->g:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 164
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/MyApplication$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/MyApplication$1;-><init>(Lcom/oplus/camera/MyApplication;Landroid/content/Context;)V

    const-string p0, "Camera Initialize"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p0

    sget-object p1, Lcom/oplus/camera/-$$Lambda$8Dx7trwBYg9W64pF8jpKEwJajzQ;->INSTANCE:Lcom/oplus/camera/-$$Lambda$8Dx7trwBYg9W64pF8jpKEwJajzQ;

    const-string v0, "init MyRegionAdapter"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 74
    sget-boolean v0, Lcom/oplus/camera/MyApplication;->c:Z

    return v0
.end method

.method public static c()V
    .locals 4

    const-string v0, "MyApplication"

    const-string v1, "finishActivities E"

    .line 82
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    sget-object v1, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    sget-object v1, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishActivities, activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    const-string v1, "finishActivities X"

    .line 94
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/MyApplication;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oplus/camera/MyApplication;->p()V

    return-void
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .line 98
    sget-object v0, Lcom/oplus/camera/MyApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/oplus/camera/MyApplication;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oplus/camera/MyApplication;->m()V

    return-void
.end method

.method public static e()V
    .locals 4

    .line 102
    sget-object v0, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 103
    instance-of v2, v1, Lcom/oplus/camera/CameraImageActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishCameraImageActivityIfExist activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyApplication"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f()Lcom/oplus/ocs/camera/CameraUnitClient;
    .locals 1

    .line 112
    sget-object v0, Lcom/oplus/camera/MyApplication;->b:Lcom/oplus/ocs/camera/CameraUnitClient;

    return-object v0
.end method

.method public static g()Z
    .locals 3

    .line 130
    sget-object v0, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 131
    instance-of v2, v1, Lcom/oplus/camera/Camera;

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCameraActivityRunning, activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyApplication"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static h()V
    .locals 4

    .line 144
    sget-object v0, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 145
    instance-of v2, v1, Lcom/oplus/camera/ui/menu/setting/l;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishCameraSettingBaseActivityIfExist activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyApplication"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k()Landroid/content/Context;
    .locals 1

    .line 53
    sget-object v0, Lcom/oplus/camera/MyApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l()Ljava/util/Stack;
    .locals 1

    .line 53
    sget-object v0, Lcom/oplus/camera/MyApplication;->d:Ljava/util/Stack;

    return-object v0
.end method

.method private m()V
    .locals 4

    const-string v0, "MyApplication"

    const-string v1, "checkTuningUpgrade"

    .line 192
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "checkTuningUpgrade, cannot get SharedPreferences"

    .line 198
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/oplus/camera/MyApplication;->n()V

    goto :goto_0

    :cond_0
    const-string v2, "copy_tuning_file_state"

    const/4 v3, 0x0

    .line 202
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/MyApplication;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTuningUpgrade, ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oplus/camera/tuningupgrade/TuningParameterUpgradeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.oplus.camera.TUNING_UPGRADE"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "MyApplication"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "version"

    const-string v2, "1.0"

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "code"

    const-string v2, "camera_tuning_upgrade"

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/oplus/camera/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private o()V
    .locals 1

    .line 272
    new-instance v0, Lcom/oplus/camera/MyApplication$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/MyApplication$2;-><init>(Lcom/oplus/camera/MyApplication;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/MyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oplus/camera/aps/service/ApsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v1, "MyApplication"

    const-string v2, "startDaemonService, stopService and startForegroundService"

    .line 333
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/oplus/camera/MyApplication;->stopService(Landroid/content/Intent;)Z

    .line 336
    invoke-virtual {p0, v0}, Lcom/oplus/camera/MyApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string p1, "attachBaseContext"

    .line 156
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;)V

    .line 160
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/MyApplication;->f:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    const-string p0, "MyApplication"

    const-string v0, "checkPreInitStatus X"

    .line 253
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/oplus/camera/MyApplication;->g:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    const-string p0, "MyApplication"

    const-string v0, "checkPreviewConfigStatus X"

    .line 259
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->f(Landroid/content/Context;)V

    .line 219
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    sput v0, Lcom/oplus/camera/util/Util;->b:I

    .line 220
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    sput v0, Lcom/oplus/camera/util/Util;->c:F

    .line 221
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, config sDefaultDensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysDensityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysFontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyApplication"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "CameraStartupPerformance.onCameraApplicationCreated"

    .line 234
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 236
    sput-object p0, Lcom/oplus/camera/MyApplication;->a:Landroid/content/Context;

    .line 237
    sget-object v1, Lcom/oplus/camera/MyApplication;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/camera/MyApplication;->a(Landroid/content/Context;)V

    .line 239
    invoke-direct {p0, p0}, Lcom/oplus/camera/MyApplication;->b(Landroid/content/Context;)V

    .line 240
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 242
    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->f(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 244
    invoke-virtual {p0}, Lcom/oplus/camera/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/Storage;->a(Landroid/content/Context;)V

    .line 245
    invoke-direct {p0}, Lcom/oplus/camera/MyApplication;->o()V

    .line 247
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/oplus/camera/util/Util;->k()V

    .line 323
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/w/d;->c()V

    .line 324
    invoke-static {}, Lcom/oplus/camera/MyApplication;->a()Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->d()V

    .line 326
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
