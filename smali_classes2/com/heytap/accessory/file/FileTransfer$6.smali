.class final Lcom/heytap/accessory/file/FileTransfer$6;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer;->cancelAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;Ljava/lang/String;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    iput-object p2, p0, Lcom/heytap/accessory/file/FileTransfer$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "FileTransfer"

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v1}, Lcom/heytap/accessory/file/FileTransfer;->access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/file/FileTransfer;->access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/file/FileTransferManager;->c(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cancel status "

    .line 617
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v2}, Lcom/heytap/accessory/file/FileTransfer;->access$100(Lcom/heytap/accessory/file/FileTransfer;)Lcom/heytap/accessory/file/FileTransfer$EventListener;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "[cancelAll] listener is null."

    .line 620
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez v1, :cond_1

    .line 624
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/heytap/accessory/file/FileTransfer;->access$900(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 625
    invoke-interface {v2, v0, v1}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onCancelAllCompleted(II)V

    return-void

    :cond_1
    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    .line 627
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0, v3}, Lcom/heytap/accessory/file/FileTransfer;->access$900(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 628
    invoke-interface {v2, v0, v3}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onCancelAllCompleted(II)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 630
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$6;->b:Lcom/heytap/accessory/file/FileTransfer;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/heytap/accessory/file/FileTransfer;->access$900(Lcom/heytap/accessory/file/FileTransfer;I)V

    .line 631
    invoke-interface {v2, v0, v1}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onCancelAllCompleted(II)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 634
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
