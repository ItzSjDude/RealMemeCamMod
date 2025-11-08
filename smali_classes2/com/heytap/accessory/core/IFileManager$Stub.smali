.class public abstract Lcom/heytap/accessory/core/IFileManager$Stub;
.super Landroid/os/Binder;
.source "IFileManager.java"

# interfaces
.implements Lcom/heytap/accessory/core/IFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/core/IFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/core/IFileManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.core.IFileManager"

    .line 38
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/core/IFileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/heytap/accessory/core/IFileManager;
    .locals 1

    .line 279
    sget-object v0, Lcom/heytap/accessory/core/IFileManager$Stub$Proxy;->a:Lcom/heytap/accessory/core/IFileManager;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/core/IFileManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.core.IFileManager"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Lcom/heytap/accessory/core/IFileManager;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/heytap/accessory/core/IFileManager;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/heytap/accessory/core/IFileManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/core/IFileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.accessory.core.IFileManager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 119
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/IDeathCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object v2

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/heytap/accessory/core/IFileManager$Stub;->a(Lcom/heytap/accessory/api/IDeathCallback;JJ)Z

    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 107
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/core/IFileManager$Stub;->a(ILjava/lang/String;)Z

    move-result p0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 91
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/core/IFileManager$Stub;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 74
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 79
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 84
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/core/IFileManager$Stub;->a(ILandroid/os/ResultReceiver;)Z

    move-result p0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 66
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
