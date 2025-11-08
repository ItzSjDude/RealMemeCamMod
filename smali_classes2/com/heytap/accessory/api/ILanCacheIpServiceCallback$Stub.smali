.class public abstract Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ILanCacheIpServiceCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.ILanCacheIpServiceCallback"

    .line 29
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;
    .locals 1

    .line 160
    sget-object v0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;->a:Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.ILanCacheIpServiceCallback"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.accessory.api.ILanCacheIpServiceCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 68
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_0

    :cond_1
    move-object p1, p4

    .line 74
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/heytap/accessory/bean/Message;

    .line 80
    :cond_2
    invoke-virtual {p0, p1, p4}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 57
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
