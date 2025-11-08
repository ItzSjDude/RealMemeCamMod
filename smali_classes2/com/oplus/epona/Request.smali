.class public Lcom/oplus/epona/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/epona/Request$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/epona/Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionName:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private final mComponentName:Ljava/lang/String;

.field private mRouteData:Lcom/oplus/epona/route/RouteData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/oplus/epona/Request$1;

    invoke-direct {v0}, Lcom/oplus/epona/Request$1;-><init>()V

    sput-object v0, Lcom/oplus/epona/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/epona/Request;->mComponentName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/epona/Request;->mActionName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oplus/epona/Request$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/oplus/epona/Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/oplus/epona/route/RouteData;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lcom/oplus/epona/Request;->mComponentName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/oplus/epona/Request;->mActionName:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 43
    iput-object p4, p0, Lcom/oplus/epona/Request;->mRouteData:Lcom/oplus/epona/route/RouteData;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/oplus/epona/route/RouteData;Lcom/oplus/epona/Request$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/epona/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/oplus/epona/route/RouteData;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/epona/Request;->mActionName:Ljava/lang/String;

    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/epona/Request;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public getRouteData()Lcom/oplus/epona/route/RouteData;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/epona/Request;->mRouteData:Lcom/oplus/epona/route/RouteData;

    return-object p0
.end method

.method public putBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/epona/Request;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/epona/Request;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget-object p2, p0, Lcom/oplus/epona/Request;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/oplus/epona/Request;->mActionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/oplus/epona/Request;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
