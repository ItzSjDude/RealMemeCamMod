.class public Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecInitializedTimestampMs:J

.field private codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private fastRendererTimeUs:J

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastInputTimeUs:J

.field private lastPresentTimeUs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mediaFormatAttr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private needDropFrame:Z

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private final pendingOutputStreamSwitchTimesUs:[J

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedPixelWidthHeightRatio:F

.field private reportedUnappliedRotationDegrees:I

.field private reportedWidth:I

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 89
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 197
    invoke-direct/range {v0 .. v9}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    const/4 v1, 0x2

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZF)V

    .line 115
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    .line 237
    iput-wide p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 238
    iput p9, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 240
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    iget-object p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 241
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p7, p8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 242
    invoke-static {}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const/16 p1, 0xa

    .line 243
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    .line 244
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 245
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 246
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecInitializedTimestampMs:J

    .line 247
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 248
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 p3, -0x1

    .line 249
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    .line 250
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 251
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 252
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    const/4 p3, 0x1

    .line 253
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->scalingMode:I

    .line 254
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    const/4 p3, 0x0

    .line 255
    iput-boolean p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->needDropFrame:Z

    .line 256
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    .line 257
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 3

    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1079
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    new-instance v1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 2

    const/4 v0, -0x1

    .line 1103
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1104
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedHeight:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1105
    iput v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 1106
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1157
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1158
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsMandatoryRenderWorkaround(Lcom/google/android/exoplayer2/Format;)Z
    .locals 5

    .line 1407
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x74b1510b

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x7a13ac37

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "RMX2040"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "OP48A1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    return v3

    :cond_3
    if-eqz p0, :cond_4

    .line 1410
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v0, 0x41e80000    # 29.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    const-string p0, "MediaCodecVideoRenderer"

    const-string v0, "deviceNeedsMandatoryRenderWorkaround: workaround for 4K 30fps"

    .line 1414
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v3
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .locals 2

    .line 1438
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1360
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_2

    return v0

    :cond_2
    mul-int/2addr p2, p3

    goto :goto_4

    .line 1367
    :cond_3
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1368
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1369
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1370
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p0, 0x10

    .line 1376
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/2addr p1, p0

    mul-int/lit8 p2, p1, 0x10

    goto :goto_3

    :cond_5
    :goto_2
    return v0

    :cond_6
    mul-int/2addr p2, p3

    :goto_3
    move v4, v6

    :goto_4
    mul-int/2addr p2, v5

    mul-int/2addr v4, v6

    .line 1394
    div-int/2addr p2, v4

    return p2

    :cond_7
    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1286
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1287
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1288
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1290
    sget-object v5, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_7

    .line 1295
    :cond_3
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 1296
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1298
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1299
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v7, 0x10

    .line 1304
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/2addr v8, v7

    .line 1305
    invoke-static {v9, v7}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/2addr v7, v9

    mul-int v9, v8, v7

    .line 1306
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v10

    if-gt v9, v10, :cond_9

    .line 1307
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v7

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    move v7, v8

    :cond_8
    invoke-direct {p0, p1, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_7
    return-object v7
.end method

.method private static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 1324
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1328
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1330
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1336
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 1131
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 1132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1133
    iget-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1134
    iget-object v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1135
    iput v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1136
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .line 1110
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedWidth:I

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedHeight:I

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1116
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1117
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedHeight:I

    .line 1118
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    .line 1119
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    :cond_2
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    .line 1097
    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 4

    .line 1124
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedWidth:I

    iget v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedHeight:I

    iget v3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    .locals 6

    .line 857
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 858
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method private processOutputFormat(Landroid/media/MediaCodec;II)V
    .locals 0

    .line 834
    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    .line 835
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    .line 836
    iget p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 837
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 841
    iget p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_0

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2

    .line 842
    :cond_0
    iget p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    .line 843
    iget p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    .line 844
    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 845
    iget p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, p3

    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_0

    .line 849
    :cond_1
    iget p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 852
    :cond_2
    :goto_0
    iget p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 1069
    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1152
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 471
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 476
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_7

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 479
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_5

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v2

    .line 482
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v4, :cond_4

    .line 484
    iget-wide v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecInitializedTimestampMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecInitializedTimestampMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    const-string v4, "Set surface within 50ms after MediaCodec start, will delay 50ms."

    .line 492
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "Thread sleep is interrupted."

    .line 496
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_3
    :goto_1
    invoke-static {v2, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_2

    .line 502
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->releaseCodec()V

    .line 503
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeInitCodec()V

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 506
    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_6

    .line 508
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 510
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    if-ne v0, v3, :cond_8

    .line 512
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_3

    .line 516
    :cond_6
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 517
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 519
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_8

    .line 522
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 523
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_8
    :goto_3
    return-void
.end method

.method private shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 1062
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1064
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1065
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    const/4 p1, 0x1

    .line 576
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt v0, v1, :cond_1

    .line 580
    invoke-static {p2, p4}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p2

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    iget p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt p2, p0, :cond_1

    .line 581
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 5

    const-string p0, "OMX.google"

    .line 1464
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    .line 1468
    :cond_0
    const-class p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;

    monitor-enter p0

    .line 1469
    :try_start_0
    sget-boolean v0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_9

    .line 1470
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    const-string v0, "dangal"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HWEML"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    :cond_1
    sput-boolean v2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    goto/16 :goto_5

    .line 1474
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_3

    goto/16 :goto_5

    .line 1492
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, p1

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_5e
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_5f
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_60
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_61
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_62
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_63
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_64
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_65
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_66
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_67
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_68
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_69
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_6a
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_6b
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_6c
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_6d
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_6e
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_6f
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_70
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_71
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_72
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_73
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x57

    goto :goto_1

    :sswitch_74
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x56

    goto :goto_1

    :sswitch_75
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4c

    goto :goto_1

    :sswitch_76
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4b

    goto :goto_1

    :sswitch_77
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_78
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e

    goto :goto_1

    :sswitch_79
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2c

    goto :goto_1

    :sswitch_7a
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2b

    goto :goto_1

    :sswitch_7b
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2a

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1617
    :pswitch_0
    sput-boolean v2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1623
    :goto_2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x1e9d52

    if-eq v1, v3, :cond_6

    const p1, 0x1e9d5f

    if-eq v1, p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "AFTN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_4

    :cond_6
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move p1, v4

    :goto_4
    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_8

    goto :goto_5

    .line 1626
    :cond_8
    sput-boolean v2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1633
    :goto_5
    sput-boolean v2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1635
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    sget-boolean p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p0

    :catchall_0
    move-exception p1

    .line 1635
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7b
        -0x7fd6c381 -> :sswitch_7a
        -0x7fd6c368 -> :sswitch_79
        -0x7d026749 -> :sswitch_78
        -0x78929d6a -> :sswitch_77
        -0x75f50a1e -> :sswitch_76
        -0x75f4fe9d -> :sswitch_75
        -0x736f875c -> :sswitch_74
        -0x736f83c2 -> :sswitch_73
        -0x736f83c1 -> :sswitch_72
        -0x7327ce1c -> :sswitch_71
        -0x651ebb62 -> :sswitch_70
        -0x6423293b -> :sswitch_6f
        -0x604f5117 -> :sswitch_6e
        -0x5ca40cc4 -> :sswitch_6d
        -0x58520ec1 -> :sswitch_6c
        -0x58520eba -> :sswitch_6b
        -0x58520eb9 -> :sswitch_6a
        -0x4eaed329 -> :sswitch_69
        -0x4892fb4f -> :sswitch_68
        -0x465b3df3 -> :sswitch_67
        -0x43e6c939 -> :sswitch_66
        -0x3ec0fcc5 -> :sswitch_65
        -0x3b33cca0 -> :sswitch_64
        -0x398ae3f6 -> :sswitch_63
        -0x391f0fb4 -> :sswitch_62
        -0x346837ae -> :sswitch_61
        -0x323788e3 -> :sswitch_60
        -0x30f57652 -> :sswitch_5f
        -0x2f88a116 -> :sswitch_5e
        -0x2f61ed98 -> :sswitch_5d
        -0x2efd0837 -> :sswitch_5c
        -0x2e9e9441 -> :sswitch_5b
        -0x2247b8b1 -> :sswitch_5a
        -0x1f0fa2b7 -> :sswitch_59
        -0x19af3b41 -> :sswitch_58
        -0x114fad3e -> :sswitch_57
        -0x10dae90b -> :sswitch_56
        -0x1084b7b7 -> :sswitch_55
        -0xa5988e9 -> :sswitch_54
        -0x35f9fbf -> :sswitch_53
        0x84e -> :sswitch_52
        0xa04 -> :sswitch_51
        0xa9b -> :sswitch_50
        0xa9f -> :sswitch_4f
        0xd9b -> :sswitch_4e
        0x11ebd -> :sswitch_4d
        0x127db -> :sswitch_4c
        0x12beb -> :sswitch_4b
        0x1334d -> :sswitch_4a
        0x135c9 -> :sswitch_49
        0x13aea -> :sswitch_48
        0x158d2 -> :sswitch_47
        0x1821e -> :sswitch_46
        0x18220 -> :sswitch_45
        0x18401 -> :sswitch_44
        0x18c69 -> :sswitch_43
        0x1716e6 -> :sswitch_42
        0x171ac8 -> :sswitch_41
        0x171ac9 -> :sswitch_40
        0x252f5f -> :sswitch_3f
        0x25981d -> :sswitch_3e
        0x259b88 -> :sswitch_3d
        0x290a13 -> :sswitch_3c
        0x3021fd -> :sswitch_3b
        0x321e47 -> :sswitch_3a
        0x332327 -> :sswitch_39
        0x33ab63 -> :sswitch_38
        0x27691fb -> :sswitch_37
        0x349f581 -> :sswitch_36
        0x3ab0ea7 -> :sswitch_35
        0x3e53ea5 -> :sswitch_34
        0x3f25a44 -> :sswitch_33
        0x3f25a46 -> :sswitch_32
        0x3f25a49 -> :sswitch_31
        0x3f25e05 -> :sswitch_30
        0x3f25e07 -> :sswitch_2f
        0x3f25e09 -> :sswitch_2e
        0x3f261c6 -> :sswitch_2d
        0x48dce49 -> :sswitch_2c
        0x48dd589 -> :sswitch_2b
        0x48dd8af -> :sswitch_2a
        0x4d36832 -> :sswitch_29
        0x4f0b0e7 -> :sswitch_28
        0x5e2479e -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    .line 547
    iget-object v3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecMaxValues:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v5, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget v6, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move-object v1, p0

    move-object v2, p3

    move v4, p5

    .line 548
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 554
    iget-object p5, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez p5, :cond_1

    .line 555
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p5

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 556
    iget-object p5, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-nez p5, :cond_0

    .line 557
    iget-object p5, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p5, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 562
    :cond_1
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 563
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 564
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p3, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 568
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_3

    iget-boolean p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_3

    .line 569
    new-instance p1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$1;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_3
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 971
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 972
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 973
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 974
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    return-void
.end method

.method protected flushCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 608
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1226
    iget p0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1227
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1228
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 1229
    array-length v2, p3

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v3, :cond_1

    if-eq v1, v4, :cond_0

    .line 1233
    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->width:I

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1234
    invoke-static {p1, p3, v2, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p1

    if-eq p1, v4, :cond_0

    int-to-float p2, v1

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 1242
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1245
    :cond_0
    new-instance p1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, p0, v0, v1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1248
    :cond_1
    array-length v2, p3

    const/4 v5, 0x0

    move v6, v0

    move v7, v1

    move v0, v5

    move v1, p0

    move p0, v0

    :goto_0
    if-ge p0, v2, :cond_5

    aget-object v8, p3, p0

    .line 1249
    invoke-virtual {p1, p2, v8, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1251
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v9, v4, :cond_3

    iget v9, v8, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v9, v4, :cond_2

    goto :goto_1

    :cond_2
    move v9, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v3

    :goto_2
    or-int/2addr v0, v9

    .line 1253
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1254
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1255
    invoke-static {p1, v8}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaCodecVideoRenderer"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1262
    iget v2, p0, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1263
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1264
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1267
    invoke-static {p1, p0, v1, v6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p0

    .line 1265
    invoke-static {v7, p0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Codec max resolution adjusted to: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_6
    new-instance p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p0, v1, v6, v7}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 0

    .line 535
    iget-boolean p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    return p0
.end method

.method protected getCodecOperatingRate(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 4

    .line 618
    array-length p0, p3

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p3, v0

    .line 619
    iget v2, v2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_0

    .line 621
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v1, p2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    mul-float p2, v1, p1

    :goto_1
    return p2
.end method

.method protected getLastPresentTimeUs()J
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    return-wide v0
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1181
    new-instance p0, Landroid/media/MediaFormat;

    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    .line 1183
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "mime"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v1, "width"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1185
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v1, "height"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1186
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1188
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1189
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1190
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 1192
    iget p1, p2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string v0, "max-width"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1193
    iget p1, p2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string v0, "max-height"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1194
    iget p1, p2, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {p0, p2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1197
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const-string p1, "priority"

    .line 1198
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_0

    const-string p1, "operating-rate"

    .line 1200
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    if-eqz p4, :cond_1

    const/4 p1, 0x1

    const-string p3, "no-post-process"

    .line 1204
    invoke-virtual {p0, p3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1205
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    if-eqz p5, :cond_2

    .line 1208
    invoke-static {p0, p5}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_2
    return-object p0
.end method

.method protected getOutputStreamOffsetUs()J
    .locals 2

    .line 869
    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    return-wide v0
.end method

.method protected getRenderedFirstFrame()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    return p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 440
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 442
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->scalingMode:I

    .line 443
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 445
    iget p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 448
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 450
    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    if-eqz p0, :cond_5

    .line 451
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->setVsyncOffsetPercentage(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 453
    check-cast p2, Ljava/util/HashMap;

    .line 454
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 455
    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 458
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public isReady()Z
    .locals 9

    .line 380
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_2

    .line 383
    :cond_1
    iput-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 385
    :cond_2
    iget-wide v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 388
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    .line 393
    :cond_4
    iput-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v4
.end method

.method protected maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 991
    invoke-virtual {p0, p5, p6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 995
    :cond_0
    iget-object p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 998
    iget p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 999
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->flushCodec()V

    return p4
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 1089
    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1090
    iput-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1091
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    .line 1092
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 630
    iput-wide p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecInitializedTimestampMs:J

    .line 631
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 632
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    return-void
.end method

.method protected onDisabled()V
    .locals 2

    const/4 v0, -0x1

    .line 415
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentWidth:I

    .line 416
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 417
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 418
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 419
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 420
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->codecInitializedTimestampMs:J

    .line 421
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 423
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 424
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 425
    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    const/4 v1, 0x0

    .line 426
    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 427
    iput-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    .line 428
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->mediaFormatAttr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 430
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 433
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    .line 432
    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 433
    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 302
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 304
    iget p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    .line 305
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 306
    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 637
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 638
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 639
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 640
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 662
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 668
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_2

    :cond_2
    const-string v1, "height"

    .line 672
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 673
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 340
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 341
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    .line 342
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 343
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 345
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 346
    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    iput-wide v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 348
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    :cond_0
    if-eqz p3, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 353
    :cond_1
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onPositionResetInGop(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 360
    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    .line 361
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid positionUs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",lastPresentTimeUs:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecVideoRenderer"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 365
    iput-boolean p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->needDropFrame:Z

    .line 366
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 367
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 368
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 6

    .line 891
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 892
    :goto_0
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    add-int/lit8 v0, v0, -0x1

    .line 895
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 896
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    iget v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .locals 3

    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-direct {p0, v1, v2, v0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    .line 878
    :cond_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 879
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4

    .line 651
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 652
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 653
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 656
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_0
    return-void
.end method

.method protected onSetFastRendererPosition(JZ)V
    .locals 2

    .line 373
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetFastRendererPosition positionUs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", initialPositionUs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaCodecVideoRenderer"

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    return-void
.end method

.method protected onStarted()V
    .locals 4

    .line 400
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 408
    iput-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 409
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 410
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 311
    iget-wide v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 312
    iput-wide p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    goto :goto_1

    .line 314
    :cond_0
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 318
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 321
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastInputTimeUs:J

    aput-wide v2, v0, v1

    .line 323
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLcom/google/android/exoplayer2/Format;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v5, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-wide/from16 v0, p9

    .line 688
    iget-wide v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v12

    if-nez v2, :cond_0

    .line 689
    iput-wide v5, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 692
    :cond_0
    iget-wide v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v2, v0, v2

    const/4 v14, 0x0

    if-ltz v2, :cond_1

    .line 693
    iput-boolean v14, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->needDropFrame:Z

    .line 696
    :cond_1
    iput-wide v0, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    .line 697
    iget-wide v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    sub-long v3, v0, v2

    if-nez p11, :cond_2

    .line 699
    iget-boolean v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->needDropFrame:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v14, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->fastRendererTimeUs:J

    cmp-long v2, v14, v12

    if-eqz v2, :cond_13

    iget-wide v12, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastPresentTimeUs:J

    cmp-long v2, v14, v12

    if-lez v2, :cond_3

    goto/16 :goto_5

    :cond_3
    sub-long v12, v0, v5

    .line 709
    iget-object v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v14, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-ne v2, v14, :cond_5

    .line 711
    invoke-static {v12, v13}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 712
    invoke-virtual {v7, v10, v11, v3, v4}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->getState()I

    move-result v2

    move-wide/from16 v18, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 720
    :goto_0
    iget-boolean v3, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v3, :cond_11

    if-eqz v2, :cond_7

    iget-wide v4, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    sub-long v3, v14, v4

    .line 722
    invoke-virtual {v7, v12, v13, v3, v4}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    :cond_7
    if-eqz v2, :cond_10

    .line 733
    iget-wide v2, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    goto/16 :goto_2

    :cond_8
    sub-long/2addr v14, v8

    sub-long/2addr v12, v14

    .line 743
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v12, v12, v16

    add-long/2addr v12, v2

    .line 747
    iget-object v4, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v4, v0, v1, v12, v13}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v12

    sub-long v0, v12, v2

    .line 749
    div-long v14, v0, v16

    .line 787
    invoke-static/range {p12 .. p12}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->deviceNeedsMandatoryRenderWorkaround(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 788
    invoke-virtual {v7, v14, v15, v8, v9}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 p9, v12

    move-wide/from16 v5, v18

    const/16 v12, 0x15

    move-wide v3, v5

    move-wide v12, v5

    move-wide/from16 v5, p1

    .line 789
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_9
    move-wide/from16 p9, v12

    move-wide/from16 v12, v18

    .line 791
    :cond_a
    invoke-virtual {v7, v14, v15, v8, v9}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 792
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_b
    move-wide/from16 p9, v12

    move-wide/from16 v12, v18

    .line 797
    :cond_c
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    const-wide/32 v0, 0xc350

    cmp-long v0, v14, v0

    if-gez v0, :cond_f

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, p9

    move-object/from16 v5, p12

    .line 800
    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, p9

    .line 801
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    const/4 v0, 0x1

    return v0

    :cond_d
    const-wide/16 v0, 0x7530

    cmp-long v0, v14, v0

    if-gez v0, :cond_f

    const-wide/16 v0, 0x2af8

    cmp-long v0, v14, v0

    if-lez v0, :cond_e

    const-wide/16 v0, 0x2710

    sub-long/2addr v14, v0

    .line 812
    :try_start_0
    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 814
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, p9

    move-object/from16 v5, p12

    .line 818
    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 819
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_2
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_3
    move-wide/from16 v12, v18

    .line 723
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v8

    move-object/from16 v5, p12

    .line 724
    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 725
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide v5, v8

    .line 726
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    goto :goto_4

    .line 728
    :cond_12
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_4
    const/4 v0, 0x1

    return v0

    :cond_13
    :goto_5
    move-wide v12, v3

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDropFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->needDropFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preTimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",initTimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->initialPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0
.end method

.method protected releaseCodec()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 592
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 595
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 596
    iget-object v2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v0, :cond_0

    .line 597
    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 600
    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 594
    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 595
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 596
    iget-object v3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v3, v0, :cond_2

    .line 597
    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 600
    iput-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_3
    throw v2
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 2

    .line 1029
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1030
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1031
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1032
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1034
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1035
    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1036
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1051
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1052
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1054
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1056
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1057
    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1058
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 933
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 920
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 946
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 957
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 958
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 959
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 960
    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 264
    iget-object p0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 265
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 269
    :cond_0
    iget-object p0, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p0, :cond_1

    move v1, v0

    move v2, v1

    .line 271
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v1, v3, :cond_2

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 275
    :cond_2
    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 276
    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 278
    iget-object p0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 280
    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 281
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 285
    :cond_4
    invoke-static {p2, p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    if-nez p0, :cond_5

    return v4

    .line 289
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 290
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    .line 292
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_2

    :cond_6
    const/16 p2, 0x8

    .line 295
    :goto_2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    if-eqz p0, :cond_7

    const/16 v0, 0x20

    :cond_7
    if-eqz p1, :cond_8

    const/4 p0, 0x4

    goto :goto_3

    :cond_8
    const/4 p0, 0x3

    :goto_3
    or-int p1, p2, v0

    or-int/2addr p0, p1

    return p0
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1011
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1012
    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1013
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1015
    iget p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
