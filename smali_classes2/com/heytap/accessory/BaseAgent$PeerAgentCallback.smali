.class Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;
.super Lcom/heytap/accessory/api/IPeerAgentCallback$Stub;
.source "BaseAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAgent;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseAgent;B)V
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;-><init>(Lcom/heytap/accessory/BaseAgent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 975
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindPeer response received."

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-class v0, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "errorcode"

    .line 978
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 979
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 980
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Peer Not Found("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 983
    iput v2, v0, Landroid/os/Message;->what:I

    .line 984
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 985
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 987
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPeersAgentsFound: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "peerAgents"

    .line 990
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    .line 992
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Find Peer - invalid response from Accessory Framework"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 994
    :cond_2
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Peer agent(s) found for:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Peer agent(s) "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 999
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 1000
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1001
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1004
    :cond_3
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPeerAgentsFound: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    .line 1013
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received peer agent update"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-class v0, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "peerAgents"

    .line 1015
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No peer agents in PeerAgent update callback!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "peerAgentStatus"

    .line 1021
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_1

    .line 1023
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Peer Update - invalid peer agent list from Accessory Framework"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 1028
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Peer Update - invalid peer status from Accessory Framework:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_2
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Peer agent(s) updated for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1034
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Peer ID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Container Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v3}, Lcom/heytap/accessory/bean/PeerAgent;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Accessory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v3}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heytap/accessory/bean/PeerAccessory;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-static {v4, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_3
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v2, v2, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v2, :cond_5

    .line 1040
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v2, v2, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v2}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x4

    .line 1041
    iput v3, v2, Landroid/os/Message;->what:I

    if-nez p1, :cond_4

    .line 1043
    iput v1, v2, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 1045
    iput p1, v2, Landroid/os/Message;->arg1:I

    :goto_1
    const/4 p1, 0x0

    .line 1047
    new-array p1, p1, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1048
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v2}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1050
    :cond_5
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPeerAgentUpdated: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
