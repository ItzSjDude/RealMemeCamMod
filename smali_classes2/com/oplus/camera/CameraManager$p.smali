.class Lcom/oplus/camera/CameraManager$p;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 7663
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 7663
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$p;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 7666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeTypeChanged, switch mode to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7668
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "onModeTypeChanged, ModeManager is null, CameraManager has been destroyed."

    .line 7669
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7674
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aG()V

    .line 7675
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aH()V

    const-string v0, "more"

    .line 7677
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 7678
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7679
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/aa;->c(Z)V

    .line 7682
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aO(Lcom/oplus/camera/CameraManager;)V

    .line 7683
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aP(Lcom/oplus/camera/CameraManager;)V

    .line 7685
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7686
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/aa;->c(Z)V

    .line 7689
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7690
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->P(I)V

    .line 7691
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->dK()V

    .line 7694
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;Z)V

    .line 7695
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    new-array v0, v1, [I

    const v1, 0x7f10025a

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->b([I)V

    .line 7696
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 7697
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "more_menu_reddot_show"

    .line 7698
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7699
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 7701
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7702
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7703
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dJ()V

    .line 7704
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZI)V

    .line 7705
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    goto :goto_1

    .line 7708
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_multicamera_type_menu_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7709
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->J(Z)V

    .line 7714
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7716
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dJ()V

    .line 7717
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;I)V

    .line 7718
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2, v2, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 7721
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    const-string v4, "pref_camera_mode_key"

    invoke-static {v3, v1, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZLjava/lang/String;)V

    .line 7722
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;Z)Z

    .line 7723
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZLjava/lang/String;)V

    .line 7726
    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->b(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$p;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/oplus/camera/util/Util;->a(ILandroid/content/Context;Z)V

    :goto_2
    return-void
.end method
