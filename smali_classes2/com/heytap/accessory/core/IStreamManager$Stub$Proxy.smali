.class Lcom/heytap/accessory/core/IStreamManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStreamManager.java"

# interfaces
.implements Lcom/heytap/accessory/core/IStreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/core/IStreamManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/core/IStreamManager;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/heytap/accessory/core/IStreamManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.core.IStreamManager"

    .line 161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 164
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/core/IStreamManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 172
    invoke-static {}, Lcom/heytap/accessory/core/IStreamManager$Stub;->a()Lcom/heytap/accessory/core/IStreamManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 173
    invoke-static {}, Lcom/heytap/accessory/core/IStreamManager$Stub;->a()Lcom/heytap/accessory/core/IStreamManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/core/IStreamManager;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 178
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 185
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw p0
.end method

.method public a(ILandroid/os/ResultReceiver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.core.IStreamManager"

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p2, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/core/IStreamManager$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 142
    invoke-static {}, Lcom/heytap/accessory/core/IStreamManager$Stub;->a()Lcom/heytap/accessory/core/IStreamManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 143
    invoke-static {}, Lcom/heytap/accessory/core/IStreamManager$Stub;->a()Lcom/heytap/accessory/core/IStreamManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/core/IStreamManager;->a(ILandroid/os/ResultReceiver;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 146
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 150
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/heytap/accessory/core/IStreamManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
