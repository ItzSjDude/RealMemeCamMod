.class Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDiscoveryNativeService.java"

# interfaces
.implements Lcom/heytap/accessory/api/IDiscoveryNativeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IDiscoveryNativeService;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 220
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 223
    invoke-interface {p3}, Lcom/heytap/accessory/api/IDeathCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_1

    .line 225
    invoke-interface {p5}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 226
    iget-object p0, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 228
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 229
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 232
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_3

    .line 234
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw p0
.end method

.method public a()Lcom/heytap/accessory/api/ICentralService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 157
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->a()Lcom/heytap/accessory/api/ICentralService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/api/ICentralService$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/ICentralService;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b()Lcom/heytap/accessory/api/IPeripheralService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 180
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 183
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/api/IPeripheralService$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    throw p0
.end method

.method public c()Lcom/heytap/accessory/api/IWifiP2pService;
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
    const-string v2, "com.heytap.accessory.api.IDiscoveryNativeService"

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 201
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    invoke-static {}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->d()Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->c()Lcom/heytap/accessory/api/IWifiP2pService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/api/IWifiP2pService$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IWifiP2pService;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw p0
.end method
