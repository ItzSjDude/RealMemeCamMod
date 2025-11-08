.class Lcom/oplus/camera/e/e$9;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/c;

.field final synthetic b:Lcom/oplus/camera/e/d$a;

.field final synthetic c:I

.field final synthetic d:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;I)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iput-object p2, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iput-object p3, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    iput p4, p0, Lcom/oplus/camera/e/e$9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "05ct_doCapture: "

    const-string v1, "CameraCapturePerformance.doCapture"

    .line 744
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    invoke-static {v2}, Lcom/oplus/camera/e/e;->t(Lcom/oplus/camera/e/e;)V

    .line 745
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    invoke-static {v2}, Lcom/oplus/camera/e/e;->u(Lcom/oplus/camera/e/e;)Z

    move-result v2

    .line 746
    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    invoke-static {v3, v4}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/c;)Lcom/oplus/camera/e/c;

    .line 748
    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    invoke-static {v3, v4}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/d$a;)Lcom/oplus/camera/e/d$a;

    .line 749
    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget v4, p0, Lcom/oplus/camera/e/e$9;->c:I

    invoke-static {v3, v4}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;I)I

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "burstCapture, pictureNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/e/e$9;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestTag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mbBurstShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iget-boolean v4, v4, Lcom/oplus/camera/e/c;->j:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", checkZoomState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", featureType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iget v4, v4, Lcom/oplus/camera/e/c;->X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ev list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iget-object v4, v4, Lcom/oplus/camera/e/c;->L:[I

    .line 756
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneCameraImpl"

    .line 751
    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iget-boolean v3, v3, Lcom/oplus/camera/e/c;->j:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    .line 760
    invoke-static {v3}, Lcom/oplus/camera/e/e;->v(Lcom/oplus/camera/e/e;)I

    move-result v3

    sget v5, Lcom/oplus/camera/util/Util;->d:I

    if-lt v3, v5, :cond_0

    const-string p0, "burstCapture, mMtkCShortRequestNum reach max, return!"

    .line 761
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 766
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    if-eqz v3, :cond_1

    .line 767
    invoke-interface {v3}, Lcom/oplus/camera/e/d$a;->checkIfLockAutoExposure()V

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "burstCapture, checkZoomState false, return!"

    .line 771
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 776
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget v2, v2, Lcom/oplus/camera/e/e;->u:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    invoke-static {v2, v3}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/d$a;)Lcom/oplus/camera/e/d$a;

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/e/e$9;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 783
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v5, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    invoke-static {v2, v3, v5}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 785
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v5, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    iget-wide v5, v5, Lcom/oplus/camera/e/c;->ab:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 787
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    invoke-static {v2}, Lcom/oplus/camera/e/e;->s(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    invoke-static {v3}, Lcom/oplus/camera/e/e;->w(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraPictureCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    iget-object v5, v5, Lcom/oplus/camera/e/e;->r:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5}, Lcom/oplus/ocs/camera/CameraDevice;->takePicture(Lcom/oplus/ocs/camera/CameraPictureCallback;Landroid/os/Handler;)V

    .line 789
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v2

    if-nez v2, :cond_3

    .line 790
    iget-object v2, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oplus/camera/e/e;->e(Lcom/oplus/camera/e/e;I)I

    .line 793
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/e/e$9;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/oplus/camera/e/e$9;->d:Lcom/oplus/camera/e/e;

    invoke-virtual {v0}, Lcom/oplus/camera/e/e;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 797
    iget-object v1, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    if-eqz v1, :cond_4

    .line 798
    iget-object p0, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    invoke-interface {v1, p0}, Lcom/oplus/camera/e/d$a;->onCaptureCanceled(Lcom/oplus/camera/e/c;)V

    .line 801
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "burstCapture, exception: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/e/e$9;->b:Lcom/oplus/camera/e/d$a;

    if-eqz v0, :cond_6

    .line 805
    iget-object p0, p0, Lcom/oplus/camera/e/e$9;->a:Lcom/oplus/camera/e/c;

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d$a;->onCaptureCanceled(Lcom/oplus/camera/e/c;)V

    :cond_6
    :goto_0
    return-void
.end method
