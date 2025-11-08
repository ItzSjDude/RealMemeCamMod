.class Lcom/oplus/camera/ui/menu/setting/b$2;
.super Ljava/lang/Object;
.source "BaseLocationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/b;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x2

    const-string v1, "network"

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "pref_allow_network_access"

    invoke-virtual {p2, v0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 581
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/b;->a(Lcom/oplus/camera/ui/menu/setting/b;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    if-nez p2, :cond_1

    .line 582
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/b;->b(Lcom/oplus/camera/ui/menu/setting/b;)V

    .line 585
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-static {p2}, Lcom/oplus/camera/ui/menu/setting/b;->a(Lcom/oplus/camera/ui/menu/setting/b;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_camera_statement_agree"

    .line 586
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_camera_statement_key"

    .line 587
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/b;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 591
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/b;->j()V

    .line 594
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string p1, "agree"

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    .line 601
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 602
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$2;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string p1, "cancel"

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
