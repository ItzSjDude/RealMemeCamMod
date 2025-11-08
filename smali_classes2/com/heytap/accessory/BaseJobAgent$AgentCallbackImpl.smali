.class Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "BaseJobAgent.java"

# interfaces
.implements Lcom/heytap/accessory/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private a:Lcom/heytap/accessory/BaseJobAgent;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e21

    .line 1109
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1110
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "BaseJobAgent"

    const-string v0, "onFrameworkDisconnected: mBackgroundWorker is null!"

    .line 1112
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1120
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseJobAgent;->access$300(Lcom/heytap/accessory/BaseJobAgent;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFrameworkConnected() - Failed to register agent with message! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/GeneralException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseJobAgent"

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 1129
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method
