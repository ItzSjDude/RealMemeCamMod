.class public final Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;
.super Ljava/lang/Object;
.source "CameraPreviewCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraPreviewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPreviewResult"
.end annotation


# instance fields
.field private mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    .line 76
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->addRef()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->close()V

    return-void
.end method

.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;->getDefault()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBokehState()I
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->getApsTotalResult()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "BOKEH_STATE"

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->mPreviewResultAdapter:Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
