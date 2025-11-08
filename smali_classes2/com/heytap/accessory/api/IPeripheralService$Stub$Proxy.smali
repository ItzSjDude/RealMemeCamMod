.class Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPeripheralService.java"

# interfaces
.implements Lcom/heytap/accessory/api/IPeripheralService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IPeripheralService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IPeripheralService;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralService"

    .line 197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 200
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IPeripheralService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw p0
.end method

.method public a(Lcom/heytap/accessory/api/IPeripheralCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralService"

    .line 273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Lcom/heytap/accessory/api/IPeripheralCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 275
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 277
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 278
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/api/IPeripheralCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 282
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/api/IPeripheralCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralService"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/AdvertiseSetting;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 177
    invoke-interface {p2}, Lcom/heytap/accessory/api/IPeripheralCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 178
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 180
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 181
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/api/IPeripheralCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 185
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralService"

    .line 217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 219
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {p1, v0, v2}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 228
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/DeviceInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 233
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralService"

    .line 245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 253
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 256
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 257
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/DeviceInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 261
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralService$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
