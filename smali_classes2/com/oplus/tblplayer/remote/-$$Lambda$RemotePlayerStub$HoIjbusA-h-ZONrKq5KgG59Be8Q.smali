.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$HoIjbusA-h-ZONrKq5KgG59Be8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/RemotePlayerStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$HoIjbusA-h-ZONrKq5KgG59Be8Q;->f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$HoIjbusA-h-ZONrKq5KgG59Be8Q;->f$0:Lcom/oplus/tblplayer/remote/RemotePlayerStub;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->lambda$handleRelease$2$RemotePlayerStub()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
