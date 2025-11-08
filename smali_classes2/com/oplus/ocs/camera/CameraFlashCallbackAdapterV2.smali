.class Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;
.super Lcom/oplus/ocs/camera/appinterface/CameraFlashCallbackAdapter;
.source "CameraFlashCallbackAdapterV2.java"


# instance fields
.field private mCameraFlashCallback:Lcom/oplus/ocs/camera/CameraFlashCallback;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraFlashCallback;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/oplus/ocs/camera/appinterface/CameraFlashCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;->mCameraFlashCallback:Lcom/oplus/ocs/camera/CameraFlashCallback;

    .line 13
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;->mCameraFlashCallback:Lcom/oplus/ocs/camera/CameraFlashCallback;

    return-void
.end method


# virtual methods
.method public onFlashModeChanged(Ljava/lang/String;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;->mCameraFlashCallback:Lcom/oplus/ocs/camera/CameraFlashCallback;

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraFlashCallback;->onFlashModeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFlashModeSupportListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;->mCameraFlashCallback:Lcom/oplus/ocs/camera/CameraFlashCallback;

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraFlashCallback;->onFlashModeSupportListChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method
