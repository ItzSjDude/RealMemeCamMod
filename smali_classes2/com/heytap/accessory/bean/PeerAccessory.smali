.class public Lcom/heytap/accessory/bean/PeerAccessory;
.super Ljava/lang/Object;
.source "PeerAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/PeerAccessory;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_APDU_SIZE:I = 0x100000

.field static final DEFAULT_ENCRYPTION_PADDING_LENGTH:I = 0x0

.field static final DEFAULT_MXDU_SIZE:I = 0xfff4

.field static final DEFAULT_SSDU_SIZE:I = 0xfffa

.field public static final TAG:Ljava/lang/String; = "PeerAccessory"

.field public static final VERSION_TAG:Ljava/lang/String; = "newPA_V1"


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mApduSize:I

.field private mDeviceId:[B

.field private mDeviceType:I

.field private final mEncryptionPaddingLength:I

.field private final mId:J

.field private final mMxduSize:I

.field private final mName:Ljava/lang/String;

.field private final mPeerId:Ljava/lang/String;

.field private final mProductId:Ljava/lang/String;

.field private final mSsduSize:I

.field private mStatus:I

.field private final mSupportCompression:Z

.field private final mSupportFile:Z

.field private final mSupportMessage:Z

.field private final mSupportStream:Z

.field private final mTransportType:I

.field private mUUIDType:I

.field private final mVendorId:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/heytap/accessory/bean/PeerAccessory$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/PeerAccessory$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/PeerAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZZZZI[BI)V
    .locals 3

    move-object v0, p0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 216
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    move-wide v1, p2

    .line 217
    iput-wide v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    move-object v1, p4

    .line 218
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    move-object v1, p5

    .line 219
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    move v1, p6

    .line 220
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    move v1, p7

    .line 221
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    move-object v1, p8

    .line 222
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    move-object v1, p9

    .line 223
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    move v1, p10

    .line 224
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    move v1, p11

    .line 225
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    move v1, p12

    .line 226
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    move/from16 v1, p13

    .line 227
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    move-object/from16 v1, p14

    .line 228
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    move/from16 v1, p15

    .line 229
    iput-boolean v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    move/from16 v1, p16

    .line 230
    iput-boolean v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    move/from16 v1, p17

    .line 231
    iput-boolean v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    move/from16 v1, p18

    .line 232
    iput-boolean v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    move/from16 v1, p19

    .line 233
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    move-object/from16 v1, p20

    .line 234
    iput-object v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    move/from16 v1, p21

    .line 235
    iput v1, v0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "newPA_V1"

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "PeerAccessory: tag is not correct, reset position"

    if-nez v3, :cond_4

    .line 139
    :try_start_1
    sget-object p0, Lcom/heytap/accessory/bean/PeerAccessory;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 144
    :cond_4
    sget-object v3, Lcom/heytap/accessory/bean/PeerAccessory;->TAG:Ljava/lang/String;

    const-string v5, "PeerAccessory: tag not empty:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-class v2, Lcom/heytap/accessory/bean/PeerAccessory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    .line 147
    sget-object p0, Lcom/heytap/accessory/bean/PeerAccessory;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5
    const-string v3, "uuid"

    .line 151
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    const-string v3, "status"

    .line 152
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    const-string v3, "deviceId"

    .line 153
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    const-string v3, "deviceType"

    .line 154
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 157
    sget-object v1, Lcom/heytap/accessory/bean/PeerAccessory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PeerAccessory:  get tag exception,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/heytap/accessory/bean/PeerAccessory$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/heytap/accessory/bean/PeerAccessory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    const/4 v0, 0x1

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    const/4 v0, 0x2

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    const/4 v0, 0x3

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    const/4 v0, 0x4

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    const/4 v0, 0x5

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    const/4 v0, 0x6

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    const/4 v0, 0x7

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    const/16 v0, 0x8

    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    const/16 v0, 0x9

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    const/16 v0, 0xa

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    const/16 v0, 0xb

    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    const/16 v0, 0xc

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    const/16 v0, 0xd

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    const/16 v0, 0xe

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    const/16 v0, 0xf

    .line 179
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    const/16 v0, 0x10

    .line 180
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    const/16 v0, 0x11

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    const/16 v0, 0x12

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/heytap/accessory/b/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    const/16 v0, 0x13

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAccessoryId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getApduSize()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    return p0
.end method

.method public getContent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-wide v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    invoke-static {v1}, Lcom/heytap/accessory/b/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDeviceId()[B
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    return p0
.end method

.method public getEncryptionPaddingLength()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    return p0
.end method

.method public getId()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    return-wide v0
.end method

.method public getMxduSize()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    return-object p0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    return-object p0
.end method

.method public getSsduSize()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 329
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    return p0
.end method

.method public getTransportType()I
    .locals 0

    .line 289
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    return p0
.end method

.method public getUUIDType()I
    .locals 0

    .line 337
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    return p0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    return p0
.end method

.method public setStatus(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    return-void
.end method

.method public supportCompression()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    return p0
.end method

.method public supportFile()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    return p0
.end method

.method public supportMessage()Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    return p0
.end method

.method public supportStream()Z
    .locals 0

    .line 325
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeerAccessory{, mAddress=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    .line 406
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fraVer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-static {}, Lcom/heytap/accessory/b/g;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    .line 408
    invoke-static {v2}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    .line 410
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeerAccessory{mVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    .line 383
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    .line 384
    invoke-static {v2}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTransportType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUUnameType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProductId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVendorId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mApduSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSsduSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMxduSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEncryptionPaddingLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPeerId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportCompression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    .line 399
    invoke-static {v1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 350
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-wide v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-object p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSsduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-object p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mMxduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mApduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportMessage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-boolean p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportFile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-boolean p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportCompression:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-boolean p2, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mSupportStream:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-static {}, Lcom/heytap/accessory/b/g;->f()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "newPA_V1"

    .line 367
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 369
    iget v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mUUIDType:I

    const-string v1, "uuid"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    iget v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mStatus:I

    const-string v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    iget-object v0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceId:[B

    const-string v1, "deviceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 372
    iget p0, p0, Lcom/heytap/accessory/bean/PeerAccessory;->mDeviceType:I

    const-string v0, "deviceType"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
