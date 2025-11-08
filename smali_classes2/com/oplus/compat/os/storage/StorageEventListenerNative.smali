.class public Lcom/oplus/compat/os/storage/StorageEventListenerNative;
.super Ljava/lang/Object;
.source "StorageEventListenerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageEventListenerNative"


# instance fields
.field private mDelegate:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method delegate()Landroid/os/storage/StorageEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->mDelegate:Landroid/os/storage/StorageEventListener;

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStorageStateChangedCompat(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeStateChanged(Lcom/oplus/compat/os/storage/VolumeInfoNative;II)V
    .locals 0

    return-void
.end method

.method public onVolumeStateChangedCompat(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-direct {v0, p1}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->onVolumeStateChanged(Lcom/oplus/compat/os/storage/VolumeInfoNative;II)V

    return-void
.end method

.method setDelegate(Landroid/os/storage/StorageEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->mDelegate:Landroid/os/storage/StorageEventListener;

    return-void

    .line 30
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not supported before S"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
