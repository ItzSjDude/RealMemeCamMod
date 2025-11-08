.class public abstract Lcom/heytap/accessory/api/IPeripheralService$Stub;
.super Landroid/os/Binder;
.source "IPeripheralService.java"

# interfaces
.implements Lcom/heytap/accessory/api/IPeripheralService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IPeripheralService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IPeripheralService"

    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeripheralService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IPeripheralService"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/heytap/accessory/api/IPeripheralService;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/heytap/accessory/api/IPeripheralService;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/heytap/accessory/api/IPeripheralService;
    .locals 1

    .line 310
    sget-object v0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->a:Lcom/heytap/accessory/api/IPeripheralService;

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

    const-string v1, "com.heytap.accessory.api.IPeripheralService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 132
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a(Lcom/heytap/accessory/api/IPeripheralCallback;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 116
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 125
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;Z)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 100
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 103
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 109
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p0, v2, p1}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 93
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 77
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 80
    sget-object p1, Lcom/heytap/accessory/bean/AdvertiseSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/heytap/accessory/bean/AdvertiseSetting;

    .line 86
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p1

    .line 87
    invoke-virtual {p0, v2, p1}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/api/IPeripheralCallback;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
