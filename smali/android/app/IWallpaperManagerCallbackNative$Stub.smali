.class public abstract Landroid/app/IWallpaperManagerCallbackNative$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManagerCallbackNative.java"

# interfaces
.implements Landroid/app/IWallpaperManagerCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallbackNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onWallpaperChanged:I = 0x1

.field static final TRANSACTION_onWallpaperColorsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    .line 36
    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallbackNative;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Landroid/app/IWallpaperManagerCallbackNative;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Landroid/app/IWallpaperManagerCallbackNative;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/app/IWallpaperManagerCallbackNative;
    .locals 1

    .line 192
    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IWallpaperManagerCallbackNative;)Z
    .locals 1

    .line 182
    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 186
    sput-object p0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.app.IWallpaperManagerCallbackNative"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    sget-object p1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 88
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p4, p2}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 72
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->onWallpaperChanged()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 64
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
