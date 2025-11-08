.class public Lcom/oplus/compat/hardware/camera2/impl/CameraMetadataNativeNative;
.super Ljava/lang/Object;
.source "CameraMetadataNativeNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyBuf(Ljava/lang/Object;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/oplus/inner/hardware/camera2/impl/CameraMetadataNativeWrapper;->copyBuf(Ljava/lang/Object;J)I

    move-result p0

    return p0

    .line 28
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {p0, p1, p2}, Lcom/oplus/compat/hardware/camera2/impl/CameraMetadataNativeNative;->copyBufCompat(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 31
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported in S"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyBufCompat(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBufSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/oplus/inner/hardware/camera2/impl/CameraMetadataNativeWrapper;->getBufSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 47
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/oplus/compat/hardware/camera2/impl/CameraMetadataNativeNative;->getBufSizeCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 50
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBufSizeCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMetadataPtr(Landroid/hardware/camera2/CameraMetadata;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadata;->getNativeMetadataPtr()J

    move-result-wide v0

    return-wide v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/oplus/inner/hardware/camera2/impl/CameraMetadataNativeWrapper;->getMetadataPtr(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    .line 67
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {p0}, Lcom/oplus/compat/hardware/camera2/impl/CameraMetadataNativeNative;->getMetadataPtrCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 70
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMetadataPtrCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVendorTagId(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 86
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 95
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 98
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getVendorId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v3

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 103
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v0

    .line 107
    :cond_4
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-static {p0}, Lcom/oplus/inner/hardware/camera2/impl/CameraMetadataNativeWrapper;->getVendorTagId(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0

    .line 109
    :cond_5
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {p0}, Lcom/oplus/compat/hardware/camera2/impl/CameraMetadataNativeNative;->getVendorTagIdCompat(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0

    .line 112
    :cond_6
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getVendorTagIdCompat(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
