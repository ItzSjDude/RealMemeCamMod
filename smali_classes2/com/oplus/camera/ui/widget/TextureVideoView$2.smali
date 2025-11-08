.class Lcom/oplus/camera/ui/widget/TextureVideoView$2;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 141
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->d(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->e(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->seekTo(I)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {v2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 161
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->f(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 162
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->f(Lcom/oplus/camera/ui/widget/TextureVideoView;)I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView$2;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    :cond_3
    :goto_0
    return-void
.end method
