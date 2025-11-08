.class Lcom/oplus/camera/capmode/d$11;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Lcom/oplus/camera/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->initBeauty3DManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onExitScan, beauty3D exit"

    .line 371
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d$11;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p0, "CommonCapMode"

    const-string p1, "onScanCancel, Beauty3DState == BEAUTY3D_STATE_SCAN_CANCEL, return"

    .line 449
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/capmode/d;->setBeauty3DState(I)V

    .line 456
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/d;->access$200(Lcom/oplus/camera/capmode/d;Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onScanComplete, beauty3D scan Complete"

    .line 378
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_bubble_type_add_beuty3d"

    .line 382
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/d;->access$200(Lcom/oplus/camera/capmode/d;Z)V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v2}, Lcom/oplus/camera/capmode/d;->access$300(Lcom/oplus/camera/capmode/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 391
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beauty3d_scan_time"

    .line 390
    invoke-static {v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const-string v1, "beauty3d"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/d;->access$200(Lcom/oplus/camera/capmode/d;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->G()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->p(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartScan, open dual camera, Beauty3DState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oplus/camera/capmode/d;->access$302(Lcom/oplus/camera/capmode/d;J)J

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartScan, BeautyCurrIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->I()Lcom/oplus/camera/ui/preview/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->createEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->b(Landroid/content/Context;)Z

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/d;->access$200(Lcom/oplus/camera/capmode/d;Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 430
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/d;->access$200(Lcom/oplus/camera/capmode/d;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->b(Landroid/content/Context;)Z

    .line 437
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->I()Lcom/oplus/camera/ui/preview/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->createEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$11;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 441
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
