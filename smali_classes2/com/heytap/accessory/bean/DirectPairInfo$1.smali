.class Lcom/heytap/accessory/bean/DirectPairInfo$1;
.super Ljava/lang/Object;
.source "DirectPairInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/bean/DirectPairInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/heytap/accessory/bean/DirectPairInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/heytap/accessory/bean/DirectPairInfo;
    .locals 0

    .line 61
    new-instance p0, Lcom/heytap/accessory/bean/DirectPairInfo;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/bean/DirectPairInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/DirectPairInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/heytap/accessory/bean/DirectPairInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/heytap/accessory/bean/DirectPairInfo;
    .locals 0

    .line 66
    new-array p0, p1, [Lcom/heytap/accessory/bean/DirectPairInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/DirectPairInfo$1;->newArray(I)[Lcom/heytap/accessory/bean/DirectPairInfo;

    move-result-object p0

    return-object p0
.end method
