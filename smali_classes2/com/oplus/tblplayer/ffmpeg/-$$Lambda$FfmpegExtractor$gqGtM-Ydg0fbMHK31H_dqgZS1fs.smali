.class public final synthetic Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;

    invoke-direct {v0}, Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;->INSTANCE:Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$FfmpegExtractor$gqGtM-Ydg0fbMHK31H_dqgZS1fs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
