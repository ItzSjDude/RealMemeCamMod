.class public abstract Lcom/oplus/camera/ui/menu/setting/l;
.super Landroidx/appcompat/app/c;
.source "CameraSettingBaseActivity.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/a;


# instance fields
.field private k:Lcom/oplus/camera/ui/menu/setting/a/a;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->l:Z

    .line 40
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->m:Z

    .line 41
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->n:Z

    .line 42
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->p:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/l;->n:Z

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 264
    sget v0, Lcom/oplus/camera/util/Util;->b:I

    if-lez v0, :cond_0

    .line 265
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 266
    sget v1, Lcom/oplus/camera/util/Util;->b:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    return-void
.end method

.method public c()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public c(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/l;->m:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 197
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 215
    :cond_0
    :pswitch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 225
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public h_()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/l;->n:Z

    return p0
.end method

.method public m()Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    sget p0, Lcom/oplus/camera/q/a;->a:I

    if-ne p0, p1, :cond_1

    const/4 p0, -0x1

    if-ne p0, p2, :cond_0

    .line 99
    invoke-static {p3}, Lcom/oplus/camera/q/a;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/oplus/camera/q/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "SettingBaseActivity"

    const-string v1, "onBackPressed"

    .line 145
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    .line 151
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/c;->onBackPressed()V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/c;->onContentChanged()V

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/a/a;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->initialize(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Landroid/app/Activity;)V

    .line 56
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/a/a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->h()Landroidx/appcompat/app/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/a/a;->a(Landroidx/appcompat/app/e;)V

    .line 59
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/coui/appcompat/a/t;->a()Lcom/coui/appcompat/a/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/a/t;->a(Landroid/content/Context;)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "camera_intent_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "camera_enter_form_lock_screen"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/l;->p:Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingBaseActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->n:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/a/a;->a(Landroid/view/MenuItem;)V

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingBaseActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/c;->onPause()V

    .line 171
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/g;->f()V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onPostCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/l;->k:Lcom/oplus/camera/ui/menu/setting/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->h()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/a/a;->b(Landroidx/appcompat/app/e;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingBaseActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Landroidx/appcompat/app/c;->onResume()V

    .line 160
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/l;->setShowWhenLocked(Z)V

    .line 162
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingBaseActivity"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 182
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/l;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/l;->setShowWhenLocked(Z)V

    :cond_0
    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/l;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->setShowWhenLocked(Z)V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShowWhenLocked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingBaseActivity"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
