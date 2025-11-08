.class public final Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
.super Ljava/lang/Object;
.source "CameraDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    .line 52
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/ocs/camera/CameraDeviceConfig;
    .locals 2

    .line 128
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceConfig;

    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->build()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig;-><init>(Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraDeviceConfig$1;)V

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setMode(Ljava/lang/String;)V

    return-object p0
.end method

.method public setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "TT;>;TT;)",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setPictureConfig(Ljava/util/List;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;",
            ">;)",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setPictureConfig(Ljava/util/List;)V

    return-object p0
.end method

.method public setPreviewConfig(Ljava/util/List;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;",
            ">;)",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setPreviewConfig(Ljava/util/List;)V

    return-object p0
.end method

.method public setVideoConfig(Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setVideoConfig(Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;)V

    :cond_0
    return-object p0
.end method

.method public setVideoSize(Landroid/util/Size;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->mBuilderAdapter:Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->setVideoSize(Landroid/util/Size;)V

    return-object p0
.end method
