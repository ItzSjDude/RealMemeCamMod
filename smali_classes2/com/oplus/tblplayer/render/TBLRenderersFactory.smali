.class public Lcom/oplus/tblplayer/render/TBLRenderersFactory;
.super Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.source "TBLRenderersFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLRenderersFactory"


# instance fields
.field private rendererType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/render/TBLRenderersFactory;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 40
    iput p2, p0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 73
    iget v1, v0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 74
    new-instance v14, Lcom/oplus/tblplayer/render/TBLMediaCodecAudioRenderer;

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v8

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/oplus/tblplayer/render/TBLMediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 83
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget v0, v0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 88
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;

    invoke-direct {v0, v11, v12, v10}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegRawAudioRenderer;

    invoke-direct {v0, v11, v12, v10}, Lcom/oplus/tblplayer/ffmpeg/FfmpegRawAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    .line 114
    iget v2, v0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 115
    new-instance v2, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;

    const/16 v13, 0x32

    move-object v4, v2

    move-object v5, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p8

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v13}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 124
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    iget v0, v0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 129
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;

    const/16 v10, 0x32

    move-object v4, v0

    move-object v5, p1

    move-wide/from16 v6, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;-><init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 142
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x5

    .line 143
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v3

    const-class v6, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v6, v5, v9

    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 151
    new-array v4, v4, [Ljava/lang/Object;

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    .line 154
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p6, v4, v3

    aput-object p7, v4, v8

    const/16 v2, 0x32

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Renderer;

    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating av1 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Lcom/google/android/exoplayer2/Renderer;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRenderers: renderer type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;->rendererType:I

    invoke-static {v1}, Lcom/oplus/tblplayer/utils/LogUtil;->getRendererTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBLRenderersFactory"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object p0

    return-object p0
.end method
