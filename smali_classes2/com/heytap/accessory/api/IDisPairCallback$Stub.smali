.class public abstract Lcom/heytap/accessory/api/IDisPairCallback$Stub;
.super Landroid/os/Binder;
.source "IDisPairCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IDisPairCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IDisPairCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IDisPairCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IDisPairCallback"

    .line 35
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/heytap/accessory/api/IDisPairCallback;
    .locals 1

    .line 288
    sget-object v0, Lcom/heytap/accessory/api/IDisPairCallback$Stub$Proxy;->a:Lcom/heytap/accessory/api/IDisPairCallback;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDisPairCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IDisPairCallback"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Lcom/heytap/accessory/api/IDisPairCallback;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/heytap/accessory/api/IDisPairCallback;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IDisPairCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IDisPairCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.accessory.api.IDisPairCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 120
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 129
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 130
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/heytap/accessory/bean/Message;

    .line 135
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;->c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 92
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 95
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_1

    :cond_4
    move-object p1, v2

    .line 101
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 102
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/heytap/accessory/bean/Message;

    .line 107
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;->b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v2, p3, v0}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    .line 114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 71
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 74
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_3

    :cond_8
    move-object p1, v2

    .line 80
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 81
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/heytap/accessory/bean/Message;

    .line 86
    :cond_9
    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 63
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
