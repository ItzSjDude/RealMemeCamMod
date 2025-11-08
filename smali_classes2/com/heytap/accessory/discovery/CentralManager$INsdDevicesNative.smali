.class Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;
.super Lcom/heytap/accessory/api/INsdDevicesCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "INsdDevicesNative"
.end annotation


# instance fields
.field private final a:Lcom/heytap/accessory/discovery/b;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/b;)V
    .locals 0

    .line 702
    invoke-direct {p0}, Lcom/heytap/accessory/api/INsdDevicesCallback$Stub;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;->a:Lcom/heytap/accessory/discovery/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;->a:Lcom/heytap/accessory/discovery/b;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/discovery/b;->a(Ljava/util/List;)V

    return-void
.end method
