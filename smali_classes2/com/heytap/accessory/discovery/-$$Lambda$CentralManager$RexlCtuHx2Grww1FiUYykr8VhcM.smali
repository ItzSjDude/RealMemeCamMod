.class public final synthetic Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;

    invoke-direct {v0}, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;-><init>()V

    sput-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/heytap/accessory/discovery/BaseManager$a;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/CentralManager;->lambda$onSubServiceConnected$0(Lcom/heytap/accessory/discovery/BaseManager$a;)Z

    move-result p0

    return p0
.end method
