.class public abstract Lcom/heytap/accessory/api/IPeripheralCallback$Stub;
.super Landroid/os/Binder;
.source "IPeripheralCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IPeripheralCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IPeripheralCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IPeripheralCallback"

    .line 50
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeripheralCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IPeripheralCallback"

    .line 61
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    instance-of v1, v0, Lcom/heytap/accessory/api/IPeripheralCallback;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lcom/heytap/accessory/api/IPeripheralCallback;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static c()Lcom/heytap/accessory/api/IPeripheralCallback;
    .locals 1

    .line 484
    sget-object v0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->a:Lcom/heytap/accessory/api/IPeripheralCallback;

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

    const-string v1, "com.heytap.accessory.api.IPeripheralCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 200
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    sget-object p1, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/Message;

    .line 208
    :cond_0
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(Lcom/heytap/accessory/bean/Message;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 179
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 188
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 189
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/heytap/accessory/bean/Message;

    .line 194
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 165
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 173
    :cond_3
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 137
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_1

    :cond_4
    move-object p1, v3

    .line 146
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 147
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/heytap/accessory/bean/Message;

    .line 152
    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v3, p3, v0}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 109
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 112
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/DeviceInfo;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 118
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    .line 119
    sget-object p4, Lcom/heytap/accessory/bean/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/heytap/accessory/bean/Message;

    .line 124
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v3, p3, v0}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 131
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 102
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->b()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 93
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 86
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->a()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 78
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
