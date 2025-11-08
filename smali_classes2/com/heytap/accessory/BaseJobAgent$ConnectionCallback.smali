.class Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;
.super Ljava/lang/Object;
.source "BaseJobAgent.java"

# interfaces
.implements Lcom/heytap/accessory/BaseSocket$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseJobAgent;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseJobAgent;B)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;-><init>(Lcom/heytap/accessory/BaseJobAgent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 3

    const-string v0, "BaseJobAgent"

    const/16 v1, 0x4e21

    if-ne p2, v1, :cond_0

    const-string v1, "Framework disconnected during connection process!"

    .line 1165
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p0, p2, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v1, v1, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_2

    const/16 v1, 0x40a

    if-ne p2, v1, :cond_1

    const/16 p2, 0x2718

    .line 1171
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v1, v1, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1172
    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v2, v2, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection attempt failed wih peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1177
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1178
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1179
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p0, "onConnectionFailure: mBackgroundWorker is null!"

    .line 1181
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;)V
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {v0}, Lcom/heytap/accessory/BaseJobAgent;->access$400(Lcom/heytap/accessory/BaseJobAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection success with peer:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseJobAgent"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/heytap/accessory/BaseJobAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 1159
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->access$500(Lcom/heytap/accessory/BaseJobAgent;I)V

    return-void
.end method
