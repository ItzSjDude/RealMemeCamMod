.class public Lcom/oplus/camera/e/h;
.super Ljava/lang/Object;
.source "OplusCameraCharacteristics.java"


# instance fields
.field private final a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/CameraDeviceInfo;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/e/h;->d:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    return-void
.end method


# virtual methods
.method public A()[I
    .locals 1

    .line 632
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->COLOR_TEMPERATURE_RANGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getPreviewParameterRange(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public C()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v1, Lcom/oplus/camera/e/b;->u:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v1, 0x0

    .line 649
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 650
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 651
    new-instance v3, Landroid/util/Size;

    aget v4, p0, v1

    aget v2, p0, v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public D()Z
    .locals 6

    .line 696
    sget-object v0, Lcom/oplus/camera/e/b;->w:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    .line 697
    sget-object v1, Lcom/oplus/camera/e/b;->x:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 699
    array-length v3, v0

    if-lez v3, :cond_1

    .line 700
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v0, v4

    if-ne v5, v2, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p0, :cond_3

    .line 708
    array-length v3, p0

    if-lez v3, :cond_3

    .line 709
    array-length v3, p0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_3

    aget v5, p0, v4

    if-ne v5, v2, :cond_2

    move p0, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public E()Z
    .locals 5

    .line 721
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 725
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/b;->x:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 727
    array-length v2, p0

    if-lez v2, :cond_2

    .line 728
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    if-ne v4, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public F()Lcom/oplus/ocs/camera/CameraDeviceInfo;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    return-object p0
.end method

.method public G()Z
    .locals 0

    .line 782
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public H()Z
    .locals 5

    .line 787
    sget-object v0, Lcom/oplus/camera/e/b;->ax:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 789
    array-length v1, p0

    if-lez v1, :cond_1

    .line 790
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public I()I
    .locals 2

    .line 822
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    sget-object v0, Lcom/oplus/camera/e/b;->aL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    goto :goto_0

    .line 825
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/b;->aM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 828
    array-length v1, p0

    if-lez v1, :cond_1

    .line 829
    aget p0, p0, v0

    return p0

    :cond_1
    const-string p0, "OplusCameraCharacteristics"

    const-string v1, "getLogicalCameraType, cameraTypeArray is null or the length is 0"

    .line 832
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public J()Z
    .locals 1

    .line 882
    sget-object v0, Lcom/oplus/camera/e/b;->aV:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public K()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getSupportVideoSize()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public a(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 376
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float p1, v1, v0

    const v0, -0x438a3d71    # -0.015f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 381
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 382
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 385
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 386
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p1
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/e/h;->d:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 194
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 199
    invoke-virtual {v0, v2, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getSupportPreviewSize(ILjava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 203
    :cond_1
    monitor-enter p0

    .line 204
    :try_start_1
    iput-object v1, p0, Lcom/oplus/camera/e/h;->d:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/e/h;->d:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 206
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 194
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    .line 79
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 97
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 103
    array-length v3, v1

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 104
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    if-eq v1, p1, :cond_5

    .line 110
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->C()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 114
    invoke-static {v2, v3}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Landroid/util/Size;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 115
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v1, "com.oplus.sort.capture.size.support"

    .line 121
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    invoke-static {v2, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Z)V

    .line 125
    :cond_6
    monitor-enter p0

    .line 126
    :try_start_2
    iget-object v0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    const-string v1, "OplusCameraCharacteristics"

    const-string v2, "Unable to obtain picture sizes"

    .line 86
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/e/h;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_1
    move-exception p1

    .line 79
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(ILandroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 144
    :try_start_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p1, "OplusCameraCharacteristics"

    const-string p2, "getSupportedPhysicalPictureSizes, Unable to obtain picture sizes"

    .line 147
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    iget-object p2, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit p0

    return-object p1

    .line 154
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 157
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 158
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 164
    array-length v0, p1

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 165
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->C()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 174
    invoke-static {p2, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Landroid/util/Size;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string p1, "com.oplus.sort.capture.size.support"

    .line 180
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 181
    invoke-static {p2, v1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Z)V

    .line 184
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/e/h;->c:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 186
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/oplus/camera/af;F)Z
    .locals 1

    .line 487
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->c(Lcom/oplus/camera/af;)F

    move-result v0

    .line 488
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->d(Lcom/oplus/camera/af;)F

    move-result p0

    .line 490
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/oplus/camera/af;)[F
    .locals 2

    const/4 v0, 0x0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v1, :cond_6

    .line 292
    invoke-virtual {p1}, Lcom/oplus/camera/af;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    invoke-virtual {p1}, Lcom/oplus/camera/af;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-boolean p1, p1, Lcom/oplus/camera/af;->a:Z

    if-eqz p1, :cond_0

    .line 297
    sget-object p1, Lcom/oplus/camera/e/b;->aK:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    .line 301
    sget-object p1, Lcom/oplus/camera/e/b;->aJ:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->g()[F

    move-result-object p1

    :cond_3
    return-object p1

    .line 310
    :cond_4
    invoke-virtual {p1}, Lcom/oplus/camera/af;->i()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/oplus/camera/af;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 311
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->h()[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedZoomRange, e: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCameraCharacteristics"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public a(Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x2

    .line 890
    new-array v1, v0, [I

    .line 891
    sget-object v2, Lcom/oplus/camera/e/b;->aV:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p0

    const-string v2, "video_size_720p"

    .line 892
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2d0

    goto :goto_0

    :cond_0
    const/16 p1, 0x438

    :goto_0
    if-eqz p0, :cond_3

    .line 895
    array-length v2, p0

    if-lez v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 896
    :goto_1
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 897
    aget v4, p0, v3

    if-ne v4, p1, :cond_1

    add-int/lit8 p1, v3, 0x1

    .line 898
    aget p1, p0, p1

    aput p1, v1, v2

    add-int/2addr v3, v0

    .line 899
    aget p0, p0, v3

    aput p0, v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 907
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAvailableSMVRModes, fps: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", batch num: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCameraCharacteristics"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lcom/oplus/camera/af;)F
    .locals 2

    .line 393
    invoke-virtual {p1}, Lcom/oplus/camera/af;->k()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/oplus/camera/af;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/af;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->c(Lcom/oplus/camera/af;)F

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 403
    invoke-virtual {p1}, Lcom/oplus/camera/af;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->a(Lcom/oplus/camera/af;)[F

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/af;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->i()[F

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/af;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 408
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->l()[F

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    const/4 p0, 0x2

    .line 412
    aget p0, v0, p0

    return p0

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_6
    :goto_1
    const-string p0, "com.oplus.portrait.zoom.value.default"

    .line 394
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 669
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntArrayConfig, e: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCameraCharacteristics"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public c(Lcom/oplus/camera/af;)F
    .locals 2

    .line 419
    invoke-virtual {p1}, Lcom/oplus/camera/af;->A()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/af;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->a(Lcom/oplus/camera/af;)[F

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 426
    aget p0, p0, p1

    return p0

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/af;->m()Z

    move-result p0

    const v0, 0x3f19999a    # 0.6f

    if-eqz p0, :cond_2

    return v0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/af;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 431
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/af;->e()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/af;->g()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public c()I
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public d(Lcom/oplus/camera/af;)F
    .locals 5

    .line 439
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/h;->a(Lcom/oplus/camera/af;)[F

    move-result-object v0

    .line 441
    invoke-virtual {p1}, Lcom/oplus/camera/af;->j()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    return v2

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/af;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/af;->C()Z

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz v1, :cond_2

    return v3

    .line 447
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/af;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "com.oplus.night.zoom.max.value.default"

    .line 448
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 449
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/af;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    if-eqz v0, :cond_5

    .line 451
    array-length v1, v0

    const/4 v4, 0x4

    if-lt v1, v4, :cond_5

    const/4 p0, 0x1

    .line 452
    aget p0, v0, p0

    return p0

    .line 453
    :cond_5
    invoke-virtual {p1}, Lcom/oplus/camera/af;->k()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/oplus/camera/af;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 455
    :cond_6
    invoke-virtual {p1}, Lcom/oplus/camera/af;->x()Z

    move-result v0

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v0, :cond_7

    return v4

    .line 457
    :cond_7
    invoke-virtual {p1}, Lcom/oplus/camera/af;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 459
    :cond_8
    invoke-virtual {p1}, Lcom/oplus/camera/af;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 461
    :cond_9
    invoke-virtual {p1}, Lcom/oplus/camera/af;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 463
    :cond_a
    invoke-virtual {p1}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 464
    invoke-virtual {p1}, Lcom/oplus/camera/af;->b()F

    move-result p0

    return p0

    .line 465
    :cond_b
    invoke-virtual {p1}, Lcom/oplus/camera/af;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    .line 467
    :cond_c
    invoke-virtual {p1}, Lcom/oplus/camera/af;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 469
    :cond_d
    invoke-virtual {p1}, Lcom/oplus/camera/af;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    return v3

    .line 471
    :cond_e
    invoke-virtual {p1}, Lcom/oplus/camera/af;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 473
    :cond_f
    invoke-virtual {p1}, Lcom/oplus/camera/af;->D()Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 p0, 0x40400000    # 3.0f

    return p0

    .line 475
    :cond_10
    invoke-virtual {p1}, Lcom/oplus/camera/af;->E()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 477
    :cond_11
    invoke-virtual {p1}, Lcom/oplus/camera/af;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/oplus/camera/af;->a:Z

    if-nez v0, :cond_12

    iget-boolean v0, p1, Lcom/oplus/camera/af;->b:Z

    if-nez v0, :cond_12

    return v4

    .line 479
    :cond_12
    invoke-virtual {p1}, Lcom/oplus/camera/af;->a()Z

    move-result p1

    if-eqz p1, :cond_13

    return v3

    .line 483
    :cond_13
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->e()F

    move-result p0

    return p0

    :cond_14
    :goto_0
    return v1
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()F
    .locals 1

    .line 242
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public f()I
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v1, Lcom/oplus/camera/e/b;->aW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()[F
    .locals 1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aG:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()[F
    .locals 1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i()[F
    .locals 1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public j()[F
    .locals 3

    const-string v0, "OplusCameraCharacteristics"

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v1, Lcom/oplus/camera/e/b;->aX:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFovAngle error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "getFovAngle enter, return null"

    .line 344
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k()[B
    .locals 1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aU:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public l()[F
    .locals 1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Lcom/oplus/camera/e/b;->aI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 367
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public m()F
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 496
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 498
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n()F
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 508
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o()Z
    .locals 1

    .line 522
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 523
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public p()I
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 532
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public q()I
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 540
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 541
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public r()F
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 549
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    .line 550
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public s()Z
    .locals 1

    .line 554
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()Z
    .locals 1

    .line 559
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()I
    .locals 1

    .line 568
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 569
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public v()I
    .locals 1

    .line 580
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 581
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public w()I
    .locals 1

    .line 592
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 593
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public x()J
    .locals 2

    .line 604
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 605
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public y()J
    .locals 2

    .line 616
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    if-eqz p0, :cond_0

    .line 617
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public z()[Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object p0, p0, Lcom/oplus/camera/e/h;->a:Lcom/oplus/ocs/camera/CameraDeviceInfo;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    return-object p0
.end method
