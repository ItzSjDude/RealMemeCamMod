.class Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;
.super Lcom/heytap/accessory/api/IDisPairCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairCallbackNative"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/CentralManager;

.field private final b:Lcom/heytap/accessory/discovery/IPairCallback;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/IPairCallback;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->a:Lcom/heytap/accessory/discovery/CentralManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IDisPairCallback$Stub;-><init>()V

    .line 610
    iput-object p2, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPairSuccess, deviceInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairSuccess(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 619
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "key_msg_type_pair_type_received"

    .line 625
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPairMessage, deviceInfo: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CentralManager"

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "onPairMessage failed, bundle is null"

    .line 628
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v1

    const-string v3, "sdk_version"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->a:Lcom/heytap/accessory/discovery/CentralManager;

    invoke-virtual {v1}, Lcom/heytap/accessory/discovery/CentralManager;->getFpCoreVersion()I

    move-result v1

    const-string v3, "getFpCoreVersion: "

    .line 637
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "key_msg_auth_data"

    const/16 v4, 0x27d8

    if-ge v1, v4, :cond_1

    .line 639
    :try_start_1
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairData(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)[B

    move-result-object p0

    .line 640
    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_1
    if-lt v1, v4, :cond_4

    const-string v1, "key_msg_auth_mode"

    .line 642
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "key_msg_auth_limit_length"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 646
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairTypeReceived(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)I

    move-result p0

    .line 647
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 643
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairData(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)[B

    move-result-object p0

    .line 644
    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 651
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPairFailure, deviceInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;->b:Lcom/heytap/accessory/discovery/IPairCallback;

    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairFailure(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 661
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
