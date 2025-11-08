.class Lcom/oplus/camera/ui/d$22;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->j(Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->setBeautyShowDelay(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFilterEffectMenu, needAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraUIManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a()V

    .line 557
    iget-object p1, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->l(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_super_eis_key"

    const-string v1, "off"

    .line 560
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_filter_menu"

    .line 566
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_portrait_new_style_menu"

    .line 567
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_night_filter_menu"

    .line 568
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aW()V

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const-string v1, "key_support_grand_tour_fitlers"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    .line 574
    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cv()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    const-string v0, "pref_face_beauty_recommend_icon_clicked"

    .line 575
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 579
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c(Z)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object p0, p0, Lcom/oplus/camera/ui/d$22;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->b(Z)V

    :cond_0
    return-void
.end method
