.class public Lcom/oplus/ocs/base/common/api/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/ocs/base/common/api/a;",
            "Lcom/oplus/ocs/base/common/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/api/c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 1

    .line 105
    sget-object v0, Lcom/oplus/ocs/base/common/api/c;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    return-object p0
.end method
