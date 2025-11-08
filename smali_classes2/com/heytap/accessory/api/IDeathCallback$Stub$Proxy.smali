.class Lcom/heytap/accessory/api/IDeathCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeathCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IDeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IDeathCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IDeathCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/heytap/accessory/api/IDeathCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDeathCallback"

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/heytap/accessory/api/IDeathCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 98
    invoke-static {}, Lcom/heytap/accessory/api/IDeathCallback$Stub;->b()Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-static {}, Lcom/heytap/accessory/api/IDeathCallback$Stub;->b()Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IDeathCallback;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/heytap/accessory/api/IDeathCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
