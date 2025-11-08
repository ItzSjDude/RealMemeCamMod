.class final Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;
.super Ljava/lang/Object;
.source "SurfaceCache.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/utils/SurfaceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;


# direct methods
.method private constructor <init>(Lcom/oplus/tblplayer/utils/SurfaceCache;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;->this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/tblplayer/utils/SurfaceCache;Lcom/oplus/tblplayer/utils/SurfaceCache$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;-><init>(Lcom/oplus/tblplayer/utils/SurfaceCache;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;->this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/oplus/tblplayer/utils/SurfaceCache;->access$100(Lcom/oplus/tblplayer/utils/SurfaceCache;Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;->this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oplus/tblplayer/utils/SurfaceCache;->access$100(Lcom/oplus/tblplayer/utils/SurfaceCache;Landroid/view/Surface;Z)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;->this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/tblplayer/utils/SurfaceCache;->access$100(Lcom/oplus/tblplayer/utils/SurfaceCache;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/oplus/tblplayer/utils/SurfaceCache$ComponentListener;->this$0:Lcom/oplus/tblplayer/utils/SurfaceCache;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/tblplayer/utils/SurfaceCache;->access$100(Lcom/oplus/tblplayer/utils/SurfaceCache;Landroid/view/Surface;Z)V

    return-void
.end method
