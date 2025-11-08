.class Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;
.super Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ILanCacheIpNative"
.end annotation


# instance fields
.field private final a:Lcom/heytap/accessory/discovery/a;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/a;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;->a:Lcom/heytap/accessory/discovery/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;->a:Lcom/heytap/accessory/discovery/a;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/a;->a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    return-void
.end method
