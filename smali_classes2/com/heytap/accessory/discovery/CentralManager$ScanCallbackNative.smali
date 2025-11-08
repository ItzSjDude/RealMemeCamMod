.class Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;
.super Lcom/heytap/accessory/api/IDisScanCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanCallbackNative"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/CentralManager;

.field private final b:Lcom/heytap/accessory/discovery/IScanCallback;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/IScanCallback;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;->a:Lcom/heytap/accessory/discovery/CentralManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IDisScanCallback$Stub;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;->b:Lcom/heytap/accessory/discovery/IScanCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;->b:Lcom/heytap/accessory/discovery/IScanCallback;

    invoke-interface {p0}, Lcom/heytap/accessory/discovery/IScanCallback;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CentralManager"

    .line 600
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;->b:Lcom/heytap/accessory/discovery/IScanCallback;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/discovery/IScanCallback;->onDeviceFound(Lcom/heytap/accessory/bean/DeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CentralManager"

    .line 590
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
