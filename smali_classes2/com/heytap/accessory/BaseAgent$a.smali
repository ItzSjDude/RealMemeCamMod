.class final Lcom/heytap/accessory/BaseAgent$a;
.super Ljava/lang/Object;
.source "BaseAgent.java"

# interfaces
.implements Lcom/heytap/accessory/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/heytap/accessory/BaseAgent;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e21

    .line 1067
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1068
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1070
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onFrameworkDisconnected: mBackgroundWorker is null!"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1078
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseAgent;->access$400(Lcom/heytap/accessory/BaseAgent;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1080
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFrameworkConnected() - Failed to register agent with message! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/GeneralException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    .line 1087
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    .line 1088
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$a;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendEmptyMessage(I)Z

    return-void

    .line 1090
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onAgentRegistered: mBackgroundWorker is null!"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
