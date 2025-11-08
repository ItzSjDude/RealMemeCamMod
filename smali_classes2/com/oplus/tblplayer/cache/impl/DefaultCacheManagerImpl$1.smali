.class Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;
.super Ljava/lang/Object;
.source "DefaultCacheManagerImpl.java"

# interfaces
.implements Lcom/oplus/tblplayer/cache/ICacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$100(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method public onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V
    .locals 12

    move-object v0, p0

    .line 56
    iget-object v1, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {v1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {v1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V

    .line 59
    :cond_0
    iget-object v0, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    move-object v1, p1

    invoke-static {v0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$100(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method public onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;->this$0:Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;

    invoke-static {p0}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    :cond_0
    return-void
.end method
