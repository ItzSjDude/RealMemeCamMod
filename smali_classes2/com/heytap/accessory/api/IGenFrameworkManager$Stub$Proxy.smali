.class Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGenFrameworkManager.java"

# interfaces
.implements Lcom/heytap/accessory/api/IGenFrameworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IGenFrameworkManager;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(JILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IGenFrameworkManager"

    .line 164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 168
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 176
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 177
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 180
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 182
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 189
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw p0
.end method

.method public a(JLcom/heytap/accessory/api/ICMDeathCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IGenFrameworkManager"

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p3, :cond_0

    .line 143
    invoke-interface {p3}, Lcom/heytap/accessory/api/ICMDeathCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    iget-object p0, p0, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 146
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 147
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(JLcom/heytap/accessory/api/ICMDeathCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IGenFrameworkManager"

    .line 200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 205
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-static {}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a()Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 213
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
