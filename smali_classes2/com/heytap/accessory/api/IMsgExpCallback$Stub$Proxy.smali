.class Lcom/heytap/accessory/api/IMsgExpCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMsgExpCallback.java"

# interfaces
.implements Lcom/heytap/accessory/api/IMsgExpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IMsgExpCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IMsgExpCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/heytap/accessory/api/IMsgExpCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IMsgExpCallback"

    .line 116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/api/IMsgExpCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 126
    invoke-static {}, Lcom/heytap/accessory/api/IMsgExpCallback$Stub;->a()Lcom/heytap/accessory/api/IMsgExpCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 127
    invoke-static {}, Lcom/heytap/accessory/api/IMsgExpCallback$Stub;->a()Lcom/heytap/accessory/api/IMsgExpCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IMsgExpCallback;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 131
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/heytap/accessory/api/IMsgExpCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IMsgExpCallback"

    .line 143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 145
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/api/IMsgExpCallback$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 153
    invoke-static {}, Lcom/heytap/accessory/api/IMsgExpCallback$Stub;->a()Lcom/heytap/accessory/api/IMsgExpCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-static {}, Lcom/heytap/accessory/api/IMsgExpCallback$Stub;->a()Lcom/heytap/accessory/api/IMsgExpCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IMsgExpCallback;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 158
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p0
.end method
