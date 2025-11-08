.class final Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1657
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$1;)V
    .locals 0

    .line 1654
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1662
    iget-object p1, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;

    iget-object p1, p1, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, p1, :cond_0

    return-void

    .line 1666
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;

    invoke-virtual {p0, p2, p3}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    return-void
.end method
