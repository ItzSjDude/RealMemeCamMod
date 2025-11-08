.class public final synthetic Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;

    invoke-direct {v0}, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;-><init>()V

    sput-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/heytap/accessory/discovery/BaseManager$a;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/P2pManager;->lambda$onSubServiceConnected$1(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;

    move-result-object p0

    return-object p0
.end method
