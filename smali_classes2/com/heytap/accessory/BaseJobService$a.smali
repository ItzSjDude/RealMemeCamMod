.class final Lcom/heytap/accessory/BaseJobService$a;
.super Ljava/lang/Object;
.source "BaseJobService.java"

# interfaces
.implements Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/app/job/JobParameters;

.field private c:Lcom/heytap/accessory/BaseJobService;


# direct methods
.method public constructor <init>(ILandroid/app/job/JobParameters;Lcom/heytap/accessory/BaseJobService;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/heytap/accessory/BaseJobService$a;->a:I

    .line 169
    iput-object p2, p0, Lcom/heytap/accessory/BaseJobService$a;->b:Landroid/app/job/JobParameters;

    .line 170
    iput-object p3, p0, Lcom/heytap/accessory/BaseJobService$a;->c:Lcom/heytap/accessory/BaseJobService;

    return-void
.end method


# virtual methods
.method public final onAgentAvailable(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 2

    const-string v0, "[SDK.BaseJobService]"

    const-string v1, "onAgentAvailable"

    .line 175
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobService$a;->c:Lcom/heytap/accessory/BaseJobService;

    iget v1, p0, Lcom/heytap/accessory/BaseJobService$a;->a:I

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobService$a;->b:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p1, p0}, Lcom/heytap/accessory/BaseJobService;->access$000(Lcom/heytap/accessory/BaseJobService;ILcom/heytap/accessory/BaseJobAgent;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request failed. Type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/heytap/accessory/BaseJobService$a;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". ErrorCode : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". ErrorMsg: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SDK.BaseJobService]"

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
