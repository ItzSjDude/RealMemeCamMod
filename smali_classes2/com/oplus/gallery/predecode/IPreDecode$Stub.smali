.class public abstract Lcom/oplus/gallery/predecode/IPreDecode$Stub;
.super Landroid/os/Binder;
.source "IPreDecode.java"

# interfaces
.implements Lcom/oplus/gallery/predecode/IPreDecode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/gallery/predecode/IPreDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.gallery.predecode.IPreDecode"

    .line 44
    invoke-virtual {p0, p0, v0}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/oplus/gallery/predecode/IPreDecode;
    .locals 1

    .line 322
    sget-object v0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->a:Lcom/oplus/gallery/predecode/IPreDecode;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/oplus/gallery/predecode/IPreDecode;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.gallery.predecode.IPreDecode"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/oplus/gallery/predecode/IPreDecode;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/oplus/gallery/predecode/IPreDecode;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.gallery.predecode.IPreDecode"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 136
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 145
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 148
    invoke-virtual {p0, p1, p4, p2}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a(Landroid/os/ParcelFileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 116
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 123
    invoke-virtual {p0, p1, p4, p2}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 94
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    .line 103
    invoke-virtual/range {v3 .. v8}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 110
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 80
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v8, v0

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    move-object v3, p0

    .line 89
    invoke-virtual/range {v3 .. v8}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    return v0

    .line 72
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
