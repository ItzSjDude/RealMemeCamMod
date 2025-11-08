.class public Lcom/heytap/accessory/bean/PairSetting;
.super Ljava/lang/Object;
.source "PairSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/bean/PairSetting$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/PairSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final GO_INTENT_MAX:B = 0xft

.field public static final GO_INTENT_MIN:B = 0x0t

.field private static final GO_INTENT_NOT_SET:B = -0x1t

.field public static final PAIR_TYPE_BLE:I = 0x8000

.field public static final PAIR_TYPE_BR_EDR:I = 0x4000

.field public static final PAIR_TYPE_LAN:I = 0x400

.field public static final PAIR_TYPE_NETWORK_CONNECT:I = 0x800

.field public static final PAIR_TYPE_P2P:I = 0x2000

.field public static final PAIR_TYPE_P2P_FOR_PC:I = 0x1000

.field public static final PAIR_TYPE_UNKNOWN:I


# instance fields
.field private final mGoIntent:B

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/heytap/accessory/bean/PairSetting$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/PairSetting$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/PairSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(BI)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-byte p1, p0, Lcom/heytap/accessory/bean/PairSetting;->mGoIntent:B

    .line 44
    iput p2, p0, Lcom/heytap/accessory/bean/PairSetting;->mPort:I

    return-void
.end method

.method synthetic constructor <init>(BILcom/heytap/accessory/bean/PairSetting$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/PairSetting;-><init>(BI)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/heytap/accessory/bean/PairSetting;->mGoIntent:B

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/accessory/bean/PairSetting;->mPort:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGoIntent()B
    .locals 0

    .line 53
    iget-byte p0, p0, Lcom/heytap/accessory/bean/PairSetting;->mGoIntent:B

    return p0
.end method

.method public getPort()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/heytap/accessory/bean/PairSetting;->mPort:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 62
    iget-byte p2, p0, Lcom/heytap/accessory/bean/PairSetting;->mGoIntent:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget p0, p0, Lcom/heytap/accessory/bean/PairSetting;->mPort:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
