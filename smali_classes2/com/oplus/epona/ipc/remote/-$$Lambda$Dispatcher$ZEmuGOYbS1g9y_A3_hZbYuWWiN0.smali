.class public final synthetic Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/oplus/epona/ipc/remote/Dispatcher;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$0:Lcom/oplus/epona/ipc/remote/Dispatcher;

    iput-object p2, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$0:Lcom/oplus/epona/ipc/remote/Dispatcher;

    iget-object v1, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/ipc/remote/Dispatcher;->lambda$registerRemoteTransfer$0$Dispatcher(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
