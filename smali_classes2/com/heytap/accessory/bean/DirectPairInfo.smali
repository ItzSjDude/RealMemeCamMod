.class public Lcom/heytap/accessory/bean/DirectPairInfo;
.super Ljava/lang/Object;
.source "DirectPairInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/accessory/bean/DirectPairInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_EXTRA_MODELID:Ljava/lang/String; = "extra_modelid"

.field private static final INTENT_EXTRA_SSID:Ljava/lang/String; = "extra_ssid"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/heytap/accessory/bean/DirectPairInfo$1;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/DirectPairInfo$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/bean/DirectPairInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getModelId()[B
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "extra_modelid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "extra_ssid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setModelId([B)V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "extra_modelid"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "extra_ssid"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ssid is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DirectPairInfo{ssname="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "extra_ssid"

    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/heytap/accessory/bean/DirectPairInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
