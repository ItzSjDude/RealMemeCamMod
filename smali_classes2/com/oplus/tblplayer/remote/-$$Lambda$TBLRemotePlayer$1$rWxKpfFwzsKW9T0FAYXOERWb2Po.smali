.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iput p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$1:I

    iput p3, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iget v1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$1:I

    iget p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$rWxKpfFwzsKW9T0FAYXOERWb2Po;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->lambda$notifyInfo$6$TBLRemotePlayer$1(II)V

    return-void
.end method
