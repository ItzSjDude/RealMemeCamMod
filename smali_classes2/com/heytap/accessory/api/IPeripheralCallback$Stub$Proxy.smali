.class Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPeripheralCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IPeripheralCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IPeripheralCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IPeripheralCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

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

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 245
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 246
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IPeripheralCallback;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 250
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw p0
.end method

.method public a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 266
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 267
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IPeripheralCallback;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 377
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 379
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {p1, v0, v2}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 387
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 388
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IPeripheralCallback;->a(Lcom/heytap/accessory/bean/DeviceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 392
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 316
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 320
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 321
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralCallback;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 325
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 327
    invoke-virtual {p2, v1}, Lcom/heytap/accessory/bean/Message;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw p0
.end method

.method public a(Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 440
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    invoke-virtual {p1, v0, v2}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 448
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 449
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IPeripheralCallback;->a(Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 453
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 286
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 287
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IPeripheralCallback;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw p0
.end method

.method public b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 357
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 358
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralCallback;->b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 362
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 364
    invoke-virtual {p2, v1}, Lcom/heytap/accessory/bean/Message;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw p0
.end method

.method public c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IPeripheralCallback"

    .line 404
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 413
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 417
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/IPeripheralCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x7

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 421
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 422
    invoke-static {}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;->c()Lcom/heytap/accessory/api/IPeripheralCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralCallback;->c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 426
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw p0
.end method
