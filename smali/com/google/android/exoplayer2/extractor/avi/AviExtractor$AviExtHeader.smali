.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviExtHeader;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AviExtHeader"
.end annotation


# instance fields
.field public Future:[I

.field public GrandFrames:I

.field public cb:I

.field public fcc:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviExtHeader;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3d

    .line 110
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviExtHeader;->Future:[I

    return-void
.end method
