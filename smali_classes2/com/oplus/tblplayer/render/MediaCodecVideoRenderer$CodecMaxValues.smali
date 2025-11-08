.class public final Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    iput p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 1647
    iput p2, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 1648
    iput p3, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method
