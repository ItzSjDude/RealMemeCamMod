.class public Lcom/heytap/accessory/stream/StreamConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamConnReceiver.java"


# static fields
.field public static final INTERNAL_STREAM_REQUEST_ACTION:Ljava/lang/String; = "com.heytap.accessory.streamconnection.internal"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-class v0, Lcom/heytap/accessory/stream/StreamConnReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 39
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.heytap.accessory.streamconnection"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent action is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "agentClass"

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive: implClass"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/heytap/accessory/stream/a;->c(Ljava/lang/String;)Lcom/heytap/accessory/stream/StreamTransfer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/heytap/accessory/stream/StreamTransfer;->informIncomingSTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onReceive:streamTransfer is null"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamConnReceiver;->TAG:Ljava/lang/String;

    const-string p2, "StreamConnReceiver receive exception"

    invoke-static {p0, p2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
