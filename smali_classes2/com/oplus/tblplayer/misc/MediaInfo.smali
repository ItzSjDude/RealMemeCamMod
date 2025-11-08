.class public Lcom/oplus/tblplayer/misc/MediaInfo;
.super Lcom/oplus/tblplayer/Constants;
.source "MediaInfo.java"


# static fields
.field public static final RENDERER_SUPPORT_HARDWARE:I = 0x3

.field public static final RENDERER_SUPPORT_HARDWARE_TO_SOFTWARE:I = 0x4

.field public static final RENDERER_SUPPORT_NO_TRACK:I = 0x1

.field public static final RENDERER_SUPPORT_SOFTWARE:I = 0x5

.field public static final RENDERER_SUPPORT_UNSET:I = 0x0

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACK:I = 0x2

.field public static final RENDERER_TYPE_FF_AUDIO:Ljava/lang/String; = "FF_AUDIO"

.field public static final RENDERER_TYPE_FF_VIDEO:Ljava/lang/String; = "FF_VIDEO"

.field public static final RENDERER_TYPE_MC_AUDIO:Ljava/lang/String; = "MC_AUDIO"

.field public static final RENDERER_TYPE_MC_VIDEO:Ljava/lang/String; = "MC_VIDEO"

.field public static final RENDERER_TYPE_METADATA:Ljava/lang/String; = "METADATA"

.field public static final RENDERER_TYPE_NONE:Ljava/lang/String; = "None"

.field public static final RENDERER_TYPE_NOT_LOAD:Ljava/lang/String; = "NOT_LOAD"

.field public static final RENDERER_TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field public static final RENDERER_TYPE_UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field public audioDecoder:Ljava/lang/String;

.field public audioMimeType:Ljava/lang/String;

.field public audioRendererSupport:I

.field public audioSampleRate:I

.field public bitrate:I

.field public height:I

.field public mediaContentType:I

.field public mediaPlayerName:Ljava/lang/String;

.field public mediaUrl:Ljava/lang/String;

.field public videoDecoder:Ljava/lang/String;

.field public videoFps:F

.field public videoMimeType:Ljava/lang/String;

.field public videoRendererSupport:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/oplus/tblplayer/Constants;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    .line 65
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    .line 70
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->bitrate:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 85
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoFps:F

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoRendererSupport:I

    .line 96
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioRendererSupport:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/misc/MediaInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/oplus/tblplayer/Constants;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    .line 65
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    .line 70
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->bitrate:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 85
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoFps:F

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoRendererSupport:I

    .line 96
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioRendererSupport:I

    .line 105
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaUrl:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaContentType:I

    return-void
.end method


# virtual methods
.method public getBitrateString()Ljava/lang/String;
    .locals 0

    .line 130
    iget p0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->bitrate:I

    if-gtz p0, :cond_0

    const-string p0, "N/A"

    return-object p0

    .line 134
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 2

    .line 110
    iget v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget p0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "N/A"

    return-object p0
.end method

.method public getVideoFpsString()Ljava/lang/String;
    .locals 1

    .line 122
    iget p0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoFps:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    .line 126
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{mediaPlayerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->mediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoDecoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDecoderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->videoRendererSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioDecoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioDecoderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/tblplayer/misc/MediaInfo;->audioRendererSupport:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
