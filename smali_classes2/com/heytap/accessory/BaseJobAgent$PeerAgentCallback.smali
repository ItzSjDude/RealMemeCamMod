.class Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;
.super Lcom/heytap/accessory/api/IPeerAgentCallback$Stub;
.source "BaseJobAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseJobAgent;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseJobAgent;B)V
    .locals 0

    .line 1004
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;-><init>(Lcom/heytap/accessory/BaseJobAgent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BaseJobAgent"

    const-string v1, "FindPeer response received."

    .line 1010
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-class v1, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "errorcode"

    .line 1013
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 1014
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Peer Not Found("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v1, v1, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1018
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1019
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1020
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "onPeersAgentsFound: mBackgroundWorker is null!"

    .line 1022
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "peerAgents"

    .line 1027
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "Find Peer - invalid response from Accessory Framework"

    .line 1029
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Peer agent(s) found for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Peer ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Container Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Accessory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/heytap/accessory/bean/PeerAccessory;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Transport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->getTransportType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-static {v0, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    :cond_3
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v1, v1, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1043
    iput v3, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 1044
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1045
    new-array v1, v1, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    const-string p0, "onPeerAgentsFound: mBackgroundWorker is null!"

    .line 1048
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BaseJobAgent"

    const-string v1, "Received peer agent update"

    .line 1055
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-class v1, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "peerAgents"

    .line 1057
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "No peer agents in PeerAgent update callback!"

    .line 1058
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1062
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "peerAgentStatus"

    .line 1063
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez v1, :cond_1

    const-string p0, "Peer Update - invalid peer agent list from Accessory Framework"

    .line 1065
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v2, 0x69

    if-eq p1, v2, :cond_2

    const/16 v3, 0x6a

    if-eq p1, v3, :cond_2

    .line 1071
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Peer Update - invalid peer status from Accessory Framework:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1074
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

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

    invoke-static {v0, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1076
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Peer ID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Container Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v4}, Lcom/heytap/accessory/bean/PeerAgent;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Accessory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/heytap/accessory/bean/PeerAccessory;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1076
    invoke-static {v0, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    :cond_3
    iget-object v3, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v3, v3, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v3, :cond_5

    .line 1081
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x4

    .line 1082
    iput v3, v0, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_4

    const/4 p1, 0x1

    .line 1084
    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 1086
    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_1
    const/4 p1, 0x0

    .line 1089
    new-array p1, p1, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1090
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_5
    const-string p0, "onPeerAgentUpdated: mBackgroundWorker is null!"

    .line 1092
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
