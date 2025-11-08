.class public abstract Lcom/oplus/ocs/base/IServiceBroker$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/oplus/ocs/base/IServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/IServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/IServiceBroker$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.ocs.base.IServiceBroker"

    .line 33
    invoke-virtual {p0, p0, v0}, Lcom/oplus/ocs/base/IServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/oplus/ocs/base/IServiceBroker;
    .locals 1

    .line 182
    sget-object v0, Lcom/oplus/ocs/base/IServiceBroker$Stub$Proxy;->a:Lcom/oplus/ocs/base/IServiceBroker;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/oplus/ocs/base/IServiceBroker;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.ocs.base.IServiceBroker"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Lcom/oplus/ocs/base/IServiceBroker;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/oplus/ocs/base/IServiceBroker;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/oplus/ocs/base/IServiceBroker$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/base/IServiceBroker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.ocs.base.IServiceBroker"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 82
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/base/IServiceBroker$Stub;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 69
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p4, p2}, Lcom/oplus/ocs/base/IServiceBroker$Stub;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ocs/base/IAuthenticationListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
