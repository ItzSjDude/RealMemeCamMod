.class public Lcom/oplus/tblplayer/upstream/TBLLoadErrorHandlingPolicy;
.super Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;
.source "TBLLoadErrorHandlingPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlacklistDurationMsFor(IJLjava/io/IOException;I)J
    .locals 2

    .line 43
    instance-of v0, p4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    const-wide/32 p0, 0xea60

    return-wide p0

    .line 47
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRetryDelayMsFor(IJLjava/io/IOException;I)J
    .locals 3

    .line 26
    instance-of v0, p4, Ljava/io/FileNotFoundException;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    return-wide v1

    .line 30
    :cond_0
    instance-of v0, p4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v0, :cond_1

    return-wide v1

    .line 34
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide p0

    return-wide p0
.end method
