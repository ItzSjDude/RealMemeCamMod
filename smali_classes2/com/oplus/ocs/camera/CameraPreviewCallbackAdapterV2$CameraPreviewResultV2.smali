.class public final Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;
.super Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;
.source "CameraPreviewCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPreviewResultV2"
.end annotation


# instance fields
.field private mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    .line 72
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->addRef()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->close()V

    :cond_0
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

    .line 86
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApsTotalResult()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->getApsTotalResult()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;->mPreviewResult:Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
