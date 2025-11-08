.class Lcom/heytap/accessory/api/IDirectPairCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDirectPairCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IDirectPairCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IDirectPairCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IDirectPairCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/heytap/accessory/api/IDirectPairCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDirectPairCallback"

    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 147
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/IDirectPairCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 155
    invoke-static {}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;->a()Lcom/heytap/accessory/api/IDirectPairCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 156
    invoke-static {}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;->a()Lcom/heytap/accessory/api/IDirectPairCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IDirectPairCallback;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 160
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/heytap/accessory/api/IDirectPairCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IDirectPairCallback"

    .line 172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p1, v0, v3}, Lcom/heytap/accessory/bean/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p2, v0, v3}, Lcom/heytap/accessory/bean/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    :goto_1
    iget-object p0, p0, Lcom/heytap/accessory/api/IDirectPairCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 189
    invoke-static {}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;->a()Lcom/heytap/accessory/api/IDirectPairCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 190
    invoke-static {}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;->a()Lcom/heytap/accessory/api/IDirectPairCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IDirectPairCallback;->b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 194
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw p0
.end method
