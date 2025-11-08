.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;
.super Ljava/lang/Object;
.source "NvsMultiThumbnailSequenceView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;",
        ">;"
    }
.end annotation


# instance fields
.field public m_seqIndex:I

.field public m_timestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    .line 180
    iput-wide p2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;)I
    .locals 5

    .line 186
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    iget v1, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 191
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    iget-wide p0, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    cmp-long v4, v0, p0

    if-gez v4, :cond_2

    return v2

    :cond_2
    cmp-long p0, v0, p0

    if-lez p0, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 172
    check-cast p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;

    invoke-virtual {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->compareTo(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;)I

    move-result p0

    return p0
.end method
