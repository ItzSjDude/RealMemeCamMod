.class public Lcom/heytap/accessory/file/FTConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FTConnReceiver.java"


# static fields
.field private static final INTERNAL_FTREQUEST_ACTION:Ljava/lang/String; = "com.heytap.accessory.ftconnection.internal"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-class v0, Lcom/heytap/accessory/file/FTConnReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.heytap.accessory.ftconnection"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent action is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "agentClass"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive: implClass"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransferManager;->d(Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/heytap/accessory/file/FileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onReceive:fileTransfer is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/file/FTConnReceiver;->TAG:Ljava/lang/String;

    const-string p2, "FTConnReceiver receive exception"

    invoke-static {p0, p2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
