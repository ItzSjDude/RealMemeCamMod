.class Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;
.super Ljava/lang/Object;
.source "CacheManagerStub.java"

# interfaces
.implements Lcom/oplus/tblplayer/cache/ICacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/cache/service/CacheManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$000(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p0, v0, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$100(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$000(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    .line 40
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p1

    const/4 p1, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p1

    .line 39
    invoke-static {p0, p2, v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$100(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    invoke-static {v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$000(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub$1;->this$0:Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;->access$100(Lcom/oplus/tblplayer/cache/service/CacheManagerStub;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
