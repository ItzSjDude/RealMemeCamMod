.class Lcom/oplus/camera/ui/menu/setting/k$4;
.super Ljava/lang/Object;
.source "CameraSettingActivityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/k;->onPreferenceClick(Landroidx/preference/Preference;)Z
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

    .line 1483
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x2

    const-string v1, "network"

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1488
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "pref_allow_network_access"

    invoke-virtual {p2, v0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1489
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_camera_statement_agree"

    .line 1490
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_camera_statement_key"

    .line 1491
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1492
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1493
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/k;->f(Lcom/oplus/camera/ui/menu/setting/k;)V

    .line 1494
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1495
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string p1, "agree"

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1501
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$4;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string p1, "cancel"

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
