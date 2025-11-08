.class public Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;
.super Lcom/oplus/tblplayer/remote/BaseBinderStub;
.source "RemoteCacheListener.java"

# interfaces
.implements Landroid/os/IInterface;
.implements Lcom/oplus/tblplayer/cache/ICacheListener;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "RemoteCacheListener"

.field public static final M_ON_CACHE_ERROR:I = 0x3

.field public static final M_ON_CACHE_FINISH:I = 0x2

.field public static final M_ON_CACHE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteCacheListener"


# instance fields
.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/cache/ICacheListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/BaseBinderStub;-><init>()V

    const-string v0, "RemoteCacheListener"

    .line 29
    invoke-virtual {p0, p0, v0}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected varargs execTransact(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    .line 63
    sget-object v3, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call get unknown method index:%d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Lcom/oplus/tblplayer/remote/BaseBinderStub;->onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    invoke-static {p2, v3}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 58
    invoke-static {p2, v4}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 59
    invoke-static {p2, v6}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v1, v3, v2}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V

    return-object v10

    .line 49
    :cond_1
    invoke-static {p2, v3}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 50
    invoke-static {p2, v4}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 51
    invoke-static {p2, v6}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 52
    invoke-static {p2, v5}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v5, 0x4

    .line 53
    invoke-static {p2, v5}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v11

    .line 49
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V

    return-object v10

    .line 45
    :cond_2
    invoke-static {p2, v3}, Lcom/oplus/tblplayer/utils/ArgsUtil;->safeGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0, v1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-object v10
.end method

.method protected getDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "RemoteCacheListener"

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/cache/ICacheListener;

    .line 113
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V
    .locals 12

    move-object v0, p0

    .line 102
    iget-object v0, v0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/tblplayer/cache/ICacheListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 104
    invoke-interface/range {v2 .. v11}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/cache/ICacheListener;

    .line 95
    invoke-interface {v0, p1}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected varargs onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->execTransact(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->mListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
