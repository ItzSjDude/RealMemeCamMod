.class Lcom/oplus/camera/ui/widget/TextureVideoView$7;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/widget/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 246
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->j(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->k(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->k(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 254
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->d(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 232
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->f(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 235
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->d(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 236
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->e(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->e(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->seekTo(I)V

    .line 240
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$7;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    :cond_3
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
