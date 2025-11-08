.class public Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;
.super Landroid/widget/RelativeLayout;
.source "GuideVideoItemView.java"


# instance fields
.field private a:Lcom/oplus/camera/ui/widget/TextureVideoView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/Thread;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->f:Landroid/os/Handler;

    .line 134
    new-instance p1, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;

    invoke-direct {p1, p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;-><init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->g:Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/net/Uri;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->d:Landroid/net/Uri;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00df

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901bf

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f0901c1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/widget/TextureVideoView;

    iput-object v1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    const v1, 0x7f0901c0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$1;-><init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$2;-><init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->pause()V

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRatio(D)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 80
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-virtual {p0, v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/TextureVideoView;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoCover(I)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->d:Landroid/net/Uri;

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->a:Lcom/oplus/camera/ui/widget/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 88
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->g:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->e:Ljava/lang/Thread;

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->e:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
