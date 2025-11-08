.class Lcom/oplus/camera/ui/menu/setting/k$3;
.super Ljava/lang/Object;
.source "CameraSettingActivityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/k;->t()V
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

    .line 529
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$3;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 532
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k$3;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_photo_codec_key"

    const-string v0, "JPEG"

    .line 533
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_photo_codec_click_key"

    .line 534
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_10bits_heic_encode_key"

    const-string v2, "off"

    .line 535
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k$3;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/setting/k;->d(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/android/ui/menu/CameraSwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 537
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k$3;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/setting/k;->e(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/android/ui/menu/CameraSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 538
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k$3;->a:Lcom/oplus/camera/ui/menu/setting/k;

    invoke-virtual {p0, p2, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
