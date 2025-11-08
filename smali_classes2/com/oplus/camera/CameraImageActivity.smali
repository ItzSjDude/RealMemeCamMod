.class public Lcom/oplus/camera/CameraImageActivity;
.super Landroid/app/Activity;
.source "CameraImageActivity.java"


# instance fields
.field private a:Lcom/oplus/camera/h;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->a:Lcom/oplus/camera/h;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    .line 23
    iput v1, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getReferrer()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/CameraImageActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/oplus/camera/CameraImageActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    const-string v0, "com.oplus.camera.extra.IS_VOICE_INTERACTION_ROOT"

    .line 110
    iget-boolean v1, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    const-string v2, "CameraImageActivity"

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchCameraActivity, mbLaunchCameraActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchCameraActivity, isVoiceInteractionRoot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v1

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    :cond_2
    :goto_1
    new-instance v0, Lcom/oplus/camera/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;)V

    iput-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->a:Lcom/oplus/camera/h;

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->a:Lcom/oplus/camera/h;

    invoke-virtual {v0}, Lcom/oplus/camera/h;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "onCreate, has no necessaryPermissions so clean task"

    .line 139
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    const-string v2, "extra_key_caller_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oplus/camera/Camera;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraImageActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01005e

    const v1, 0x7f01005f

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/CameraImageActivity;->overridePendingTransition(II)V

    .line 150
    iput-boolean v5, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f110328

    .line 32
    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraImageActivity;->setTheme(I)V

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 39
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    .line 40
    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v0

    .line 41
    invoke-direct {p0}, Lcom/oplus/camera/CameraImageActivity;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasNavigationBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCallerHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraImageActivity"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/oplus/camera/CameraImageActivity;->d:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/CameraImageActivity;->b()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", launched: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraImageActivity"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    if-nez v0, :cond_1

    .line 60
    iget v0, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lifecycleCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    if-le v0, v3, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/oplus/camera/CameraImageActivity;->b()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraImageActivity;->e:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/CameraImageActivity$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraImageActivity$1;-><init>(Lcom/oplus/camera/CameraImageActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lifecycleCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", launched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraImageActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/oplus/camera/CameraImageActivity;->b:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/oplus/camera/CameraImageActivity;->finish()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/oplus/camera/CameraImageActivity;->c:I

    :cond_0
    return-void
.end method
