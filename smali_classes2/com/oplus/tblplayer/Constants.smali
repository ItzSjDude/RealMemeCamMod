.class public Lcom/oplus/tblplayer/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/Constants$ContentType;,
        Lcom/oplus/tblplayer/Constants$NetworkType;,
        Lcom/oplus/tblplayer/Constants$VideoScalingMode;,
        Lcom/oplus/tblplayer/Constants$ExtractorType;,
        Lcom/oplus/tblplayer/Constants$RendererType;
    }
.end annotation


# static fields
.field public static final DEFAULT_APPLICATION_NAME:Ljava/lang/String; = "TBLPlayer"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field public static final INTEGER_VALUE_UNSET:I = -0x1

.field public static final NETWORK_TYPE_2G:I = 0x3

.field public static final NETWORK_TYPE_3G:I = 0x4

.field public static final NETWORK_TYPE_4G:I = 0x5

.field public static final NETWORK_TYPE_CELLULAR_UNKNOWN:I = 0x6

.field public static final NETWORK_TYPE_ETHERNET:I = 0x7

.field public static final NETWORK_TYPE_OFFLINE:I = 0x1

.field public static final NETWORK_TYPE_OTHER:I = 0x8

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field public static final RENDERER_DECODE_MODE_AUTO:I = 0x0

.field public static final RENDERER_DECODE_MODE_HW:I = 0x1

.field public static final RENDERER_DECODE_MODE_SW:I = 0x2

.field public static SLOW_MOTION_HSR_HEAD:Ljava/lang/String; = null

.field public static final SOURCE_EXTRACTOR_MODE_ALL:I = 0x0

.field public static final SOURCE_EXTRACTOR_MODE_EXO:I = 0x1

.field public static final SOURCE_EXTRACTOR_MODE_FFMPEG:I = 0x2

.field public static final STRING_VALUE_UNSET:Ljava/lang/String; = "N/A"

.field public static final TIME_END_OF_SOURCE:J = -0x8000000000000000L

.field public static final TIME_UNSET:J = -0x7fffffffffffffffL

.field public static final TYPE_ASSET:I = 0x6

.field public static final TYPE_CONTENT:I = 0x5

.field public static final TYPE_DASH:I = 0x0

.field public static final TYPE_HLS:I = 0x2

.field public static final TYPE_LOCAL:I = 0x4

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_RAW:I = 0x7

.field public static final TYPE_RTMP:I = 0x9

.field public static final TYPE_SCHEME_DATA:I = 0x8

.field public static final TYPE_SS:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBLPlayer/1.5.9-GALLERY (Linux;Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.9.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tblplayer/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    const-string v0, "slow_motion_hsr_"

    .line 24
    sput-object v0, Lcom/oplus/tblplayer/Constants;->SLOW_MOTION_HSR_HEAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
