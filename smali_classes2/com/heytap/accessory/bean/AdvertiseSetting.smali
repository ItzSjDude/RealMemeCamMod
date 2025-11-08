.class public Lcom/heytap/accessory/bean/AdvertiseSetting;
.super Ljava/lang/Object;
.source "AdvertiseSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;
    }
.end annotation


# static fields
.field public static final ADVERTISE_MODE_BALANCED:I = 0x1

.field public static final ADVERTISE_MODE_LOW_LATENCY:I = 0x2

.field public static final ADVERTISE_MODE_LOW_POWER:I = 0x0

.field public static final ADVERTISE_TYPE_BLE:I = 0x80

.field public static final ADVERTISE_TYPE_BR_EDR:I = 0x40

.field public static final ADVERTISE_TYPE_FASTDISCOVERY:I = 0x0

.field public static final ADVERTISE_TYPE_FASTPAIR_ACCOUNT:I = 0x2

.field public static final ADVERTISE_TYPE_FASTPAIR_MODELID:I = 0x1

.field public static final ADVERTISE_TYPE_LAN:I = 0x8

.field public static final ADVERTISE_TYPE_NETWORK:I = 0x10

.field public static final ADVERTISE_TYPE_P2P:I = 0x20

.field public static final CONNECT_TYPE_BLE:I = 0x4

.field public static final CONNECT_TYPE_BT:I = 0x1

.field public static final CONNECT_TYPE_LAN:I = 0x10

.field public static final CONNECT_TYPE_MAX:I = 0x1f

.field public static final CONNECT_TYPE_MINI:I = 0x1

.field public static final CONNECT_TYPE_NETWORK_CONNECT:I = 0x8

.field public static final CONNECT_TYPE_P2P:I = 0x2

.field public static final CONNECT_TYPE_UNKNOWN:I = 0x0

.field public static final CONNECT_TYPE_WIFI:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/AdvertiseSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_IS_CANCEL_ADV:Ljava/lang/String; = "is_cancel_adv"

.field private static final EXTRA_RDI:Ljava/lang/String; = "rdi"

.field public static final GO_INTENT_MAX:B = 0xft

.field public static final GO_INTENT_MIN:B = 0x0t

.field public static final GO_INTENT_NOT_SET:B = -0x1t

.field public static final GO_INTENT_PHONE_DEFAULT:B = 0x8t

.field private static final IS_CANCEL_ADV_BYTE:I = 0x1

.field private static final IS_NOT_CANCEL_ADV_TYPE:I = 0x0

.field private static final LIMITED_ADVETISING_MAX_MILLIS:I = 0xa4cb80

.field private static final LIMITED_IS_CANCEL_BYTE_LENGTH:I = 0x1

.field private static final LIMITED_MODELID_LENGTH:I = 0x3

.field private static final LIMITED_NICKNAME_LENGTH:I = 0x9

.field private static final LIMITED_RDI_LENGTH:I = 0x6

.field public static final SECURE_KEY_TYPE_PRESET:I = 0x1

.field public static final SECURE_KEY_TYPE_UKEY2_INVISIBLE:I = 0x2

.field private static final SUPPORT_CANCEL_ADV_VERSION_CODE:I = 0x4fb0

.field private static final TAG:Ljava/lang/String; = "AdvertiseSetting"

.field private static final VERSION_TAG:Ljava/lang/String; = "newAS_V1"


# instance fields
.field private mAdditionData:[B

.field private final mAdvertiseMode:I

.field private final mAdvertiseType:I

.field private final mConnectType:I

.field private final mDurationMillis:I

.field private final mGoIntent:B

.field private mIsCancelAdv:Z

.field private final mKeyType:I

.field private final mMajor:I

.field private mModelId:[B

.field private mNickName:[B

.field private final mPort:I

.field private mRdi:[B

.field private mServiceVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/heytap/accessory/bean/AdvertiseSetting$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/AdvertiseSetting$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/AdvertiseSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII[B[B[BBIIIZ[B)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseType:I

    .line 104
    iput p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mConnectType:I

    .line 105
    iput p3, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mDurationMillis:I

    .line 106
    iput p4, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mKeyType:I

    .line 107
    iput-object p5, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mModelId:[B

    .line 108
    iput-object p6, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mNickName:[B

    .line 109
    iput-object p7, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdditionData:[B

    .line 110
    iput-byte p8, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mGoIntent:B

    .line 111
    iput p9, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mPort:I

    .line 112
    iput p10, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mMajor:I

    .line 113
    iput p11, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseMode:I

    .line 114
    iput-boolean p12, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mIsCancelAdv:Z

    .line 115
    iput-object p13, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mRdi:[B

    return-void
.end method

.method synthetic constructor <init>(IIII[B[B[BBIIIZ[BLcom/heytap/accessory/bean/AdvertiseSetting$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p13}, Lcom/heytap/accessory/bean/AdvertiseSetting;-><init>(IIII[B[B[BBIIIZ[B)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mConnectType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mDurationMillis:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mKeyType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mModelId:[B

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mNickName:[B

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdditionData:[B

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mGoIntent:B

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mPort:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mMajor:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseMode:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newAS_V1"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 138
    :cond_0
    const-class v1, Lcom/heytap/accessory/bean/AdvertiseSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1
    const-string v2, "is_cancel_adv"

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mIsCancelAdv:Z

    const-string v2, "rdi"

    .line 144
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mRdi:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 147
    :catch_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAdditionData()[B
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdditionData:[B

    return-object p0
.end method

.method public getAdvertiseMode()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseMode:I

    return p0
.end method

.method public getAdvertiseType()I
    .locals 0

    .line 191
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseType:I

    return p0
.end method

.method public getConnectType()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mConnectType:I

    return p0
.end method

.method public getDurationMillis()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mDurationMillis:I

    return p0
.end method

.method public getGoIntent()B
    .locals 0

    .line 219
    iget-byte p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mGoIntent:B

    return p0
.end method

.method public getIsCancelAdv()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mIsCancelAdv:Z

    return p0
.end method

.method public getKeyType()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mKeyType:I

    return p0
.end method

.method public getMajor()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mMajor:I

    return p0
.end method

.method public getModelId()[B
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mModelId:[B

    return-object p0
.end method

.method public getNickName()[B
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mNickName:[B

    return-object p0
.end method

.method public getPort()I
    .locals 0

    .line 223
    iget p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mPort:I

    return p0
.end method

.method public getRdi()[B
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mRdi:[B

    return-object p0
.end method

.method public setServiceVersion(I)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mServiceVersion:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 170
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mConnectType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mDurationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mKeyType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mModelId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    iget-object p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mNickName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 176
    iget-object p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdditionData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 177
    iget-byte p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mGoIntent:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mMajor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mAdvertiseMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget p2, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mServiceVersion:I

    const/16 v0, 0x4fb0

    if-lt p2, v0, :cond_0

    const-string p2, "newAS_V1"

    .line 182
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-boolean v0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mIsCancelAdv:Z

    const-string v1, "is_cancel_adv"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    iget-object p0, p0, Lcom/heytap/accessory/bean/AdvertiseSetting;->mRdi:[B

    const-string v0, "rdi"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 186
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
