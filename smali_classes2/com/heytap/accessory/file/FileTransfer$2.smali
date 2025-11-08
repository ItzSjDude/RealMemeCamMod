.class final Lcom/heytap/accessory/file/FileTransfer$2;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer;->receive(JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    iput-wide p2, p0, Lcom/heytap/accessory/file/FileTransfer$2;->a:J

    iput p4, p0, Lcom/heytap/accessory/file/FileTransfer$2;->b:I

    iput-object p5, p0, Lcom/heytap/accessory/file/FileTransfer$2;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/heytap/accessory/file/FileTransfer$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v1}, Lcom/heytap/accessory/file/FileTransfer;->access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/file/FileTransfer;->access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    iget-object v3, v2, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    iget-wide v5, p0, Lcom/heytap/accessory/file/FileTransfer$2;->a:J

    iget v7, p0, Lcom/heytap/accessory/file/FileTransfer$2;->b:I

    iget-object v8, p0, Lcom/heytap/accessory/file/FileTransfer$2;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/heytap/accessory/file/FileTransfer$2;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :try_start_1
    invoke-virtual {v1, v3, v7}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1405
    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v2, "Could not register file event callback. Declining transfer."

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    move-wide v4, v5

    move v6, v7

    move-object v7, v8

    move v8, v1

    .line 1406
    invoke-interface/range {v3 .. v8}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 1409
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/heytap/accessory/file/FileTransferManager;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1410
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "Register death callback fail."

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v2, 0x5

    if-eqz v9, :cond_2

    .line 1415
    :try_start_2
    new-instance v3, Lcom/heytap/accessory/file/a/e;

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/heytap/accessory/file/a/e;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 1417
    new-instance v4, Lcom/heytap/accessory/file/a/c;

    invoke-virtual {v3}, Lcom/heytap/accessory/file/a/e;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 1419
    :cond_2
    new-instance v3, Lcom/heytap/accessory/file/a/e;

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/heytap/accessory/file/a/e;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 1421
    new-instance v4, Lcom/heytap/accessory/file/a/c;

    invoke-virtual {v3}, Lcom/heytap/accessory/file/a/e;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    :goto_0
    const/4 v2, 0x0

    .line 1425
    iget-object v3, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v3, :cond_3

    .line 1426
    iget-object v1, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 1601
    iget-object v1, v1, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 1426
    invoke-virtual {v4}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const-string v1, "receiveStatus"

    .line 1430
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1431
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "receiveStatus:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1433
    :cond_4
    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v2, "File Transfer Daemon could not queue request"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1436
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1439
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    :goto_1
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    iget-wide v2, p0, Lcom/heytap/accessory/file/FileTransfer$2;->a:J

    iget p0, p0, Lcom/heytap/accessory/file/FileTransfer$2;->b:I

    invoke-static {v1, v2, v3, p0, v0}, Lcom/heytap/accessory/file/FileTransfer;->access$1200(Lcom/heytap/accessory/file/FileTransfer;JIZ)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 466
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 468
    :goto_2
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$2;->e:Lcom/heytap/accessory/file/FileTransfer;

    iget-wide v3, p0, Lcom/heytap/accessory/file/FileTransfer$2;->a:J

    iget p0, p0, Lcom/heytap/accessory/file/FileTransfer$2;->b:I

    invoke-static {v2, v3, v4, p0, v0}, Lcom/heytap/accessory/file/FileTransfer;->access$1200(Lcom/heytap/accessory/file/FileTransfer;JIZ)V

    .line 469
    throw v1
.end method
