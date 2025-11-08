.class final Lcom/heytap/accessory/file/FileTransfer$5;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer;->cancel(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;JI)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$5;->c:Lcom/heytap/accessory/file/FileTransfer;

    iput-wide p2, p0, Lcom/heytap/accessory/file/FileTransfer$5;->a:J

    iput p4, p0, Lcom/heytap/accessory/file/FileTransfer$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$5;->c:Lcom/heytap/accessory/file/FileTransfer;

    iget-wide v1, p0, Lcom/heytap/accessory/file/FileTransfer$5;->a:J

    iget v3, p0, Lcom/heytap/accessory/file/FileTransfer$5;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/heytap/accessory/file/FileTransfer;->access$1300(Lcom/heytap/accessory/file/FileTransfer;JI)Lcom/heytap/accessory/file/a$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "FileTransfer"

    if-nez v0, :cond_0

    :try_start_1
    const-string p0, "cancelFile aborted because service connection or transaction already closed."

    .line 579
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 580
    :cond_0
    iget v2, v0, Lcom/heytap/accessory/file/a$a;->b:I

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 581
    iput v3, v0, Lcom/heytap/accessory/file/a$a;->b:I

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cancel called before transaction id is genereated"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/heytap/accessory/file/FileTransfer$5;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_1
    iget v2, v0, Lcom/heytap/accessory/file/a$a;->b:I

    if-ne v2, v3, :cond_2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cancel called again before transaction id is genereated"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/heytap/accessory/file/FileTransfer$5;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$5;->c:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v1}, Lcom/heytap/accessory/file/FileTransfer;->access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$5;->c:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/file/FileTransfer;->access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/heytap/accessory/file/FileTransfer$5;->a:J

    iget p0, v0, Lcom/heytap/accessory/file/a$a;->b:I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1383
    :try_start_2
    new-instance v0, Lcom/heytap/accessory/file/a/b;

    invoke-direct {v0, v2, v3, p0}, Lcom/heytap/accessory/file/a/b;-><init>(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1386
    :try_start_3
    new-instance p0, Lcom/heytap/accessory/file/a/c;

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/heytap/accessory/file/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    .line 1387
    iget-object v0, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v0, :cond_3

    .line 1388
    iget-object v0, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 1601
    iget-object v0, v0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 1388
    invoke-virtual {p0}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 1391
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_1
    move-exception p0

    .line 1394
    :try_start_5
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 589
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
