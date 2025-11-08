.class public final synthetic Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;

    invoke-direct {v0}, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;-><init>()V

    sput-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/heytap/accessory/discovery/IManagerCallback;

    invoke-interface {p1}, Lcom/heytap/accessory/discovery/IManagerCallback;->onReleased()V

    return-void
.end method
