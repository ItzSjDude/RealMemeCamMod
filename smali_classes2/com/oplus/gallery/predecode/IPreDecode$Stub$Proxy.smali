.class Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPreDecode.java"

# interfaces
.implements Lcom/oplus/gallery/predecode/IPreDecode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/gallery/predecode/IPreDecode$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/oplus/gallery/predecode/IPreDecode;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.gallery.predecode.IPreDecode"

    .line 272
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 274
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object p0, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 284
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 285
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/gallery/predecode/IPreDecode;->a(Landroid/os/ParcelFileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 288
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 290
    sget-object p0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 297
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw p0
.end method

.method public a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.gallery.predecode.IPreDecode"

    .line 242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p0, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 248
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 249
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/gallery/predecode/IPreDecode;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 254
    sget-object p0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 261
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oplus.gallery.predecode.IPreDecode"

    .line 211
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object p0, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 218
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 219
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/oplus/gallery/predecode/IPreDecode;->a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 222
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 224
    sget-object p0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 231
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.oplus.gallery.predecode.IPreDecode"

    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 192
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object p0, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 195
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 196
    invoke-static {}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a()Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oplus/gallery/predecode/IPreDecode;->a(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/oplus/gallery/predecode/IPreDecode$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method
