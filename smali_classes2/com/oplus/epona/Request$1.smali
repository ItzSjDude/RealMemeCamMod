.class final Lcom/oplus/epona/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/epona/Request;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/epona/Request;
    .locals 1

    .line 21
    new-instance p0, Lcom/oplus/epona/Request;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/epona/Request;-><init>(Landroid/os/Parcel;Lcom/oplus/epona/Request$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/oplus/epona/Request$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/epona/Request;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/epona/Request;
    .locals 0

    .line 26
    new-array p0, p1, [Lcom/oplus/epona/Request;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/oplus/epona/Request$1;->newArray(I)[Lcom/oplus/epona/Request;

    move-result-object p0

    return-object p0
.end method
