.class final Lcom/oplus/ocs/base/common/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/ocs/base/common/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 3131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 2136
    invoke-static {p1, p0}, Lcom/oplus/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    const v2, 0xffff

    and-int v3, p0, v2

    const/16 v4, 0x4f45

    if-ne v3, v4, :cond_9

    add-int/2addr v0, v1

    if-lt v0, v1, :cond_8

    .line 2141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    if-gt v0, p0, :cond_8

    const/4 p0, 0x0

    const/4 v3, 0x0

    move v1, p0

    move-object v4, v3

    move-object v5, v4

    .line 2023
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-lt v6, v0, :cond_1

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 2047
    new-instance p1, Lcom/oplus/ocs/base/common/Status;

    invoke-direct {p1, p0, v1, v4, v5}, Lcom/oplus/ocs/base/common/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object p1

    .line 2025
    :cond_0
    new-instance p0, Lcom/oplus/ocs/base/internal/safeparcel/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Overread allowed size end="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int v7, v6, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_2

    .line 5207
    invoke-static {p1, v6}, Lcom/oplus/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v6

    .line 5208
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 2036
    :cond_2
    invoke-static {p1, v6}, Lcom/oplus/ocs/base/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p0

    goto :goto_0

    .line 2044
    :cond_3
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7116
    invoke-static {p1, v6}, Lcom/oplus/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v6

    .line 7117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v6, :cond_4

    move-object v5, v3

    goto :goto_1

    .line 7120
    :cond_4
    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    add-int/2addr v7, v6

    .line 7121
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2044
    :goto_1
    check-cast v5, Landroid/app/PendingIntent;

    goto :goto_0

    .line 6157
    :cond_5
    invoke-static {p1, v6}, Lcom/oplus/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v4

    .line 6158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_0

    .line 6161
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    add-int/2addr v6, v4

    .line 6162
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v7

    goto :goto_0

    .line 2033
    :cond_7
    invoke-static {p1, v6}, Lcom/oplus/ocs/base/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 2142
    :cond_8
    new-instance p0, Lcom/oplus/ocs/base/internal/safeparcel/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Size read is invalid start="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2139
    :cond_9
    new-instance p1, Lcom/oplus/ocs/base/internal/safeparcel/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected object header. Got 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1053
    new-array p0, p1, [Lcom/oplus/ocs/base/common/Status;

    return-object p0
.end method
