.class public Lcom/oplus/camera/ui/widget/TextureVideoView;
.super Landroid/view/TextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field a:Landroid/view/TextureView$SurfaceTextureListener;

.field private b:Landroid/net/Uri;

.field private c:Landroid/view/Surface;

.field private d:Landroid/media/MediaPlayer;

.field private e:Landroid/media/MediaPlayer$OnCompletionListener;

.field private f:Landroid/media/MediaPlayer$OnPreparedListener;

.field private g:Landroid/media/MediaPlayer$OnErrorListener;

.field private h:Landroid/media/MediaPlayer$OnInfoListener;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private t:Landroid/media/MediaPlayer$OnPreparedListener;

.field private u:Landroid/media/MediaPlayer$OnCompletionListener;

.field private v:Landroid/media/MediaPlayer$OnInfoListener;

.field private w:Landroid/media/MediaPlayer$OnErrorListener;

.field private x:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->c:Landroid/view/Surface;

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    .line 33
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->l:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->m:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->n:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->o:I

    .line 39
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->p:Z

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->q:Z

    .line 41
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->r:Z

    .line 128
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$1;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->s:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 141
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$2;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 172
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$3;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->u:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 183
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$4;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$4;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->v:Landroid/media/MediaPlayer$OnInfoListener;

    .line 193
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$5;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$5;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->w:Landroid/media/MediaPlayer$OnErrorListener;

    .line 206
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$6;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$6;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->x:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 229
    new-instance p2, Lcom/oplus/camera/ui/widget/TextureVideoView$7;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/TextureVideoView$7;-><init>(Lcom/oplus/camera/ui/widget/TextureVideoView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->a:Landroid/view/TextureView$SurfaceTextureListener;

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->l:I

    .line 55
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->m:I

    .line 57
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->a:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p2, 0x1

    .line 59
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setFocusable(Z)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setFocusableInTouchMode(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->requestFocus()Z

    .line 63
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/TextureVideoView;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->l:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->c:Landroid/view/Surface;

    return-object p1
.end method

.method private a(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    if-eqz p1, :cond_0

    .line 275
    iput v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/TextureVideoView;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->m:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->m:I

    return p1
.end method

.method private b()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->c:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Z)V

    const/4 v1, 0x1

    .line 97
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    .line 99
    iget v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 106
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->s:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 107
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->u:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->w:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 109
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->v:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 110
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->x:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 111
    iput v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->n:I

    .line 112
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 113
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->c:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 114
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 115
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 116
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 118
    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v2, -0x1

    .line 120
    iput v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    .line 121
    iput v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    .line 122
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->w:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-interface {v2, p0, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->f:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    if-eq v0, p0, :cond_0

    if-eqz p0, :cond_0

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/TextureVideoView;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/widget/TextureVideoView;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->o:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/widget/TextureVideoView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->n:I

    return p1
.end method

.method static synthetic f(Lcom/oplus/camera/ui/widget/TextureVideoView;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->h:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->g:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/widget/TextureVideoView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b()V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/ui/widget/TextureVideoView;)Landroid/view/Surface;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->c:Landroid/view/Surface;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b()V

    return-void
.end method

.method public canPause()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->p:Z

    return p0
.end method

.method public canSeekBackward()Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->q:Z

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->r:Z

    return p0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 373
    iget v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 375
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    .line 376
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 379
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->k:I

    return p0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 344
    iget p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->n:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 71
    const-class p0, Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 78
    const-class p0, Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 294
    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    .line 297
    :cond_0
    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 328
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 330
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->o:I

    goto :goto_0

    .line 332
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->o:I

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->g:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->h:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->f:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->o:I

    .line 84
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->b()V

    .line 85
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->requestLayout()V

    .line 86
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 282
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->c()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 284
    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->i:I

    .line 287
    :cond_0
    iput v1, p0, Lcom/oplus/camera/ui/widget/TextureVideoView;->j:I

    return-void
.end method
