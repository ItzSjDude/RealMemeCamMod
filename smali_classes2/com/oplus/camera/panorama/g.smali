.class public Lcom/oplus/camera/panorama/g;
.super Ljava/lang/Object;
.source "RearPanoramaEngine.java"

# interfaces
.implements Lcom/arcsoft/camera/burstpmk/BurstPMKEngine$PMKListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/panorama/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

.field private b:Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:Lcom/oplus/camera/panorama/g$a;

.field private j:Landroid/hardware/SensorManager;

.field private k:Landroid/hardware/Sensor;

.field private l:Landroid/media/Image;

.field private m:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/oplus/camera/panorama/g$a;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->a:Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->b:Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    const/16 v1, 0x802

    .line 40
    iput v1, p0, Lcom/oplus/camera/panorama/g;->c:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/oplus/camera/panorama/g;->d:I

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/oplus/camera/panorama/g;->e:I

    .line 43
    iput v1, p0, Lcom/oplus/camera/panorama/g;->f:I

    .line 44
    iput v1, p0, Lcom/oplus/camera/panorama/g;->g:I

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->i:Lcom/oplus/camera/panorama/g$a;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->j:Landroid/hardware/SensorManager;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->k:Landroid/hardware/Sensor;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    .line 51
    new-instance v0, Lcom/oplus/camera/panorama/g$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/panorama/g$1;-><init>(Lcom/oplus/camera/panorama/g;)V

    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->m:Landroid/hardware/SensorEventListener;

    .line 76
    iput p2, p0, Lcom/oplus/camera/panorama/g;->e:I

    .line 77
    iput p3, p0, Lcom/oplus/camera/panorama/g;->f:I

    .line 78
    iget p2, p0, Lcom/oplus/camera/panorama/g;->e:I

    const-string p3, "com.oplus.aligned.bits"

    invoke-static {p3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/oplus/camera/util/Util;->f(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/panorama/g;->g:I

    .line 79
    iput-object p4, p0, Lcom/oplus/camera/panorama/g;->i:Lcom/oplus/camera/panorama/g$a;

    .line 80
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "com/arcsoft/rearpanorama"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 83
    iget-object p3, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-nez p3, :cond_0

    .line 84
    new-instance p3, Lcom/oplus/camera/panorama/g$2;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/panorama/g$2;-><init>(Lcom/oplus/camera/panorama/g;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    :cond_0
    const-string p2, "sensor"

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/oplus/camera/panorama/g;->j:Landroid/hardware/SensorManager;

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/panorama/g;->j:Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/panorama/g;->k:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->a:Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/g;Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/panorama/g;->a:Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/panorama/g;Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/panorama/g;->b:Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/panorama/g;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/panorama/g;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/camera/panorama/g;->e:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/panorama/g;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/camera/panorama/g;->f:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/panorama/g;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/camera/panorama/g;->d:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->b:Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/panorama/g;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/camera/panorama/g;->g:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "RearPanoramaEngine"

    const-string v1, "uninit"

    .line 191
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->j:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RearPanoramaEngine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 180
    iput v1, v0, Landroid/os/Message;->what:I

    .line 181
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/panorama/g;->j:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->k:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->m:Landroid/hardware/SensorEventListener;

    const/16 v2, 0x2710

    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/media/Image;)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendImage, skip image process! timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RearPanoramaEngine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    iput-object p1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :goto_0
    return-void
.end method

.method public a([Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "RearPanoramaEngine"

    const-string v1, "destroy"

    .line 204
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "RearPanoramaEngine"

    const-string v1, "stopProcessing"

    .line 236
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->l:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->h:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onPMKNotify(ILjava/lang/Object;)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const-string v1, "RearPanoramaEngine"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->i:Lcom/oplus/camera/panorama/g$a;

    check-cast p2, Lcom/arcsoft/camera/burstpmk/ProcessResult;

    invoke-interface {p0, p2}, Lcom/oplus/camera/panorama/g$a;->b(Lcom/arcsoft/camera/burstpmk/ProcessResult;)V

    goto :goto_0

    :cond_1
    const-string p1, "onPMKNotify, onCaptureFailed"

    .line 257
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->i:Lcom/oplus/camera/panorama/g$a;

    invoke-interface {p0}, Lcom/oplus/camera/panorama/g$a;->g()V

    goto :goto_0

    :cond_2
    const-string p1, "onPMKNotify, onCaptureSuccess"

    .line 263
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/panorama/g;->i:Lcom/oplus/camera/panorama/g$a;

    check-cast p2, Lcom/arcsoft/camera/burstpmk/ProcessResult;

    invoke-interface {p0, p2}, Lcom/oplus/camera/panorama/g$a;->a(Lcom/arcsoft/camera/burstpmk/ProcessResult;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
