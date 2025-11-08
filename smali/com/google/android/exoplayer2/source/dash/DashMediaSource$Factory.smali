.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private isCreateCalled:Z

.field private livePresentationDelayMs:J

.field private livePresentationDelayOverridesManifest:Z

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 110
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 111
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 112
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    .line 113
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 14

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 283
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v2, 0x0

    .line 285
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayOverridesManifest:Z

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 307
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_0
    return-object p0
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 14

    .line 240
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 241
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    .line 242
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayOverridesManifest:Z

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    return-object v13
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 266
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_0
    return-object p0
.end method

.method public getSupportedTypes()[I
    .locals 1

    const/4 p0, 0x1

    .line 314
    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 227
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public setLivePresentationDelayMs(J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x7530

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->setLivePresentationDelayMs(JZ)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->setLivePresentationDelayMs(JZ)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setLivePresentationDelayMs(JZ)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 193
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    .line 194
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayOverridesManifest:Z

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 161
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setManifestParser(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;"
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 208
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method
