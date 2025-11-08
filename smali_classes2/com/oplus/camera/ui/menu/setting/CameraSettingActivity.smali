.class public Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;
.super Lcom/oplus/camera/ui/menu/setting/l;
.source "CameraSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "CameraSettingActivity"

    const-string v1, "attachBaseContext, follow system dpi."

    .line 35
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->r(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/l;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, densityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fontScale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/oplus/camera/util/Util;->b:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 48
    sget v0, Lcom/oplus/camera/util/Util;->c:F

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/l;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11001c

    .line 58
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0c0151

    .line 61
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "com.oplus.camera.ui.menu.setting.CameraSettingActivity"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/k;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {v1}, Lcom/oplus/camera/ui/menu/setting/k;-><init>()V

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v2, 0x7f090192

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->b()I

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(), Action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraSettingActivity"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f100373

    .line 74
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/j;->a(Landroidx/appcompat/app/c;Landroid/content/Intent;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.camera.action.SETTING_MENU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "camera_intent_data"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/setting/k;->setArguments(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->c(Z)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oplus.intent.action.APP_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method
