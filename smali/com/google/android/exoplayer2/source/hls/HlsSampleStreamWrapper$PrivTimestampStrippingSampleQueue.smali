.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;
.super Lcom/google/android/exoplayer2/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivTimestampStrippingSampleQueue"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 1146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    return-void
.end method

.method private getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1163
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 1166
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 1167
    instance-of v5, v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v5, :cond_1

    .line 1168
    check-cast v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 1169
    iget-object v4, v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v5, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_3

    return-object p1

    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    return-object p0

    :cond_4
    add-int/lit8 p0, v0, -0x1

    .line 1181
    new-array p0, p0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    :goto_2
    if-ge v1, v0, :cond_7

    if-eq v1, v2, :cond_6

    if-ge v1, v2, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v1, -0x1

    .line 1185
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    aput-object v4, p0, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1188
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method


# virtual methods
.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1151
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;->getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
