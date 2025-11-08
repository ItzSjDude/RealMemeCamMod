.class Lcom/oplus/tblplayer/remote/TBLRemotePlayerService$1;
.super Lcom/oplus/tblplayer/IRemoteLinker$Stub;
.source "TBLRemotePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;

    invoke-direct {p0}, Lcom/oplus/tblplayer/IRemoteLinker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService$1;->this$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;

    invoke-static {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->access$000(Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
