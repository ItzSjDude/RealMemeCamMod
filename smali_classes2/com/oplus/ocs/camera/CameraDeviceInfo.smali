.class public Lcom/oplus/ocs/camera/CameraDeviceInfo;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# instance fields
.field private mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    .line 39
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    return-void
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigureParameterRange(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getConfigureParameterRange(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getConflictParameter()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v1, :cond_0

    .line 264
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getConflictParameter()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getConflictParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v1, :cond_0

    .line 295
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getConflictParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getPhysicalCameraTypeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getPhysicalCameraTypeList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewParameterRange(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getPreviewParameterRange(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 233
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getSupportPictureFormat()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPictureFormat()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportPictureFormat(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPictureFormat(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 144
    :catch_0
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getSupportPictureFormat()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportPictureSize()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPictureSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportPictureSize(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPictureSize(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 113
    :catch_0
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPictureSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportPreviewSize(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPreviewSize(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportPreviewSize(ILjava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPreviewSize(ILjava/util/Map;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 82
    :catch_0
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportPreviewSize(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportVideoSize()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportVideoSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportVideoSize(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportVideoSize(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 174
    :catch_0
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->getSupportVideoSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isPreviewAlgoDisable(I)Z
    .locals 1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->isPreviewAlgoDisable(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportConfigureParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "*>;)Z"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->isSupportConfigureParameter(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPreviewParameter(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "*>;)Z"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceInfo;->mCameraDeviceInfoAdapter:Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;->isSupportPreviewParameter(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
