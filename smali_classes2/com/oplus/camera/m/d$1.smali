.class Lcom/oplus/camera/m/d$1;
.super Ljava/lang/Object;
.source "ProcessQueueThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m/d;->c(Lcom/oplus/camera/Storage$CameraPicture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Storage$CameraPicture;

.field final synthetic b:Lcom/oplus/camera/m/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m/d;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    iput-object p2, p0, Lcom/oplus/camera/m/d$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/Storage$CameraPicture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    monitor-enter v0

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->a(Lcom/oplus/camera/m/d;)I

    .line 138
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_0
    const-string v1, "raw"

    .line 142
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->c(Lcom/oplus/camera/m/d;)I

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {p0}, Lcom/oplus/camera/m/d;->d(Lcom/oplus/camera/m/d;)V

    .line 147
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->a(Lcom/oplus/camera/m/d;)I

    .line 138
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_2
    const-string v1, "raw"

    .line 142
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v1}, Lcom/oplus/camera/m/d;->c(Lcom/oplus/camera/m/d;)I

    .line 146
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {p0}, Lcom/oplus/camera/m/d;->d(Lcom/oplus/camera/m/d;)V

    .line 147
    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    monitor-enter v1

    .line 136
    :try_start_4
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v2}, Lcom/oplus/camera/m/d;->a(Lcom/oplus/camera/m/d;)I

    .line 138
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v2}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 139
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v2}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_4
    const-string v2, "raw"

    .line 142
    iget-object v3, p0, Lcom/oplus/camera/m/d$1;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v3, v3, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {v2}, Lcom/oplus/camera/m/d;->c(Lcom/oplus/camera/m/d;)I

    .line 146
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/m/d$1;->b:Lcom/oplus/camera/m/d;

    invoke-static {p0}, Lcom/oplus/camera/m/d;->d(Lcom/oplus/camera/m/d;)V

    .line 147
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 148
    throw v0

    :catchall_3
    move-exception p0

    .line 147
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method
