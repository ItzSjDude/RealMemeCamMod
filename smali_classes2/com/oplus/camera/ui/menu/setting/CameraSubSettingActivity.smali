.class public Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;
.super Lcom/oplus/camera/ui/menu/setting/l;
.source "CameraSubSettingActivity.java"


# instance fields
.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/l;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->k:I

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 77
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->k:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const v0, 0x7f100386

    .line 78
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const v0, 0x7f10039d

    .line 80
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const v0, 0x7f100336

    .line 82
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    const v0, 0x7f1004f5

    .line 84
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    const v0, 0x7f100335

    .line 86
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f100342

    .line 88
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/l;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11001c

    .line 44
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0c0151

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "com.oplus.camera.ui.menu.setting.CameraSubSettingActivity"

    .line 50
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/p;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {v1}, Lcom/oplus/camera/ui/menu/setting/p;-><init>()V

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v2, 0x7f090192

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->b()I

    .line 58
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oplus.intent.action.APP_SUB_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "camera_intent_data"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/setting/p;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->c(Z)V

    if-eqz p1, :cond_2

    const-string v0, "camera_sub_setting_from"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->k:I

    .line 71
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
