.class Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;
.super Lcom/oplus/tblplayer/IRemoteObservable$Stub;
.source "TBLRemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/remote/TBLRemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-direct {p0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$notifyBufferingUpdate$2$TBLRemotePlayer$1(I)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$900(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;I)V

    return-void
.end method

.method public synthetic lambda$notifyCompletion$1$TBLRemotePlayer$1()V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$1000(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;)V

    return-void
.end method

.method public synthetic lambda$notifyDownstreamSizeChanged$11$TBLRemotePlayer$1(IIIF)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$000(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;IIIF)V

    return-void
.end method

.method public synthetic lambda$notifyError$5$TBLRemotePlayer$1(IILjava/lang/String;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$600(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;IILjava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$notifyInfo$6$TBLRemotePlayer$1(II)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1, p2}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$500(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;II)Z

    return-void
.end method

.method public synthetic lambda$notifyIsPlayingChanged$10$TBLRemotePlayer$1(Z)V
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$100(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;Z)V

    return-void
.end method

.method public synthetic lambda$notifyPlaybackResult$8$TBLRemotePlayer$1(Lcom/oplus/tblplayer/monitor/Report;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$300(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;Lcom/oplus/tblplayer/monitor/Report;)V

    return-void
.end method

.method public synthetic lambda$notifyPlayerStateChanged$9$TBLRemotePlayer$1(I)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$200(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;I)V

    return-void
.end method

.method public synthetic lambda$notifyPrepared$0$TBLRemotePlayer$1()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$1100(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;)V

    return-void
.end method

.method public synthetic lambda$notifySeekComplete$3$TBLRemotePlayer$1()V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$800(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;)V

    return-void
.end method

.method public synthetic lambda$notifyTimedText$7$TBLRemotePlayer$1(Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$400(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;Lcom/oplus/tblplayer/misc/TBLTimedText;)V

    return-void
.end method

.method public synthetic lambda$notifyVideoSizeChanged$4$TBLRemotePlayer$1(IIIF)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->access$700(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;IIIF)V

    return-void
.end method

.method public notifyBufferingUpdate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$C2t9nARcgRyOkN4y9IZa6jiLrfw;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$C2t9nARcgRyOkN4y9IZa6jiLrfw;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$gQrWsEeWAmaDJ0HqNtL8sCPYSI8;

    invoke-direct {v1, p0}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$gQrWsEeWAmaDJ0HqNtL8sCPYSI8;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyDownstreamSizeChanged(IIIF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$5zf2oJaJzZsJaGU1QgPMB6NH5IQ;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$5zf2oJaJzZsJaGU1QgPMB6NH5IQ;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyError(IILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$yeXWCGDnB3Dgo65UFI-xuZg3k2Y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$yeXWCGDnB3Dgo65UFI-xuZg3k2Y;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyInfo(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyIsPlayingChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$VOg99pvwAo1TdEoXVKQv2fVZb6w;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$VOg99pvwAo1TdEoXVKQv2fVZb6w;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyPlaybackResult(Lcom/oplus/tblplayer/monitor/Report;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$LXyByvGq5CEu0vd6fGte32dU9XI;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$LXyByvGq5CEu0vd6fGte32dU9XI;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;Lcom/oplus/tblplayer/monitor/Report;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyPlayerStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyPrepared()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$doNa_P8n2hGxMCUPGz--IRzF9hU;

    invoke-direct {v1, p0}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$doNa_P8n2hGxMCUPGz--IRzF9hU;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifySeekComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$CS5cowq5cmVVzUwcxTi6STNu9cg;

    invoke-direct {v1, p0}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$CS5cowq5cmVVzUwcxTi6STNu9cg;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyTimedText(Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;Lcom/oplus/tblplayer/misc/TBLTimedText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyVideoSizeChanged(IIIF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget-object v0, v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->mEventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
