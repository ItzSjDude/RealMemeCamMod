.class Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;
.super Ljava/lang/Object;
.source "RemoteSurfaceCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteSurfaceCache"


# instance fields
.field private final componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

.field private final mPlayer:Lcom/oplus/tblplayer/remote/RemotePlayerProxy;

.field private ownsSurface:Z

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/remote/RemotePlayerProxy;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->mPlayer:Lcom/oplus/tblplayer/remote/RemotePlayerProxy;

    .line 41
    new-instance p1, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;-><init>(Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$1;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;Landroid/view/Surface;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    if-eq v0, v2, :cond_0

    const-string v0, "RemoteSurfaceCache"

    const-string v2, "removeSurfaceCallbacks: SurfaceTextureListener already unset or replaced."

    .line 212
    invoke-static {v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 216
    :goto_0
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->textureView:Landroid/view/TextureView;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 219
    iget-object v2, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 220
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->mPlayer:Lcom/oplus/tblplayer/remote/RemotePlayerProxy;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->updateSurface(Landroid/view/Surface;)V

    .line 227
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->ownsSurface:Z

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 231
    :cond_0
    iput-boolean p2, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->ownsSurface:Z

    .line 232
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method refreshSurface()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->mPlayer:Lcom/oplus/tblplayer/remote/RemotePlayerProxy;

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->updateSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->ownsSurface:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const-string v0, "RemoteSurfaceCache"

    const-string v1, "release: "

    .line 244
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->removeSurfaceCallbacks()V

    .line 95
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 97
    invoke-direct {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    goto :goto_1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_1
    return-void
.end method

.method setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->removeSurfaceCallbacks()V

    .line 145
    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->textureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    goto :goto_2

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "RemoteSurfaceCache"

    const-string v3, "setVideoTextureView: Replacing existing SurfaceTextureListener."

    .line 150
    invoke-static {v2, v3}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->componentListener:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache$ComponentListener;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_2
    return-void
.end method
