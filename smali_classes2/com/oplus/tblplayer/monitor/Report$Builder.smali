.class public final Lcom/oplus/tblplayer/monitor/Report$Builder;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/monitor/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field aliveDuration:J

.field alreadyPreCacheBytes:J

.field audioFLR:F

.field audioMimeType:Ljava/lang/String;

.field audioSampleRate:I

.field errorCode:I

.field errorRenderer:Ljava/lang/String;

.field exception:Lcom/oplus/tblplayer/exception/IPCException;

.field height:I

.field mediaContentType:I

.field mediaUrl:Ljava/lang/String;

.field rebufferCount:J

.field rebufferTimeMs:J

.field renderedFirstFrameTime:J

.field rendererSupport:I

.field totalCacheBytes:J

.field totalNetworkReadBytes:J

.field videoFLR:F

.field videoFps:F

.field videoMimeType:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 198
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->errorCode:I

    .line 200
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->mediaContentType:I

    .line 201
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rendererSupport:I

    .line 202
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->width:I

    .line 203
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 206
    iput v1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFps:F

    .line 207
    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioSampleRate:I

    const-wide/16 v2, -0x1

    .line 208
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->renderedFirstFrameTime:J

    .line 209
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->aliveDuration:J

    .line 210
    iput v1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFLR:F

    .line 211
    iput v1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioFLR:F

    .line 212
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferCount:J

    .line 213
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferTimeMs:J

    .line 214
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->alreadyPreCacheBytes:J

    .line 215
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalCacheBytes:J

    .line 216
    iput-wide v2, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalNetworkReadBytes:J

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/tblplayer/monitor/Report;
    .locals 33

    move-object/from16 v0, p0

    .line 288
    new-instance v30, Lcom/oplus/tblplayer/monitor/Report;

    move-object/from16 v1, v30

    iget v2, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->errorCode:I

    iget-object v3, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->mediaUrl:Ljava/lang/String;

    iget v4, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->mediaContentType:I

    iget v5, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rendererSupport:I

    iget v6, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->width:I

    iget v7, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->height:I

    iget-object v8, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoMimeType:Ljava/lang/String;

    iget-object v9, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioMimeType:Ljava/lang/String;

    iget v10, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFps:F

    iget v11, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioSampleRate:I

    iget-wide v12, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->renderedFirstFrameTime:J

    iget-wide v14, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->aliveDuration:J

    move-object/from16 v31, v1

    iget v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFLR:F

    move/from16 v16, v1

    iget v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioFLR:F

    move/from16 v17, v1

    move/from16 v32, v2

    iget-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferCount:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferTimeMs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->alreadyPreCacheBytes:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalCacheBytes:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalNetworkReadBytes:J

    move-wide/from16 v26, v1

    iget-object v1, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->errorRenderer:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v0, v0, Lcom/oplus/tblplayer/monitor/Report$Builder;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    move-object/from16 v29, v0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct/range {v1 .. v29}, Lcom/oplus/tblplayer/monitor/Report;-><init>(ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;FIJJFFJJJJJLjava/lang/String;Lcom/oplus/tblplayer/exception/IPCException;)V

    return-object v30
.end method

.method public setAliveDuration(J)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 231
    iput-wide p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->aliveDuration:J

    return-object p0
.end method

.method public setAlreadyCacheBytes(JJ)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 267
    iput-wide p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->alreadyPreCacheBytes:J

    .line 268
    iput-wide p3, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalCacheBytes:J

    return-object p0
.end method

.method public setAudioFLR(F)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 256
    iput p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioFLR:F

    return-object p0
.end method

.method public setErrorCode(I)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 221
    iput p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->errorCode:I

    return-object p0
.end method

.method public setErrorRenderer(Ljava/lang/String;)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->errorRenderer:Ljava/lang/String;

    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 283
    invoke-static {p1}, Lcom/oplus/tblplayer/exception/IPCException;->toIPCException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/exception/IPCException;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    return-object p0
.end method

.method public setMediaInfo(Lcom/oplus/tblplayer/misc/MediaInfo;)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->mediaUrl:Ljava/lang/String;

    .line 238
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaContentType:I

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->mediaContentType:I

    .line 239
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->videoRendererSupport:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->audioRendererSupport:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rendererSupport:I

    .line 240
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->width:I

    .line 241
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->height:I

    .line 242
    iget-object v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->videoMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoMimeType:Ljava/lang/String;

    .line 243
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->videoFps:F

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFps:F

    .line 244
    iget v0, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->audioSampleRate:I

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioSampleRate:I

    .line 245
    iget-object p1, p1, Lcom/oplus/tblplayer/misc/MediaInfo;->audioMimeType:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->audioMimeType:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setRebufferCount(JJ)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 261
    iput-wide p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferCount:J

    .line 262
    iput-wide p3, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->rebufferTimeMs:J

    return-object p0
.end method

.method public setRenderedFirstFrameTime(J)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->renderedFirstFrameTime:J

    return-object p0
.end method

.method public setTotalNetworkReadBytes(J)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 273
    iput-wide p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->totalNetworkReadBytes:J

    return-object p0
.end method

.method public setVideoFLR(F)Lcom/oplus/tblplayer/monitor/Report$Builder;
    .locals 0

    .line 251
    iput p1, p0, Lcom/oplus/tblplayer/monitor/Report$Builder;->videoFLR:F

    return-object p0
.end method
