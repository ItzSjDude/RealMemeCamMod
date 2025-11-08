.class public final Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "RtmpDataSource.java"


# instance fields
.field private rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtmp"

    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->transferEnded()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;->a()V

    .line 85
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

    :cond_1
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/butterflytv/rtmp_client/RtmpClient$a;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 59
    new-instance v0, Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-direct {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/butterflytv/rtmp_client/RtmpClient;->a(Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->rtmpClient:Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-virtual {v0, p1, p2, p3}, Lnet/butterflytv/rtmp_client/RtmpClient;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->bytesTransferred(I)V

    return p1
.end method
