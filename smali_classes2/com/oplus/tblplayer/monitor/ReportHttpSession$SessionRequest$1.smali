.class final Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest$1;
.super Ljava/lang/Object;
.source "ReportHttpSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;
    .locals 0

    .line 103
    new-instance p0, Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;
    .locals 0

    .line 108
    new-array p0, p1, [Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest$1;->newArray(I)[Lcom/oplus/tblplayer/monitor/ReportHttpSession$SessionRequest;

    move-result-object p0

    return-object p0
.end method
