.class Lcom/oplus/tblplayer/TBLRetryPlayer$1;
.super Ljava/lang/Object;
.source "TBLRetryPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/tblplayer/TBLRetryPlayer;->maybeRetryStartPlayer(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/TBLRetryPlayer;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$1;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$1;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {p0}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$600(Lcom/oplus/tblplayer/TBLRetryPlayer;)V

    return-void
.end method
