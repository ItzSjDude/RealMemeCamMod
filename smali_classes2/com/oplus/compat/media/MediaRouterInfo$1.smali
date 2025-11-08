.class final Lcom/oplus/compat/media/MediaRouterInfo$1;
.super Ljava/lang/Object;
.source "MediaRouterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/media/MediaRouterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/compat/media/MediaRouterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/compat/media/MediaRouterInfo;
    .locals 0

    .line 122
    new-instance p0, Lcom/oplus/compat/media/MediaRouterInfo;

    invoke-direct {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/oplus/compat/media/MediaRouterInfo;
    .locals 0

    .line 127
    new-array p0, p1, [Lcom/oplus/compat/media/MediaRouterInfo;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo$1;->a(Landroid/os/Parcel;)Lcom/oplus/compat/media/MediaRouterInfo;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/oplus/compat/media/MediaRouterInfo$1;->a(I)[Lcom/oplus/compat/media/MediaRouterInfo;

    move-result-object p0

    return-object p0
.end method
