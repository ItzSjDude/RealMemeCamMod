.class Lcom/oplus/camera/ui/menu/setting/k$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraSettingActivityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/k;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive(), action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SettingActivityFragment"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "com.oplus.storage.save.to.external.support"

    .line 190
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    .line 191
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.coloros.movetosdcard"

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    .line 192
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "pref_storage_save_to_external"

    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    invoke-static {p2}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_3

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/k;->b(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Z)V

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/k;->c(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/k;->b(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/k;->c(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$1;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/k;->b(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method
