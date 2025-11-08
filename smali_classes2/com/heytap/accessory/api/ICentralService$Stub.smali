.class public abstract Lcom/heytap/accessory/api/ICentralService$Stub;
.super Landroid/os/Binder;
.source "ICentralService.java"

# interfaces
.implements Lcom/heytap/accessory/api/ICentralService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/ICentralService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/ICentralService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.ICentralService"

    .line 67
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/ICentralService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/ICentralService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.ICentralService"

    .line 78
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Lcom/heytap/accessory/api/ICentralService;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/heytap/accessory/api/ICentralService;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/ICentralService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/ICentralService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/heytap/accessory/api/ICentralService;
    .locals 1

    .line 665
    sget-object v0, Lcom/heytap/accessory/api/ICentralService$Stub$Proxy;->a:Lcom/heytap/accessory/api/ICentralService;

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

    const-string v1, "com.heytap.accessory.api.ICentralService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 275
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 283
    :cond_0
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 266
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/INsdDevicesCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/INsdDevicesCallback;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/api/INsdDevicesCallback;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 255
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;

    move-result-object p2

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Ljava/lang/String;Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 246
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IPermissionCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPermissionCallback;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/api/IPermissionCallback;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 229
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    sget-object p1, Lcom/heytap/accessory/bean/DirectPairInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DirectPairInfo;

    .line 238
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDirectPairCallback;

    move-result-object p1

    .line 239
    invoke-virtual {p0, v3, p1}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/api/IDirectPairCallback;)I

    move-result p0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 219
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(I)Z

    move-result p0

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 197
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 205
    :cond_2
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/ICentralService$Stub;->b(Lcom/heytap/accessory/bean/DeviceInfo;)I

    move-result p0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v3, p3, v0}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 186
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v2, v0

    .line 191
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(IZ)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 165
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 168
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 173
    :cond_5
    invoke-virtual {p0, v3}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/bean/DeviceInfo;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    .line 176
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v3, p3, v0}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 180
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 134
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 137
    sget-object p1, Lcom/heytap/accessory/bean/PairSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/PairSetting;

    goto :goto_2

    :cond_7
    move-object p1, v3

    .line 143
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    .line 144
    sget-object p4, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/heytap/accessory/bean/DeviceInfo;

    .line 150
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDisPairCallback;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, v3, p2}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/api/IDisPairCallback;)I

    move-result p0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v3, :cond_9

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v3, p3, v0}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 159
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 127
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/heytap/accessory/api/ICentralService$Stub;->a()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 103
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 106
    sget-object p1, Lcom/heytap/accessory/bean/ScanSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/ScanSetting;

    goto :goto_4

    :cond_a
    move-object p1, v3

    .line 112
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 113
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/os/Bundle;

    .line 119
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/IDisScanCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDisScanCallback;

    move-result-object p2

    .line 120
    invoke-virtual {p0, p1, v3, p2}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Lcom/heytap/accessory/bean/ScanSetting;Landroid/os/Bundle;Lcom/heytap/accessory/api/IDisScanCallback;)I

    move-result p0

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 95
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
