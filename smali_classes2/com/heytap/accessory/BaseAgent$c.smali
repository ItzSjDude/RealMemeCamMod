.class final Lcom/heytap/accessory/BaseAgent$c;
.super Ljava/lang/Object;
.source "BaseAgent.java"

# interfaces
.implements Lcom/heytap/accessory/BaseSocket$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAgent;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseAgent;B)V
    .locals 0

    .line 1113
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent$c;-><init>(Lcom/heytap/accessory/BaseAgent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 3

    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_0

    .line 1128
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Framework disconnected during connection process!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-virtual {p0, p2, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_2

    const/16 v0, 0x2721

    if-ne p2, v0, :cond_1

    const/16 p2, 0x2718

    .line 1134
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1135
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    :cond_1
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

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

    .line 1139
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1140
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1141
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1142
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1144
    :cond_2
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConnectionFailure: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;)V
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {v0}, Lcom/heytap/accessory/BaseAgent;->access$500(Lcom/heytap/accessory/BaseAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection success with peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/heytap/accessory/BaseAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 1122
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$c;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, v1}, Lcom/heytap/accessory/BaseAgent;->access$600(Lcom/heytap/accessory/BaseAgent;I)V

    return-void
.end method
