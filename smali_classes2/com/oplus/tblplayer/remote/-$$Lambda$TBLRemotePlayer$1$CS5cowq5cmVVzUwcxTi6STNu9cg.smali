.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$CS5cowq5cmVVzUwcxTi6STNu9cg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$CS5cowq5cmVVzUwcxTi6STNu9cg;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$CS5cowq5cmVVzUwcxTi6STNu9cg;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->lambda$notifySeekComplete$3$TBLRemotePlayer$1()V

    return-void
.end method
