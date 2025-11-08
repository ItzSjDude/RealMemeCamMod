.class public interface abstract Lcom/oplus/tblplayer/cache/ICacheManager;
.super Ljava/lang/Object;
.source "ICacheManager.java"


# static fields
.field public static final MIN_LENGTH:J = 0x100000L


# virtual methods
.method public abstract registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
.end method

.method public abstract startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJ)V
.end method

.method public abstract startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V
.end method

.method public abstract stopAllCache()V
.end method

.method public abstract stopCache(Lcom/oplus/tblplayer/misc/MediaUrl;)V
.end method

.method public abstract unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
.end method
