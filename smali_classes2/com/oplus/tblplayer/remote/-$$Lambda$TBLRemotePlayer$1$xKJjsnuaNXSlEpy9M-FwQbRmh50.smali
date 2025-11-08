.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

.field private final synthetic f$1:Lcom/oplus/tblplayer/misc/TBLTimedText;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iput-object p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;->f$1:Lcom/oplus/tblplayer/misc/TBLTimedText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$xKJjsnuaNXSlEpy9M-FwQbRmh50;->f$1:Lcom/oplus/tblplayer/misc/TBLTimedText;

    invoke-virtual {v0, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->lambda$notifyTimedText$7$TBLRemotePlayer$1(Lcom/oplus/tblplayer/misc/TBLTimedText;)V

    return-void
.end method
