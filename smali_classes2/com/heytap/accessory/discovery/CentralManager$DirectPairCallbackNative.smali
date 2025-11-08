.class Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;
.super Lcom/heytap/accessory/api/IDirectPairCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectPairCallbackNative"
.end annotation


# instance fields
.field private final a:Lcom/heytap/accessory/discovery/IDirectCallback;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/IDirectCallback;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/heytap/accessory/api/IDirectPairCallback$Stub;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;->a:Lcom/heytap/accessory/discovery/IDirectCallback;

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

    .line 568
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;->a:Lcom/heytap/accessory/discovery/IDirectCallback;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IDirectCallback;->onPairSuccess(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    return-void
.end method

.method public b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;->a:Lcom/heytap/accessory/discovery/IDirectCallback;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IDirectCallback;->onPairFailure(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    return-void
.end method
