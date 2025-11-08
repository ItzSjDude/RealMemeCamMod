.class Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILanCacheIpServiceCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.ILanCacheIpServiceCallback"

    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 131
    invoke-static {}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;->a()Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 132
    invoke-static {}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;->a()Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 136
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
