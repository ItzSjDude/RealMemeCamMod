.class public Lcom/oplus/ocs/base/common/AuthResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/ocs/base/common/AuthResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/oplus/ocs/base/common/AuthResult$1;

    invoke-direct {v0}, Lcom/oplus/ocs/base/common/AuthResult$1;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/AuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/base/common/AuthResult;->b:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/base/common/AuthResult;->c:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/base/common/AuthResult;->d:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[B)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/oplus/ocs/base/common/AuthResult;->b:I

    .line 26
    iput p3, p0, Lcom/oplus/ocs/base/common/AuthResult;->c:I

    .line 27
    iput p4, p0, Lcom/oplus/ocs/base/common/AuthResult;->d:I

    .line 28
    iput-object p5, p0, Lcom/oplus/ocs/base/common/AuthResult;->e:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrrorCode()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->d:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPermitBits()[B
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->e:[B

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->c:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->b:I

    return p0
.end method

.method public setErrrorCode(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->d:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    return-void
.end method

.method public setPermitBits([B)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->e:[B

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->c:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/oplus/ocs/base/common/AuthResult;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/oplus/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget p2, p0, Lcom/oplus/ocs/base/common/AuthResult;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget p2, p0, Lcom/oplus/ocs/base/common/AuthResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Lcom/oplus/ocs/base/common/AuthResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object p0, p0, Lcom/oplus/ocs/base/common/AuthResult;->e:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
