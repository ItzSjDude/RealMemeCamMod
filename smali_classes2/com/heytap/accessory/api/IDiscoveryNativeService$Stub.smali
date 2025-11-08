.class public abstract Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;
.super Landroid/os/Binder;
.source "IDiscoveryNativeService.java"

# interfaces
.implements Lcom/heytap/accessory/api/IDiscoveryNativeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IDiscoveryNativeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDiscoveryNativeService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/heytap/accessory/api/IDiscoveryNativeService;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/heytap/accessory/api/IDiscoveryNativeService;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static d()Lcom/heytap/accessory/api/IDiscoveryNativeService;
    .locals 1

    .line 266
    sget-object v0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->a:Lcom/heytap/accessory/api/IDiscoveryNativeService;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.accessory.api.IDiscoveryNativeService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 101
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IDeathCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object v4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback;

    move-result-object v6

    move-object v1, p0

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 93
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->c()Lcom/heytap/accessory/api/IWifiP2pService;

    move-result-object p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 96
    invoke-interface {p0}, Lcom/heytap/accessory/api/IWifiP2pService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 85
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    .line 88
    invoke-interface {p0}, Lcom/heytap/accessory/api/IPeripheralService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 77
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->a()Lcom/heytap/accessory/api/ICentralService;

    move-result-object p0

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_7

    .line 80
    invoke-interface {p0}, Lcom/heytap/accessory/api/ICentralService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 69
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
