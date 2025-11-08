.class Lcom/oplus/camera/doubleexposure/g$2;
.super Ljava/lang/Object;
.source "VideoClipManager.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/doubleexposure/g;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/doubleexposure/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/doubleexposure/g;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/g$2;->a:Lcom/oplus/camera/doubleexposure/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    const-string p1, "VideoClipManager"

    const-string v0, "onPlaybackEOF"

    .line 91
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/g$2;->a:Lcom/oplus/camera/doubleexposure/g;

    invoke-virtual {p0}, Lcom/oplus/camera/doubleexposure/g;->f()V

    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    const-string p0, "VideoClipManager"

    const-string p1, "onPlaybackPreloadingCompletion"

    .line 81
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    const-string p0, "VideoClipManager"

    const-string p1, "onPlaybackStopped"

    .line 86
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
