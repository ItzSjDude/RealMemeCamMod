.class Lcom/oplus/camera/ui/d$59;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/q$b;


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

    .line 10446
    iput-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 10449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExpandMenuShow, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10451
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->s(Ljava/lang/String;)Z

    .line 10453
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->aj(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10454
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->c(ZI)V

    goto :goto_0

    .line 10455
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10456
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aX()I

    move-result v0

    if-eq v1, v0, :cond_2

    const-string v0, "pref_video_blur_menu"

    .line 10457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10458
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->h()V

    .line 10463
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10464
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->q()V

    :cond_3
    const/4 v0, 0x4

    .line 10467
    iget-object v2, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->aX()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 10468
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->j(ZZ)V

    .line 10469
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->h(ZZ)V

    .line 10472
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->f(IZ)V

    .line 10473
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->f(IZ)V

    .line 10475
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10476
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aE()Ljava/lang/String;

    move-result-object v0

    .line 10478
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10479
    iget-object v2, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v2, v1, p1}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;)V

    :cond_5
    const-string v2, "_from_other_app"

    .line 10482
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10483
    iget-object p0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 4

    .line 10490
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10491
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aE()Ljava/lang/String;

    move-result-object v0

    .line 10493
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10494
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "_from_other_app"

    .line 10495
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10496
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 10498
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/camera/ui/d;->g(Ljava/lang/String;Z)V

    .line 10502
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->aj(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10503
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    .line 10504
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->L()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    .line 10507
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ui/d;->b(ZI)V

    goto :goto_1

    .line 10509
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    .line 10510
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->aX()I

    move-result p1

    if-eq v2, p1, :cond_4

    .line 10511
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/oplus/camera/ui/control/a;->b(ZZ)V

    :cond_4
    :goto_1
    if-nez p3, :cond_8

    .line 10516
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 10517
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bV()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    .line 10518
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bl()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10519
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v2, v2}, Lcom/oplus/camera/ui/d;->l(ZZ)V

    .line 10522
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 10523
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bV()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    .line 10524
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bm()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    .line 10525
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->u(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 10526
    iget-object p0, p0, Lcom/oplus/camera/ui/d$59;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/ui/d;->i(ZZ)V

    :cond_8
    return-void
.end method
