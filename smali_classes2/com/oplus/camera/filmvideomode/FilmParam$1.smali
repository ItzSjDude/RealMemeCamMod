.class Lcom/oplus/camera/filmvideomode/FilmParam$1;
.super Ljava/lang/Object;
.source "FilmParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/filmvideomode/FilmParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/camera/filmvideomode/FilmParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/camera/filmvideomode/FilmParam;
    .locals 4

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 69
    new-instance v3, Lcom/oplus/camera/filmvideomode/FilmParam;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/oplus/camera/filmvideomode/FilmParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Float;)V

    return-object v3
.end method

.method public a(I)[Lcom/oplus/camera/filmvideomode/FilmParam;
    .locals 0

    .line 74
    new-array p0, p1, [Lcom/oplus/camera/filmvideomode/FilmParam;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/FilmParam$1;->a(Landroid/os/Parcel;)Lcom/oplus/camera/filmvideomode/FilmParam;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/FilmParam$1;->a(I)[Lcom/oplus/camera/filmvideomode/FilmParam;

    move-result-object p0

    return-object p0
.end method
