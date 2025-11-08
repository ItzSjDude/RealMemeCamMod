.class final Lcom/heytap/accessory/BaseMessage$a;
.super Ljava/lang/Object;
.source "BaseMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/accessory/BaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/heytap/accessory/BaseMessage;Landroid/os/Bundle;Z)V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseMessage$a;->a:Ljava/lang/ref/WeakReference;

    .line 326
    iput-object p2, p0, Lcom/heytap/accessory/BaseMessage$a;->b:Landroid/os/Bundle;

    .line 327
    iput-boolean p3, p0, Lcom/heytap/accessory/BaseMessage$a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/heytap/accessory/BaseMessage$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/BaseMessage;

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/heytap/accessory/BaseMessage;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "run(): BaseMessage referecnce is null!"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    iget-boolean v1, p0, Lcom/heytap/accessory/BaseMessage$a;->c:Z

    if-eqz v1, :cond_1

    .line 337
    iget-object p0, p0, Lcom/heytap/accessory/BaseMessage$a;->b:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/heytap/accessory/BaseMessage;->access$200(Lcom/heytap/accessory/BaseMessage;Landroid/os/Bundle;)V

    return-void

    .line 339
    :cond_1
    iget-object p0, p0, Lcom/heytap/accessory/BaseMessage$a;->b:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/heytap/accessory/BaseMessage;->access$300(Lcom/heytap/accessory/BaseMessage;Landroid/os/Bundle;)V

    return-void
.end method
