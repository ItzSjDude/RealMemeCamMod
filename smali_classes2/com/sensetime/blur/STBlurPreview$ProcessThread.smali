.class Lcom/sensetime/blur/STBlurPreview$ProcessThread;
.super Ljava/lang/Thread;
.source "STBlurPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensetime/blur/STBlurPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field callback:Lcom/sensetime/blur/STBlurPreview$Callback;

.field copyBuffer:[B

.field frontCamera:Z

.field height:I

.field private isRunning:Z

.field final synthetic this$0:Lcom/sensetime/blur/STBlurPreview;

.field width:I


# direct methods
.method constructor <init>(Lcom/sensetime/blur/STBlurPreview;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->this$0:Lcom/sensetime/blur/STBlurPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 728
    :try_start_0
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 729
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    :goto_0
    const/4 v0, 0x0

    .line 696
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 697
    :try_start_1
    iget-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 702
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 704
    :try_start_2
    iget-object v2, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->this$0:Lcom/sensetime/blur/STBlurPreview;

    iget-object v3, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    iget v4, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->width:I

    iget v5, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->height:I

    iget-boolean v6, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    iget-object v7, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->callback:Lcom/sensetime/blur/STBlurPreview$Callback;

    invoke-static/range {v2 .. v7}, Lcom/sensetime/blur/STBlurPreview;->access$700(Lcom/sensetime/blur/STBlurPreview;[BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 700
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 709
    monitor-enter p0

    .line 710
    :try_start_4
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 711
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 702
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 707
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 709
    monitor-enter p0

    .line 710
    :try_start_8
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 711
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 709
    :goto_1
    monitor-enter p0

    .line 710
    :try_start_9
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 711
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 712
    throw v1

    :catchall_4
    move-exception v0

    .line 711
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 688
    :try_start_0
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 689
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBuffer([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 0

    .line 716
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->width:I

    .line 717
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->height:I

    .line 718
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    .line 719
    iput-object p5, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->callback:Lcom/sensetime/blur/STBlurPreview$Callback;

    .line 720
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    .line 722
    monitor-enter p0

    .line 723
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 724
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
