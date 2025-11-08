.class public final synthetic Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/oplus/epona/ipc/local/DefaultTransferController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/epona/ipc/local/DefaultTransferController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;->f$0:Lcom/oplus/epona/ipc/local/DefaultTransferController;

    iput-object p2, p0, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;->f$0:Lcom/oplus/epona/ipc/local/DefaultTransferController;

    iget-object p0, p0, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/ipc/local/DefaultTransferController;->lambda$fetch$0$DefaultTransferController(Ljava/lang/String;)V

    return-void
.end method
