.class Lcom/oplus/camera/ui/control/h$3;
.super Ljava/lang/Object;
.source "ThumbnailLoadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/h;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/oplus/camera/ui/control/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    iput-object p2, p0, Lcom/oplus/camera/ui/control/h$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "execute, Thumbnail thread cost time: "

    const-string v1, "ThumbnailLoadExecutor"

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v4}, Lcom/oplus/camera/ui/control/h;->a(Lcom/oplus/camera/ui/control/h;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x1

    .line 86
    iput v4, v2, Landroid/os/Message;->what:I

    .line 87
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v4}, Lcom/oplus/camera/ui/control/h;->b(Lcom/oplus/camera/ui/control/h;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    .line 93
    :try_start_0
    iget-object v6, p0, Lcom/oplus/camera/ui/control/h$3;->a:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v6, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v6}, Lcom/oplus/camera/ui/control/h;->b(Lcom/oplus/camera/ui/control/h;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/h;->a(Lcom/oplus/camera/ui/control/h;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/h;->c(Lcom/oplus/camera/ui/control/h;)V

    return-void

    :catchall_0
    move-exception v6

    .line 95
    iget-object v7, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v7}, Lcom/oplus/camera/ui/control/h;->b(Lcom/oplus/camera/ui/control/h;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/h;->a(Lcom/oplus/camera/ui/control/h;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/ui/control/h$3;->b:Lcom/oplus/camera/ui/control/h;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/h;->c(Lcom/oplus/camera/ui/control/h;)V

    .line 101
    throw v6
.end method
