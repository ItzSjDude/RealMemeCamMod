.class public abstract Lcom/oplus/tblplayer/remote/BaseBinderStub;
.super Landroid/os/Binder;
.source "BaseBinderStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseBinderStub"

.field protected static final UNSET_CODE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/remote/BaseBinderStub;->UNSET_CODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p2}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readParcels(Landroid/os/Parcel;)[Ljava/lang/Object;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/remote/BaseBinderStub;->onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 86
    sget-object p1, Lcom/oplus/tblplayer/remote/BaseBinderStub;->UNSET_CODE:Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    if-eqz p3, :cond_0

    .line 87
    invoke-static {p3, p0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/BaseBinderStub;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-lt p1, v2, :cond_3

    const v1, 0xffffff

    if-gt p1, v1, :cond_3

    .line 46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 49
    invoke-static {p3}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeNoException(Landroid/os/Parcel;)V

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/tblplayer/remote/BaseBinderStub;->execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupport Method, class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "code: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 60
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTransact: Caught a Exception is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseBinderStub"

    invoke-static {p2, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    .line 63
    instance-of p1, p0, Landroid/os/RemoteException;

    if-eqz p1, :cond_4

    const-string p1, "Binder call failed."

    .line 64
    invoke-static {p2, p1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string p1, "Caught a RuntimeException from the binder stub implementation."

    .line 66
    invoke-static {p2, p1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-static {p0}, Lcom/oplus/tblplayer/exception/IPCException;->toIPCException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/exception/IPCException;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeException(Landroid/os/Parcel;Ljava/lang/Exception;)V

    :goto_1
    return v2
.end method

.method protected varargs onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget-object p0, Lcom/oplus/tblplayer/remote/BaseBinderStub;->UNSET_CODE:Ljava/lang/Object;

    return-object p0
.end method
