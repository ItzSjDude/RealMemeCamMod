.class Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo$1;
.super Ljava/lang/Object;
.source "AnimojiStickerExtendedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;
    .locals 0

    .line 39
    new-instance p0, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;

    invoke-direct {p0}, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;->access$002(Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a(I)[Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;
    .locals 0

    .line 46
    new-array p0, p1, [Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo$1;->a(Landroid/os/Parcel;)Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo$1;->a(I)[Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;

    move-result-object p0

    return-object p0
.end method
