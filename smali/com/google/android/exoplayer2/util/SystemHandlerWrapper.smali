.class final Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(III)Landroid/os/Message;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMessages(I)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method
