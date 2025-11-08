.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;
.super Ljava/lang/Object;
.source "FfmpegLibrary.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AUDIO_APE:Ljava/lang/String; = "audio/ape"

.field static final AUDIO_ATRAC3:Ljava/lang/String; = "audio/atrac3"

.field static final AUDIO_COOK:Ljava/lang/String; = "audio/cook"

.field static final AUDIO_WMA1:Ljava/lang/String; = "audio/wmav1"

.field static final AUDIO_WMA2:Ljava/lang/String; = "audio/wmav2"

.field static final AUDIO_WMALOSSLESS:Ljava/lang/String; = "audio/wmalossless"

.field static final AUDIO_WMAPRO:Ljava/lang/String; = "audio/wmapro"

.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

.field private static final MIME_TYPE_PREFIX_APPLICATION:Ljava/lang/String; = "application/"

.field private static final MIME_TYPE_PREFIX_AUDIO:Ljava/lang/String; = "audio/"

.field private static final MIME_TYPE_PREFIX_TEXT:Ljava/lang/String; = "text/"

.field private static final MIME_TYPE_PREFIX_VIDEO:Ljava/lang/String; = "video/"

.field private static final TAG:Ljava/lang/String; = "FfmpegLibrary"

.field private static final VIDEO_FLV:Ljava/lang/String; = "video/flv"

.field private static final VIDEO_MSMPEG4:Ljava/lang/String; = "video/msmpeg4"

.field private static final VIDEO_WMV1:Ljava/lang/String; = "video/wmv1"

.field private static final VIDEO_WMV2:Ljava/lang/String; = "video/wmv2"

.field private static final VIDEO_WMV3:Ljava/lang/String; = "video/wmv3"

