.class public Lcom/oplus/compat/os/storage/VolumeInfoNative;
.super Ljava/lang/Object;
.source "VolumeInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeInfoNative"


# instance fields
.field private mVolumeInfo:Landroid/os/storage/VolumeInfo;

.field private mVolumeInfoObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Landroid/os/storage/VolumeInfo;

    iput-object p1, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    goto :goto_0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static getFsUuidCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIdCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringPathCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSdCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFsUuid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getFsUuidCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 112
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getIdCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 55
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public getPath()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    .line 74
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public getStringPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    return-object p0

    .line 88
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getStringPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getStringPathCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 93
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public getVolumeInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-object p0

    .line 38
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    return-object p0

    .line 41
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method public isSd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 127
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->isSd()Z

    move-result p0

    return p0

    .line 129
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->isSdCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 132
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method
