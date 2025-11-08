.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iput p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iget p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$TWJixtiEhGhCY31j5d7eMDUjGxg;->f$1:I

    invoke-virtual {v0, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->lambda$notifyPlayerStateChanged$9$TBLRemotePlayer$1(I)V

    return-void
.end method
