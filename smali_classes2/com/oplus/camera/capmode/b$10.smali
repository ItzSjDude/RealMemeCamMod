.class Lcom/oplus/camera/capmode/b$10;
.super Ljava/lang/Thread;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->H()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/oplus/camera/capmode/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/b;Ljava/lang/String;[B)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    iput-object p3, p0, Lcom/oplus/camera/capmode/b$10;->a:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1709
    iget-object v1, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v1}, Lcom/oplus/camera/capmode/b;->v(Lcom/oplus/camera/capmode/b;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1710
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1711
    iget-object v2, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v2}, Lcom/oplus/camera/capmode/b;->I(Lcom/oplus/camera/capmode/b;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/capmode/b$10;->a:[B

    iget-object v4, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v4}, Lcom/oplus/camera/capmode/b;->H(Lcom/oplus/camera/capmode/b;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 1716
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v3, v6

    const-wide/16 v8, 0x3

    cmp-long v3, v3, v8

    if-gez v3, :cond_1

    .line 1717
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v8, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v8}, Lcom/oplus/camera/capmode/b;->J(Lcom/oplus/camera/capmode/b;)J

    move-result-wide v8

    sub-long/2addr v3, v8

    div-long/2addr v3, v6

    const-wide/16 v8, 0x32

    cmp-long v3, v3, v8

    if-gez v3, :cond_1

    .line 1718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAudioInput, mAudioRecord.read cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    div-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", drop it"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    .line 1718
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez v2, :cond_0

    const-wide/16 v3, 0x1f4

    .line 1727
    iget-object v6, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v6}, Lcom/oplus/camera/capmode/b;->K(Lcom/oplus/camera/capmode/b;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    .line 1728
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/b$10;->a:[B

    invoke-static {v0, v1, v5, v2}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/b;[BII)V

    goto :goto_0

    .line 1730
    :cond_2
    new-array v0, v2, [B

    .line 1731
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 1732
    iget-object v1, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v1, v0, v5, v2}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/b;[BII)V

    const-string v0, "CameraMediaCodec"

    const-string v1, "startAudioInput, send empty"

    .line 1734
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 1737
    iget-object v1, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v1}, Lcom/oplus/camera/capmode/b;->v(Lcom/oplus/camera/capmode/b;)I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string p0, "CameraMediaCodec"

    const-string v0, "startAudioInput, AudioInput stop"

    .line 1738
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1741
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->v(Lcom/oplus/camera/capmode/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "CameraMediaCodec"

    const-string v2, "startAudioInput, AudioInput pause"

    .line 1742
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v0}, Lcom/oplus/camera/capmode/b;->L(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1746
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v2}, Lcom/oplus/camera/capmode/b;->v(Lcom/oplus/camera/capmode/b;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1747
    iget-object v1, p0, Lcom/oplus/camera/capmode/b$10;->b:Lcom/oplus/camera/capmode/b;

    invoke-static {v1}, Lcom/oplus/camera/capmode/b;->L(Lcom/oplus/camera/capmode/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1750
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1752
    :cond_5
    :goto_1
    monitor-exit v0

    goto/16 :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
