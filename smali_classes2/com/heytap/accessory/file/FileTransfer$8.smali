.class final Lcom/heytap/accessory/file/FileTransfer$8;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/heytap/accessory/file/a;

.field final synthetic g:I

.field final synthetic h:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;IJLjava/lang/String;JLjava/lang/String;Lcom/heytap/accessory/file/a;I)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->h:Lcom/heytap/accessory/file/FileTransfer;

    iput p2, p0, Lcom/heytap/accessory/file/FileTransfer$8;->a:I

    iput-wide p3, p0, Lcom/heytap/accessory/file/FileTransfer$8;->b:J

    iput-object p5, p0, Lcom/heytap/accessory/file/FileTransfer$8;->c:Ljava/lang/String;

    iput-wide p6, p0, Lcom/heytap/accessory/file/FileTransfer$8;->d:J

    iput-object p8, p0, Lcom/heytap/accessory/file/FileTransfer$8;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/heytap/accessory/file/FileTransfer$8;->f:Lcom/heytap/accessory/file/a;

    iput p10, p0, Lcom/heytap/accessory/file/FileTransfer$8;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$8;->h:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->h:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v1}, Lcom/heytap/accessory/file/FileTransfer;->access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->h:Lcom/heytap/accessory/file/FileTransfer;

    iget-object v1, v1, Lcom/heytap/accessory/file/FileTransfer;->mLocalCallback:Lcom/heytap/accessory/file/FileTransfer$c;

    iget v2, p0, Lcom/heytap/accessory/file/FileTransfer$8;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z

    .line 772
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$8;->h:Lcom/heytap/accessory/file/FileTransfer;

    iget-wide v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->b:J

    iget v3, p0, Lcom/heytap/accessory/file/FileTransfer$8;->a:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/heytap/accessory/file/FileTransfer;->access$1200(Lcom/heytap/accessory/file/FileTransfer;JIZ)V

    .line 773
    new-instance v0, Lcom/heytap/accessory/file/a/d$a;

    invoke-direct {v0}, Lcom/heytap/accessory/file/a/d$a;-><init>()V

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->c:Ljava/lang/String;

    .line 774
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/a/d$a;->a(Ljava/lang/String;)Lcom/heytap/accessory/file/a/d$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->d:J

    .line 775
    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/file/a/d$a;->a(J)Lcom/heytap/accessory/file/a/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accessory/file/FileTransfer$8;->e:Ljava/lang/String;

    .line 776
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/file/a/d$a;->b(Ljava/lang/String;)Lcom/heytap/accessory/file/a/d$a;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/heytap/accessory/file/a/d$a;->a()Lcom/heytap/accessory/file/a/d;

    move-result-object v6

    .line 778
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$8;->f:Lcom/heytap/accessory/file/a;

    .line 1041
    iget-object v1, v0, Lcom/heytap/accessory/file/a;->a:Lcom/heytap/accessory/file/FileTransfer$EventListener;

    .line 778
    iget-wide v2, p0, Lcom/heytap/accessory/file/FileTransfer$8;->b:J

    iget v4, p0, Lcom/heytap/accessory/file/FileTransfer$8;->g:I

    iget v5, p0, Lcom/heytap/accessory/file/FileTransfer$8;->a:I

    invoke-interface/range {v1 .. v6}, Lcom/heytap/accessory/file/FileTransfer$EventListener;->onTransferRequested(JIILcom/heytap/accessory/file/a/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 780
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
