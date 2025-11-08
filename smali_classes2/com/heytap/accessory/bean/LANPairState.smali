.class public Lcom/heytap/accessory/bean/LANPairState;
.super Ljava/lang/Object;
.source "LANPairState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/LANPairState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIp:Ljava/lang/String;

.field private mPairState:Lcom/heytap/accessory/bean/PairState;

.field private mPairedBssidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/heytap/accessory/bean/LANPairState$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/LANPairState$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/LANPairState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/heytap/accessory/bean/PairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/PairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairState:Lcom/heytap/accessory/bean/PairState;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairedBssidList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/heytap/accessory/bean/PairState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/bean/PairState;

    iput-object v0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairState:Lcom/heytap/accessory/bean/PairState;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/bean/LANPairState;->mIp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPairedBssid(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairedBssidList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairedBssidList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mIp:Ljava/lang/String;

    return-object p0
.end method

.method public getPairedBssidList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairedBssidList:Ljava/util/List;

    return-object p0
.end method

.method public isPaired()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairState:Lcom/heytap/accessory/bean/PairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PairState;->isPaired()Z

    move-result p0

    return p0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/heytap/accessory/bean/LANPairState;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setPaired(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairState:Lcom/heytap/accessory/bean/PairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/PairState;->setPaired(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/heytap/accessory/bean/LANPairState;->mPairState:Lcom/heytap/accessory/bean/PairState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object p0, p0, Lcom/heytap/accessory/bean/LANPairState;->mIp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
