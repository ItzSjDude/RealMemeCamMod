.class public Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;
.super Lcom/heytap/accessory/BaseSocket;
.source "WatchAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/watch/WatchAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchAgentSocket"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/watch/WatchAgentService;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/watch/WatchAgentService;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;->a:Lcom/oplus/camera/watch/WatchAgentService;

    const-string p1, "WatchAgentSocket"

    .line 152
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseSocket;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;I)V
    .locals 0

    const-string p0, "WatchAgentService"

    const-string p1, "onError"

    .line 157
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(JI[B)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-static {p1}, Lcom/oplus/camera/watch/WatchAgentService;->a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-static {p0}, Lcom/oplus/camera/watch/WatchAgentService;->a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/oplus/camera/watch/f;->a([B)V

    :cond_0
    return-void
.end method

.method public onServiceConnectionLost(JI)V
    .locals 0

    const-string p1, "WatchAgentService"

    const-string p2, "onServiceConnectionLost"

    .line 169
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-static {p1}, Lcom/oplus/camera/watch/WatchAgentService;->a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    sget-object p1, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-static {p0}, Lcom/oplus/camera/watch/WatchAgentService;->a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/watch/f;->c()V

    :cond_0
    return-void
.end method
