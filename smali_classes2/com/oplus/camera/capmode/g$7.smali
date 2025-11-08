.class Lcom/oplus/camera/capmode/g$7;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/g;->onVideoRecordingFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$7;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$7;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 554
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$7;->a:Lcom/oplus/camera/capmode/g;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    :cond_0
    return-void
.end method
