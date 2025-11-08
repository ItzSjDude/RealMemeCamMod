.class public Lcom/oplus/os/OplusUsbEnvironment;
.super Ljava/lang/Object;
.source "OplusUsbEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "unmounted"

    return-object v0
.end method

.method public static getExternalSdVolumePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/emulated/0"

    return-object v0
.end method

.method public static getExternalStorageOTGDirectory()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStoragePublicOTGDirectory()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "mounted"

    return-object v0
.end method

.method public static getInternalSdVolumePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/emulated/0"

    return-object v0
.end method

.method public static getUsbdiskState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "unmounted"

    return-object v0
.end method

.method public static getUsbdiskVolumePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/emulated/0"

    return-object v0
.end method

.method public static isExternalSdMounted(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalStorageOTGDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isInternalSdMounted(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isUsbDiskMounted(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
