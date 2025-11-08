.class public interface abstract Lcom/google/android/exoplayer2/trackselection/TrackSelection;
.super Ljava/lang/Object;
.source "TrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    }
.end annotation


# virtual methods
.method public abstract blacklist(IJ)Z
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluateQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getFormat(I)Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract getIndexInTrackGroup(I)I
.end method

.method public abstract getSelectedFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
.end method

.method public abstract indexOf(I)I
.end method

.method public abstract indexOf(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public abstract length()I
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public updateSelectedTrack(JJJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-interface/range {p0 .. p6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    return-void
.end method
