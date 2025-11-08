.class Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;
.super Lcom/heytap/accessory/api/IPeerAgentAuthCallback$Stub;
.source "BaseAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAgent;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseAgent;B)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;-><init>(Lcom/heytap/accessory/BaseAgent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Authentication response"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1105
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1107
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
