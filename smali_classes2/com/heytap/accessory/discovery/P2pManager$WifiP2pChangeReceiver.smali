.class Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;
.super Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;
.source "P2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/P2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiP2pChangeReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/P2pManager;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/discovery/P2pManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;->a:Lcom/heytap/accessory/discovery/P2pManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IWifiP2pChangeReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/discovery/P2pManager;B)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;-><init>(Lcom/heytap/accessory/discovery/P2pManager;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;->a:Lcom/heytap/accessory/discovery/P2pManager;

    invoke-static {v0}, Lcom/heytap/accessory/discovery/P2pManager;->access$100(Lcom/heytap/accessory/discovery/P2pManager;)Lcom/heytap/accessory/discovery/IP2pCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;->a:Lcom/heytap/accessory/discovery/P2pManager;

    invoke-static {p0}, Lcom/heytap/accessory/discovery/P2pManager;->access$100(Lcom/heytap/accessory/discovery/P2pManager;)Lcom/heytap/accessory/discovery/IP2pCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/discovery/IP2pCallback;->onStateChange(Lcom/heytap/accessory/bean/DeviceInfo;II)V

    return-void

    :cond_0
    const-string p0, "P2pManager"

    const-string p1, "onStateChange failed, IP2pCallback is null"

    .line 204
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
