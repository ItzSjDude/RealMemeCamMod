.class public Lcom/oplus/compat/media/MediaRouterInfo;
.super Ljava/lang/Object;
.source "MediaRouterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/compat/media/MediaRouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_AVAILABLE:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x6

.field public static final STATUS_CONNECTING:I = 0x2

.field public static final STATUS_IN_USE:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NOT_AVAILABLE:I = 0x4

.field public static final STATUS_SCANNING:I = 0x1


# instance fields
.field mDescription:Ljava/lang/String;

.field mDeviceAddress:Ljava/lang/String;

.field mDeviceType:I

.field mGlobalRouteId:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mNameResId:I

.field mPresentationDisplayId:I

.field mResolvedStatusCode:I

.field mSupportedTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/oplus/compat/media/MediaRouterInfo$1;

    invoke-direct {v0}, Lcom/oplus/compat/media/MediaRouterInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/compat/media/MediaRouterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    .line 183
    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    const/4 v2, -0x1

    .line 184
    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    .line 185
    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    .line 186
    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    .line 187
    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 189
    iput v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    .line 165
    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 173
    :cond_3
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    return p0
.end method

.method public getGlobalRouteId()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNameResId()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    return p0
.end method

.method public getPresentationDisplayId()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return p0
.end method

.method public getResolvedStatusCode()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return p0
.end method

.method public getSupportedTypes()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    return-void
.end method

.method public setGlobalRouteId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNameResId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    return-void
.end method

.method public setPresentationDisplayId(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return-void
.end method

.method public setResolvedStatusCode(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method

.method public setSupportedTypes(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouterInfo{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNameResId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportedTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPresentationDisplayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mGlobalRouteId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mResolvedStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 139
    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
