.class Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraTransBitmap.java"

# interfaces
.implements Lcom/oplus/gallery/bitmap/ICameraTransBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/oplus/gallery/bitmap/ICameraTransBitmap;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method private static synthetic a(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 137
    :goto_0
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$9GjBTDcsqv9NmtIOqnhMOhXBmjw(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub$Proxy;->a(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

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
    const-string v2, "com.oplus.gallery.bitmap.ICameraTransBitmap"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub;->c()Lcom/oplus/gallery/bitmap/ICameraTransBitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    invoke-static {}, Lcom/oplus/gallery/bitmap/ICameraTransBitmap$Stub;->c()Lcom/oplus/gallery/bitmap/ICameraTransBitmap;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/gallery/bitmap/ICameraTransBitmap;->b()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 124
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-gez p0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 127
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    :goto_0
    invoke-static {v3, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v3, Lcom/oplus/gallery/bitmap/-$$Lambda$ICameraTransBitmap$Stub$Proxy$9GjBTDcsqv9NmtIOqnhMOhXBmjw;

    invoke-direct {v3, v1, v2}, Lcom/oplus/gallery/bitmap/-$$Lambda$ICameraTransBitmap$Stub$Proxy$9GjBTDcsqv9NmtIOqnhMOhXBmjw;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p0, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw p0
.end method
