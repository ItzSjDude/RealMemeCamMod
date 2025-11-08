.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoStreamHeader"
.end annotation


# instance fields
.field public biBitCount:I

.field public biClrImportant:J

.field public biClrUsed:J

.field public biCompression:J

.field public biHeight:J

.field public biPlanes:I

.field public biSize:J

.field public biSizeImage:J

.field public biWidth:J

.field public biXPelsPerMeter:J

.field public biYPelsPerMeter:J

.field public cb:J

.field public fcc:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
