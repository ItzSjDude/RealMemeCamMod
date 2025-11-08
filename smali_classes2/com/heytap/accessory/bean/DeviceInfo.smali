.class public Lcom/heytap/accessory/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COMPATIBLE_KEY_LAN_PAIR_STATE:Ljava/lang/String; = "lan_pair_state"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_ROLE_BOTH:I = 0x3

.field public static final DEVICE_ROLE_CENTRAL:I = 0x1

.field public static final DEVICE_ROLE_PERIPHERAL:I = 0x2

.field public static final DEVICE_ROLE_UNKNOWN:I = 0x0

.field public static final PAIR_NONE:I = 0x0

.field public static final PAIR_PAIRED:I = 0x2

.field public static final PAIR_PAIRING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final VERSION_TAG:Ljava/lang/String; = "DeviceInfo_V1"


# instance fields
.field private mAdditionData:[B

.field private mAlias:[B

.field private mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothName:Ljava/lang/String;

.field private mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

.field private mConnectType:I

.field private mDeviceId:[B

.field private mDeviceRole:I

.field private mEvent:I

.field private mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

.field private mMajor:I

.field private mMinor:I

.field private mModelId:[B

.field private mName:Ljava/lang/String;

.field private mNickName:[B

.field private mOuterSdkVersion:I

.field private mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

.field private mPairState:I

.field private mSignalStrength:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/heytap/accessory/bean/DeviceInfo$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/heytap/accessory/bean/BlePairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/BlePairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    .line 88
    new-instance v0, Lcom/heytap/accessory/bean/BtPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/BtPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    .line 89
    new-instance v0, Lcom/heytap/accessory/bean/P2pPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/P2pPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    .line 90
    new-instance v0, Lcom/heytap/accessory/bean/LANPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/LANPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mOuterSdkVersion:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/heytap/accessory/bean/BlePairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/BlePairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    .line 88
    new-instance v0, Lcom/heytap/accessory/bean/BtPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/BtPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    .line 89
    new-instance v0, Lcom/heytap/accessory/bean/P2pPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/P2pPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    .line 90
    new-instance v0, Lcom/heytap/accessory/bean/LANPairState;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/LANPairState;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mOuterSdkVersion:I

    .line 98
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addLANPairedBssid(Ljava/lang/String;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/LANPairState;->addPairedBssid(Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAdditionData()[B
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAdditionData:[B

    return-object p0
.end method

.method public getAlias()[B
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAlias:[B

    return-object p0
.end method

.method public getBleMac()Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/BlePairState;->getMac()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothName:Ljava/lang/String;

    return-object p0
.end method

.method public getBtMac()Ljava/lang/String;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/BtPairState;->getMac()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectType()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mConnectType:I

    return p0
.end method

.method public getDeviceId()[B
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceId:[B

    return-object p0
.end method

.method public getDeviceRole()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceRole:I

    return p0
.end method

.method public getEvent()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mEvent:I

    return p0
.end method

.method public getLANIp()Ljava/lang/String;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/LANPairState;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLANPairedBssids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/LANPairState;->getPairedBssidList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMajor()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMajor:I

    return p0
.end method

.method public getMinor()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMinor:I

    return p0
.end method

.method public getModelId()[B
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mModelId:[B

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()[B
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mNickName:[B

    return-object p0
.end method

.method public getOuterSdkVersion()I
    .locals 0

    .line 434
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mOuterSdkVersion:I

    return p0
.end method

.method public getP2pIp()Ljava/lang/String;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/P2pPairState;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getP2pMac()Ljava/lang/String;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/P2pPairState;->getP2pMac()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPairState()I
    .locals 0

    .line 218
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mPairState:I

    return p0
.end method

.method public getPairedType()I
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/BlePairState;->isPaired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 336
    :goto_0
    iget-object v2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/BtPairState;->isPaired()Z

    move-result v2

    add-int/2addr v0, v2

    .line 337
    iget-object v2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/P2pPairState;->isPaired()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 338
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/LANPairState;->isPaired()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 v1, 0x10

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public getSignalStrength()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mSignalStrength:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public isPaired()Z
    .locals 0

    .line 342
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/DeviceInfo;->getPairedType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mTag:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mNickName:[B

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mPairState:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceRole:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mConnectType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mEvent:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMajor:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMinor:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mSignalStrength:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceId:[B

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mModelId:[B

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAdditionData:[B

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAlias:[B

    .line 156
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 157
    const-class v0, Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/bean/BlePairState;

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    .line 158
    const-class v0, Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/bean/BtPairState;

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    .line 159
    const-class v0, Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/bean/P2pPairState;

    iput-object v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceInfo_V1"

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    sget-object p0, Lcom/heytap/accessory/bean/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "DeviceInfo: VERSION_TAG check error, ignore lan info"

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 168
    :cond_0
    const-class v1, Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 170
    sget-object p0, Lcom/heytap/accessory/bean/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "DeviceInfo: tag is not correct, reset position"

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1
    const-string v2, "lan_pair_state"

    .line 174
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/bean/LANPairState;

    iput-object v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 176
    :catch_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public setAdditionData([B)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAdditionData:[B

    return-void
.end method

.method public setAlias([B)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAlias:[B

    return-void
.end method

.method public setBleMac(Ljava/lang/String;)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/BlePairState;->setMac(Ljava/lang/String;)V

    return-void
.end method

.method public setBlePaired(Z)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/BlePairState;->setPaired(Z)V

    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothName:Ljava/lang/String;

    return-void
.end method

.method public setBtMac(Ljava/lang/String;)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/BtPairState;->setMac(Ljava/lang/String;)V

    return-void
.end method

.method public setBtPaired(Z)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/BtPairState;->setPaired(Z)V

    return-void
.end method

.method public setConnectType(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 247
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mConnectType:I

    return-void

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid argument, connectType must be set 1-31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectTypeFromAdvertiseType(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    or-int/lit8 v0, v0, 0x10

    .line 267
    :cond_4
    iput v0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mConnectType:I

    return-void
.end method

.method public setDeviceId([B)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceId:[B

    return-void
.end method

.method public setDeviceRole(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 236
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceRole:I

    return-void

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid argument, deviceRole must be set 1-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEvent(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mEvent:I

    return-void
.end method

.method public setLANIp(Ljava/lang/String;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/LANPairState;->setIp(Ljava/lang/String;)V

    return-void
.end method

.method public setLANPaired(Z)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/LANPairState;->setPaired(Z)V

    return-void
.end method

.method public setMajor(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMajor:I

    return-void
.end method

.method public setMinor(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMinor:I

    return-void
.end method

.method public setModelId([B)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mModelId:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNickName([B)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mNickName:[B

    return-void
.end method

.method public setOuterSdkVersion(I)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mOuterSdkVersion:I

    return-void
.end method

.method public setP2pIp(Ljava/lang/String;)V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/P2pPairState;->setIp(Ljava/lang/String;)V

    return-void
.end method

.method public setP2pMac(Ljava/lang/String;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/P2pPairState;->setP2pMac(Ljava/lang/String;)V

    return-void
.end method

.method public setP2pPaired(Z)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/bean/P2pPairState;->setPaired(Z)V

    return-void
.end method

.method public setPairState(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mPairState:I

    return-void

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid argument, pairState must be set 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignalStrength(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mSignalStrength:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfo{ modelId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mModelId:[B

    .line 348
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceId:[B

    .line 349
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mTag:Ljava/lang/String;

    .line 350
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mName:Ljava/lang/String;

    .line 351
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMinor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 103
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mNickName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mPairState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mConnectType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMajor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mMinor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mDeviceId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mModelId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 116
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAdditionData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mAlias:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBlePairState:Lcom/heytap/accessory/bean/BlePairState;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mBtPairState:Lcom/heytap/accessory/bean/BtPairState;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object p2, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mP2pPairState:Lcom/heytap/accessory/bean/P2pPairState;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    invoke-static {}, Lcom/heytap/accessory/Initializer;->getSdkIntegratorRole()I

    move-result p2

    if-nez p2, :cond_0

    .line 124
    invoke-static {}, Lcom/heytap/accessory/Initializer;->getOAFVersion()I

    move-result p2

    const/16 v0, 0x4fb3

    if-ge p2, v0, :cond_0

    .line 125
    sget-object p0, Lcom/heytap/accessory/bean/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "writeToParcel, oaf version doesn\'t support lan, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/accessory/Initializer;->getOAFVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/Initializer;->getSdkIntegratorRole()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/DeviceInfo;->getOuterSdkVersion()I

    move-result p2

    const/16 v0, 0x7535

    if-ge p2, v0, :cond_1

    .line 131
    sget-object p1, Lcom/heytap/accessory/bean/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "writeToParcel, outer sdk version is less than oaf lan version, 30005,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/DeviceInfo;->getOuterSdkVersion()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "DeviceInfo_V1"

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 136
    iget-object p0, p0, Lcom/heytap/accessory/bean/DeviceInfo;->mLANPairState:Lcom/heytap/accessory/bean/LANPairState;

    const-string v0, "lan_pair_state"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
