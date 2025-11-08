.class final Lcom/oplus/tblplayer/misc/MediaUrl$1;
.super Ljava/lang/Object;
.source "MediaUrl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/misc/MediaUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/tblplayer/misc/MediaUrl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/tblplayer/misc/MediaUrl;
    .locals 0

    .line 100
    new-instance p0, Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/tblplayer/misc/MediaUrl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/tblplayer/misc/MediaUrl;
    .locals 0

    .line 105
    new-array p0, p1, [Lcom/oplus/tblplayer/misc/MediaUrl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$1;->newArray(I)[Lcom/oplus/tblplayer/misc/MediaUrl;

    move-result-object p0

    return-object p0
.end method
