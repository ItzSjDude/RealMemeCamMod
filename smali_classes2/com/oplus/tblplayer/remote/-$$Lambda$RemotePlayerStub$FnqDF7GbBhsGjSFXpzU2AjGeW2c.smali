.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;

.field private final synthetic f$1:I

.field private final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/RemotePlayerStub;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;

    iput p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$1:I

    iput-object p3, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;

    iget v1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$1:I

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;->f$2:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->lambda$onTransactInternal$1$RemotePlayerStub(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
