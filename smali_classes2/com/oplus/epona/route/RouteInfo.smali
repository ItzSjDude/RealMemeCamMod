.class public Lcom/oplus/epona/route/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"


# static fields
.field public static final ROUTE_TYPE_ACTIVITY:I = 0x0

.field public static final ROUTE_TYPE_FRAGMENT:I = 0x1


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field private final mRouteType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oplus/epona/route/RouteInfo;->mPath:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/oplus/epona/route/RouteInfo;->mRouteType:I

    .line 14
    iput-object p3, p0, Lcom/oplus/epona/route/RouteInfo;->mClazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/oplus/epona/route/RouteInfo;->mClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oplus/epona/route/RouteInfo;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRouteType()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/oplus/epona/route/RouteInfo;->mRouteType:I

    return p0
.end method
