.class public Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;
.super Ljava/lang/Object;
.source "FfmpegExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FfmpegSeekMap"
.end annotation


# instance fields
.field private durationUs:J

.field private ffmpegParserJni:Lcom/oplus/tblplayer/ffmpeg/FfmpegParserJni;

.field private position:J


# direct methods
.method public constructor <init>(JLcom/oplus/tblplayer/ffmpeg/FfmpegParserJni;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->durationUs:J

    .line 562
    iput-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->ffmpegParserJni:Lcom/oplus/tblplayer/ffmpeg/FfmpegParserJni;

    const-wide/16 p1, 0x0

    .line 563
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->position:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 577
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 4

    .line 582
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->position:J

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public isSeekable()Z
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->ffmpegParserJni:Lcom/oplus/tblplayer/ffmpeg/FfmpegParserJni;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegParserJni;->isSeekable()Z

    move-result p0

    return p0
.end method

.method public setCurrentPosition(J)V
    .locals 0

    .line 567
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor$FfmpegSeekMap;->position:J

    return-void
.end method
