.class Lcom/oplus/tingle/ipc/IMaster$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMaster.java"

# interfaces
.implements Lcom/oplus/tingle/ipc/IMaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tingle/ipc/IMaster$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/oplus/tingle/ipc/IMaster;


# instance fields
.field private b:Landroid/os/IBinder;


# virtual methods
.method public a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.tingle.ipc.IMaster"

    .line 94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/oplus/tingle/ipc/IMaster$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 97
    invoke-static {}, Lcom/oplus/tingle/ipc/IMaster$Stub;->b()Lcom/oplus/tingle/ipc/IMaster;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-static {}, Lcom/oplus/tingle/ipc/IMaster$Stub;->b()Lcom/oplus/tingle/ipc/IMaster;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/tingle/ipc/IMaster;->a()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/tingle/ipc/IMaster$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
