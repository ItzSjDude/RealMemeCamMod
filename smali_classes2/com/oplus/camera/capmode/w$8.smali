.class Lcom/oplus/camera/capmode/w$8;
.super Lcom/oplus/ocs/camera/CameraRecordingCallback;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 2357
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$8;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingResult(Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;)V
    .locals 1

    .line 2360
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/CameraRecordingCallback;->onRecordingResult(Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;)V

    if-nez p1, :cond_0

    return-void

    .line 2366
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;->getRecordingState()I

    move-result p0

    .line 2368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordingResult, state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
