.class Lcom/oplus/camera/ui/control/a$8;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewReleased, isReachBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isQuickVideoRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    .line 437
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(Z)V

    if-eqz p1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->g(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(II)V

    .line 447
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/control/a;->g(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 450
    :cond_1
    invoke-static {v3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setReachBorderState(Z)V

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bw()V

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->h(Lcom/oplus/camera/ui/control/a;)Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f0100c3

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 454
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/control/a;->i(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-static {v4, v5, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 455
    iget-object v4, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/control/a;->j(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v4

    invoke-static {v4, v5, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->i(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->setClickable(Z)V

    .line 457
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->i(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/ShutterButton;->setEnabled(Z)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bs()V

    .line 462
    :goto_1
    invoke-static {v3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->k(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    .line 465
    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->k(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v4, "key_high_picture_size"

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    .line 466
    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bv()V

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const-string v4, "key_short_video"

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_4

    .line 473
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->A()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    .line 475
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->g(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 476
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    invoke-direct {p1, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(II)V

    .line 478
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->g(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oplus/camera/ui/control/b;)V

    .line 481
    :cond_5
    invoke-static {v3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setReachBorderState(Z)V

    .line 482
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$8;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bw()V

    .line 485
    :cond_6
    :goto_2
    invoke-static {v3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    :cond_7
    return-void
.end method
