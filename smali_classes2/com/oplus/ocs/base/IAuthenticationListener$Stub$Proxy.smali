.class Lcom/oplus/ocs/base/IAuthenticationListener$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/IAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/IAuthenticationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/oplus/ocs/base/IAuthenticationListener;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/oplus/ocs/base/IAuthenticationListener$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/oplus/ocs/base/IAuthenticationListener$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public onFail(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.ocs.base.IAuthenticationListener"

    .line 149
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p0, p0, Lcom/oplus/ocs/base/IAuthenticationListener$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 153
    invoke-static {}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;->getDefaultImpl()Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    invoke-static {}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;->getDefaultImpl()Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p0
.end method

.method public onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.ocs.base.IAuthenticationListener"

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, v0, v3}, Lcom/oplus/ocs/base/common/CapabilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    :goto_0
    iget-object p0, p0, Lcom/oplus/ocs/base/IAuthenticationListener$Stub$Proxy;->b:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 129
    invoke-static {}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;->getDefaultImpl()Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 130
    invoke-static {}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;->getDefaultImpl()Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/IAuthenticationListener;->onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw p0
.end method
