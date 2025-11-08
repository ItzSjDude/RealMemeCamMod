.class Lcom/oplus/camera/ui/d$8;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1378
    iput-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "CameraUIManager"

    const-string v0, "mFaceBeautyEnterButtonListener, onClick"

    .line 1381
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->f(IZ)V

    .line 1384
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->f(IZ)V

    .line 1386
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1387
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->Z()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1388
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ad()V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cw()V

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aA()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ew()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 1401
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ec()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, preview not started"

    .line 1402
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1407
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dF()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isHeadlineScrolling: true"

    .line 1408
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isMoreModePanelAnimRunning: true"

    .line 1414
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1419
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isMoreModeShown: true"

    .line 1420
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1425
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ec()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isPreviewStarted: false"

    .line 1426
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1431
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isBlurMenuOpen: true"

    .line 1432
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1437
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->L()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isTimerSnapShotRunning: true"

    .line 1438
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1443
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ah()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "mFaceBeautyEnterButtonListener, onClick, isZoomMenuExpand: true"

    .line 1444
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1449
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1450
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->m()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1451
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1452
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->A(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1453
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->M(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->M(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_1

    .line 1459
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->n()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1460
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 1461
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aK()V

    .line 1462
    iget-object p0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/d;->g(Lcom/oplus/camera/ui/d;Z)V

    goto/16 :goto_0

    .line 1464
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1465
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/b;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xa

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1466
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->N(Lcom/oplus/camera/ui/d;)I

    move-result v0

    if-eq p1, v0, :cond_d

    const/16 p1, 0x10

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1467
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->N(Lcom/oplus/camera/ui/d;)I

    move-result v0

    if-ne p1, v0, :cond_e

    :cond_d
    const/4 p1, 0x2

    iget-object v0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1468
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/b;->a()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1469
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1472
    :cond_e
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->b()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    .line 1473
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aJ()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1474
    :cond_f
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/d;->u(Z)V

    .line 1477
    :cond_10
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/f;->c()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1478
    iget-object p1, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/setting/f;->a(I)V

    .line 1481
    :cond_11
    iget-object p0, p0, Lcom/oplus/camera/ui/d$8;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/d;->g(Lcom/oplus/camera/ui/d;Z)V

    :goto_0
    return-void

    :cond_12
    :goto_1
    const-string p0, "mFaceBeautyEnterButtonListener, onClick, return"

    .line 1454
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_2
    const-string p0, "mFaceBeautyEnterButtonListener, onClick, MultiCameraTypeLayout is Visible"

    .line 1397
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
