.class public abstract Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/Buffer;
.source "OutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;
    }
.end annotation


# instance fields
.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
