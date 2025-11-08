.class Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;
.super Lcom/heytap/accessory/api/IPeripheralCallback$Stub;
.source "PeripheralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/PeripheralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeripheralCallbackNative"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/PeripheralManager;

.field private final b:Lcom/heytap/accessory/discovery/IPeplCallback;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/PeripheralManager;Lcom/heytap/accessory/discovery/IPeplCallback;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->a:Lcom/heytap/accessory/discovery/PeripheralManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IPeripheralCallback$Stub;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PeripheralManager"

    const-string v1, "onAdvertiseSuccess"

    .line 307
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    invoke-interface {p0}, Lcom/heytap/accessory/discovery/IPeplCallback;->onAdvertiseSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 311
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdvertiseFailure, err: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeripheralManager"

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    invoke-interface {p0}, Lcom/heytap/accessory/discovery/IPeplCallback;->onAdvertiseFailure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 321
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

    .line 365
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/discovery/IPeplCallback;->onPairSuccess(Lcom/heytap/accessory/bean/DeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PeripheralManager"

    .line 367
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PeripheralManager"

    if-nez p2, :cond_0

    const-string p0, "onRequestConnect failed, bundle is null"

    .line 338
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    new-instance v1, Lcom/heytap/accessory/bean/ConnectMessage;

    const-string v2, "key_msg_connect_data"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/heytap/accessory/bean/ConnectMessage;-><init>([B)V

    invoke-interface {p0, p1, v1}, Lcom/heytap/accessory/discovery/IPeplCallback;->onRequestConnect(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/ConnectMessage;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 344
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/heytap/accessory/bean/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->a:Lcom/heytap/accessory/discovery/PeripheralManager;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "key_msg_rdi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->access$202(Lcom/heytap/accessory/discovery/PeripheralManager;[B)[B

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAdvertiseSuccess preRdi : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->a:Lcom/heytap/accessory/discovery/PeripheralManager;

    invoke-static {v0}, Lcom/heytap/accessory/discovery/PeripheralManager;->access$200(Lcom/heytap/accessory/discovery/PeripheralManager;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->a:Lcom/heytap/accessory/discovery/PeripheralManager;

    invoke-static {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->access$200(Lcom/heytap/accessory/discovery/PeripheralManager;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/b/e;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeripheralManager"

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    invoke-interface {p0}, Lcom/heytap/accessory/discovery/IPeplCallback;->onAdvertiseStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "PeripheralManager"

    .line 330
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PeripheralManager"

    if-nez p2, :cond_0

    const-string p0, "onRequestAuthenticate failed, bundle is null"

    .line 352
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    new-instance v1, Lcom/heytap/accessory/bean/AuthenticateMessage;

    const-string v2, "key_msg_auth_data"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/heytap/accessory/bean/AuthenticateMessage;-><init>([B)V

    invoke-interface {p0, p1, v1}, Lcom/heytap/accessory/discovery/IPeplCallback;->onRequestAuthenticate(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/AuthenticateMessage;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 358
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PeripheralManager"

    if-nez p2, :cond_0

    const-string p0, "onPairFailure failed, bundle is null"

    .line 375
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 379
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;->b:Lcom/heytap/accessory/discovery/IPeplCallback;

    const-string v1, "key_msg_error_code"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/discovery/IPeplCallback;->onPairFailure(Lcom/heytap/accessory/bean/DeviceInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 381
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
