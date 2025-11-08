.class public Lcom/oplus/compat/os/storage/StorageVolumeNative;
.super Ljava/lang/Object;
.source "StorageVolumeNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/os/storage/StorageVolumeNative$RefStorageVolumeExt;,
        Lcom/oplus/compat/os/storage/StorageVolumeNative$RefStorageVolume;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageVolumeNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFatVolumeId(Landroid/os/storage/StorageVolume;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getFatVolumeId()I

    move-result p0

    return p0

    .line 71
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/oplus/inner/os/storage/StorageVolumeWrapper;->getFatVolumeId(Landroid/os/storage/StorageVolume;)I

    move-result p0

    return p0

    .line 73
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {p0}, Lcom/oplus/compat/os/storage/StorageVolumeNative;->getFatVolumeIdCompat(Landroid/os/storage/StorageVolume;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 75
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getFatVolumeId()I

    move-result p0

    return p0

    .line 78
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getFatVolumeIdCompat(Landroid/os/storage/StorageVolume;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOplusReadOnlyType(Landroid/os/storage/StorageVolume;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/oplus/compat/os/storage/StorageVolumeNative$RefStorageVolume;->mStorageVolumeExt:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 54
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageVolumeNative$RefStorageVolumeExt;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 55
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p0}, Lcom/oplus/inner/os/storage/StorageVolumeWrapper;->getReadOnlyType(Landroid/os/storage/StorageVolume;)I

    move-result p0

    return p0

    .line 57
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {p0}, Lcom/oplus/compat/os/storage/StorageVolumeNative;->getOplusReadOnlyTypeCompat(Landroid/os/storage/StorageVolume;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 59
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageVolumeNative$RefStorageVolume;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 62
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getOplusReadOnlyTypeCompat(Landroid/os/storage/StorageVolume;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/oplus/compat/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getPathCompat(Landroid/os/storage/StorageVolume;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
