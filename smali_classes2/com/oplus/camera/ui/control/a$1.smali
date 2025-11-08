.class Lcom/oplus/camera/ui/control/a$1;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;


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

    .line 226
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonClick, ShutterButton.id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraControlUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oplus/camera/algovisualization/g;->a(J)V

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/a;->ap()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "onShutterButtonClick, moreTab is showing...."

    .line 241
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onShutterButtonClick, ModePickerView follow finger can\'t response"

    .line 247
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    invoke-static {v1}, Lcom/oplus/camera/ui/menu/g;->a(Z)V

    const-string p1, "onShutterButtonClick, camera menu is popup...."

    .line 255
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    sget-object p1, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "00ct_ShutterButtonClick"

    const-string v2, "CameraCapturePerformance.onShutterButtonClick"

    invoke-static {v2, p1, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->c(Lcom/oplus/camera/ui/control/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 261
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->j()V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bs()V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->am()V

    .line 266
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bv()V

    .line 267
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    goto :goto_0

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    .line 269
    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const-string v3, "key_short_video"

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->A()V

    .line 271
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->am()V

    .line 272
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    goto :goto_0

    .line 274
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->h()V

    .line 278
    :goto_0
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;Z)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->b(Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonLongClick, ShutterButton.id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onShutterButtonLongClick, moreTab is showing...."

    .line 286
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onShutterButtonLongClick, ModePickerView follow finger can\'t response"

    .line 292
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 297
    :cond_1
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 302
    :cond_2
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "01ct_ShutterButtonLongClick"

    const-string v3, "CameraCapturePerformance.onShutterButtonLongClick"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f090338

    if-ne p1, v0, :cond_3

    .line 305
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->i()V

    .line 308
    :cond_3
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f090338

    if-ne p1, v0, :cond_1

    .line 314
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->c(Z)V

    .line 316
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    .line 317
    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getMoveStatus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bs()V

    .line 320
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setShowAdhesion(Z)V

    .line 321
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setShowLine(Z)V

    .line 322
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d()V

    .line 323
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/a;->b(I)V

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bv()V

    .line 325
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    .line 327
    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const-string v1, "key_short_video"

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 328
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getMoveStatus()Z

    move-result p1

    if-nez p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->A()V

    .line 330
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setShowAdhesion(Z)V

    .line 331
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setShowLine(Z)V

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->e(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d()V

    .line 333
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bR()V

    .line 343
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a()Z

    move-result p1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    const-string v1, "com.oplus.disable.shutter.button.up.vibrate"

    if-eqz p1, :cond_1

    .line 344
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 345
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    .line 350
    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 351
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 352
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    const-string p1, "com.oplus.strong.vibrate.support"

    .line 353
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/16 p1, 0x44

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    .line 364
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.disable.shutter.button.up.vibrate"

    .line 365
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.oplus.disable.shutter.button.down.vibrate"

    .line 366
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "com.oplus.strong.vibrate.support"

    .line 371
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$1;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/16 p1, 0x44

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    :cond_3
    :goto_0
    return-void
.end method
