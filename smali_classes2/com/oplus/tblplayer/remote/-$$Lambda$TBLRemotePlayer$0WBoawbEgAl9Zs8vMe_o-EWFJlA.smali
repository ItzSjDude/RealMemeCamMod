.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iput p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$1:I

    iput-object p3, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    iget v1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$1:I

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$0WBoawbEgAl9Zs8vMe_o-EWFJlA;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;->lambda$notifyBinderError$0$TBLRemotePlayer(ILjava/lang/String;)V

    return-void
.end method
