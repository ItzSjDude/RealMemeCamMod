.class public abstract Lcom/heytap/accessory/api/IWifiP2pService$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pService.java"

# interfaces
.implements Lcom/heytap/accessory/api/IWifiP2pService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IWifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IWifiP2pService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IWifiP2pService"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IWifiP2pService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IWifiP2pService"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/heytap/accessory/api/IWifiP2pService;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IWifiP2pService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IWifiP2pService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/heytap/accessory/api/IWifiP2pService;
    .locals 1

    .line 297
    sget-object v0, Lcom/heytap/accessory/api/IWifiP2pService$Stub$Proxy;->a:Lcom/heytap/accessory/api/IWifiP2pService;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.accessory.api.IWifiP2pService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 123
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->b(Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;)Z

    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 113
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->a(Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;)Z

    move-result p0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 99
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 102
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 107
    :cond_3
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->b(Lcom/heytap/accessory/bean/DeviceInfo;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 84
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 87
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 92
    :cond_5
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 76
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->a()Ljava/util/List;

    move-result-object p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 68
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