.field private static final containerWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "goog.exo.ffmpeg.tbl"

    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v1, "ffmpeg"

    const-string v2, "ffmpegJNI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v2, "aac"

    const-string v3, "aiff"

    const-string v4, "amr"

    const-string v5, "ape"

    const-string v6, "asf"

    const-string v7, "flac"

    const-string v8, "loas"

    const-string v9, "mov,mp4,m4a,3gp,3g2,mj2"

    const-string v10, "mp3"

    const-string v11, "ogg"

    const-string v12, "rm"

    const-string v13, "wav"

    .line 55
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->containerWhiteList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containerInWhiteList(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 131
    :cond_0
    sget-object v1, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->containerWhiteList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static native ffmpegGetVersion()Ljava/lang/String;
.end method

.method private static native ffmpegHasDecoder(Ljava/lang/String;)Z
.end method

.method static getCodecName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "audio/x-unknown"

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "video/x-unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "audio/g711-alaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "audio/true-hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "audio/opus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "audio/flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "audio/eac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "audio/cook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "audio/alac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "audio/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "video/mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "video/flv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "video/msmpeg4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "audio/ape"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "audio/ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "video/mpeg2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "audio/mpeg-L2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "audio/mpeg-L1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "audio/wmav2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "audio/vorbis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "audio/vnd.dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "audio/amr-wb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_1c
    const-string v1, "video/wvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x18

    goto :goto_0

    :sswitch_1d
    const-string v1, "video/wmv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x23

    goto :goto_0

    :sswitch_1e
    const-string v1, "video/wmv2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x22

    goto :goto_0

    :sswitch_1f
    const-string v1, "video/wmv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x21

    goto :goto_0

    :sswitch_20
    const-string v1, "video/webm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x19

    goto :goto_0

    :sswitch_21
    const-string v1, "video/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_22
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x17

    goto :goto_0

    :sswitch_23
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x15

    goto :goto_0

    :sswitch_24
    const-string v1, "audio/eac3-joc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    :cond_2
    :goto_0
    const-string v1, "h264"

    packed-switch v0, :pswitch_data_0

    .line 228
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->parseFfmpegCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "flv"

    return-object p0

    :pswitch_1
    const-string p0, "wmv3"

    return-object p0

    :pswitch_2
    const-string p0, "wmv2"

    return-object p0

    :pswitch_3
    const-string p0, "wmv1"

    return-object p0

    :pswitch_4
    const-string p0, "msmpeg4"

    return-object p0

    :pswitch_5
    const-string p0, "mpeg2video"

    return-object p0

    :pswitch_6
    const-string p0, "mpegvideo"

    return-object p0

    :pswitch_7
    const-string p0, "mpeg4"

    return-object p0

    :pswitch_8
    return-object v1

    :pswitch_9
    const-string p0, "vp9"

    return-object p0

    :pswitch_a
    const-string p0, "vp8"

    return-object p0

    :pswitch_b
    const-string p0, "vc1"

    return-object p0

    :pswitch_c
    const-string p0, "hevc"

    return-object p0

    :pswitch_d
    return-object v1

    :pswitch_e
    const-string p0, "h263"

    return-object p0

    :pswitch_f
    const-string p0, "cook"

    return-object p0

    :pswitch_10
    const-string p0, "ape"

    return-object p0

    :pswitch_11
    const-string p0, "wmav2"

    return-object p0

    :pswitch_12
    const-string p0, "pcm_alaw"

    return-object p0

    :pswitch_13
    const-string p0, "pcm_mulaw"

    return-object p0

    :pswitch_14
    const-string p0, "alac"

    return-object p0

    :pswitch_15
    const-string p0, "flac"

    return-object p0

    :pswitch_16
    const-string p0, "amrwb"

    return-object p0

    :pswitch_17
    const-string p0, "amrnb"

    return-object p0

    :pswitch_18
    const-string p0, "opus"

    return-object p0

    :pswitch_19
    const-string p0, "vorbis"

    return-object p0

    :pswitch_1a
    const-string p0, "dca"

    return-object p0

    :pswitch_1b
    const-string p0, "truehd"

    return-object p0

    :pswitch_1c
    const-string p0, "eac3"

    return-object p0

    :pswitch_1d
    const-string p0, "ac3"

    return-object p0

    :pswitch_1e
    const-string p0, "mp2"

    return-object p0

    :pswitch_1f
    const-string p0, "mp3"

    return-object p0

    :pswitch_20
    const-string p0, "aac"

    return-object p0

    :cond_3
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_24
        -0x63306f58 -> :sswitch_23
        -0x63185e82 -> :sswitch_22
        -0x6315f167 -> :sswitch_21
        -0x63118f53 -> :sswitch_20
        -0x63116f1b -> :sswitch_1f
        -0x63116f1a -> :sswitch_1e
        -0x63116f19 -> :sswitch_1d
        -0x63114f9f -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x41455b98 -> :sswitch_1a
        -0x3bd43e14 -> :sswitch_19
        -0x22e96372 -> :sswitch_18
        -0x19cc928c -> :sswitch_17
        -0x19cc928b -> :sswitch_16
        -0x3313c2e -> :sswitch_15
        0x57c4b9 -> :sswitch_14
        0xb269698 -> :sswitch_13
        0xb26985d -> :sswitch_12
        0x46cdc642 -> :sswitch_11
        0x4f0da3d5 -> :sswitch_10
        0x4f62373a -> :sswitch_f
        0x4f6248dc -> :sswitch_e
        0x4f62635d -> :sswitch_d
        0x59976a2d -> :sswitch_c
        0x59ac6426 -> :sswitch_b
        0x59ad59e1 -> :sswitch_a
        0x59ae0c65 -> :sswitch_9
        0x59aeaa01 -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59c2dc42 -> :sswitch_5
        0x5cc95062 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->ffmpegGetVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static parseFfmpegCodecName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "audio/"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "video/"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "text/"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs setLibraries([Ljava/lang/String;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->setLibraries([Ljava/lang/String;)V

    return-void
.end method

.method static supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 104
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 117
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->ffmpegHasDecoder(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
