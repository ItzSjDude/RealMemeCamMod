.class Lcom/oplus/camera/timelapsepro/f$6$1;
.super Ljava/lang/Object;
.source "TimeLapseProGuideLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/f$6;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/f$6;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/f$6;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f$6$1;->a:Lcom/oplus/camera/timelapsepro/f$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p0, 0x1

    .line 218
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 219
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
