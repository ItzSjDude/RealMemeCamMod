.class final Lcom/heytap/accessory/file/FileTransfer$7;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/file/FileTransfer;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/file/FileTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransfer;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransfer$7;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransfer$7;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransfer;->access$1000(Lcom/heytap/accessory/file/FileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransfer$7;->a:Lcom/heytap/accessory/file/FileTransfer;

    invoke-static {p0}, Lcom/heytap/accessory/file/FileTransfer;->access$1100(Lcom/heytap/accessory/file/FileTransfer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 685
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
