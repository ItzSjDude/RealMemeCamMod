.class Lcom/oplus/camera/e/e$1;
.super Lcom/oplus/ocs/camera/CameraStateCallback;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/e/d$b;

.field final synthetic c:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;ILcom/oplus/camera/e/d$b;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iput p2, p0, Lcom/oplus/camera/e/e$1;->a:I

    iput-object p3, p0, Lcom/oplus/camera/e/e$1;->b:Lcom/oplus/camera/e/d$b;

    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraClosed, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/w/a;->c()V

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraDevice;)Lcom/oplus/ocs/camera/CameraDevice;

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/e;Z)Z

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;Z)Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/e;->B(I)V

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget-object v0, v0, Lcom/oplus/camera/e/e;->q:Lcom/oplus/camera/w/b;

    new-instance v1, Lcom/oplus/camera/e/e$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/e/e$1$1;-><init>(Lcom/oplus/camera/e/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 224
    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget-object p0, p0, Lcom/oplus/camera/e/e;->o:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onCameraDisconnected()V
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDisconnected, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/e;->b(Z)V

    .line 236
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->e(Lcom/oplus/camera/e/e;)V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/e/e;->w(Z)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->b:Lcom/oplus/camera/e/d$b;

    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/e/d$b;->a(ZI)V

    return-void
.end method

.method public onCameraError(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraError, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/w/a;->c()V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/e;->b(Z)V

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->e(Lcom/oplus/camera/e/e;)V

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/e/e;->w(Z)V

    .line 256
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->getErrorCode()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->b:Lcom/oplus/camera/e/d$b;

    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {p1, v2, p0}, Lcom/oplus/camera/e/d$b;->a(ZI)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->b:Lcom/oplus/camera/e/d$b;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->getErrorCode()I

    move-result p1

    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, p1, p0}, Lcom/oplus/camera/e/d$b;->a(II)V

    :goto_0
    return-void
.end method

.method public onCameraOpened(Lcom/oplus/ocs/camera/CameraDevice;)V
    .locals 6

    const-string v0, "launch_camera_opened"

    .line 168
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOpened, mCameraNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraDevic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraStartupPerformance.onCameraOpened"

    .line 172
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v3, p0, Lcom/oplus/camera/e/e$1;->a:I

    invoke-static {v2, v3}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;I)I

    .line 176
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oplus/camera/e/e$1;->a:I

    .line 177
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connected_camera_ids"

    .line 176
    invoke-virtual {v2, v3, v5, v4}, Lcom/oplus/camera/w/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oplus/camera/e/e$1;->a:I

    .line 180
    invoke-static {v4}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "active_camera_type"

    .line 178
    invoke-virtual {v2, v3, v5, v4}, Lcom/oplus/camera/w/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v2, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraDevice;)Lcom/oplus/ocs/camera/CameraDevice;

    .line 183
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 185
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget-object v3, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v3}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/e/h;->f()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, v3}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Z)Z

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpened, mbMtkLowMemoryPlatform: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/e;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraOpened, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/e/e;->B(I)V

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 196
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionClosed()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/e;->B(I)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v2, v2, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d$d;->a(Lcom/oplus/camera/e/c;I)V

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d$d;->b(I)V

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionClosed, last session closed, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionConfigureFail(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V
    .locals 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionConfigureFail, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->getErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    .line 289
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/e;->B(I)V

    .line 294
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {p1}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {p1}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/e/d$d;->a()V

    .line 298
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->g(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onSessionConfigured()V
    .locals 3

    const-string v0, "launch_session_configured"

    .line 266
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionConfigured, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    .line 269
    invoke-static {v1}, Lcom/oplus/camera/e/e;->f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 268
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraStartupPerformance.onCameraCaptureSessionConfigured"

    .line 271
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/camera/e/e;->B(I)V

    .line 276
    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/e;Z)Z

    .line 278
    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v1}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {v1, v2}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;Z)Z

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->g(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 284
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method
