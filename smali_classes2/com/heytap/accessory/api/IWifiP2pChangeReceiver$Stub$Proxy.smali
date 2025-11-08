.class Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiP2pChangeReceiver.java"

# interfaces
.implements Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IWifiP2pChangeReceiver"

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object p0, p0, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 114
    invoke-static {}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;->a()Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    invoke-static {}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;->a()Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;->a(Lcom/heytap/accessory/bean/DeviceInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
