.class Lcom/oplus/camera/j/b$a;
.super Ljava/lang/Object;
.source "VideoViewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/j/b$a;->a:Landroid/content/Context;

    .line 100
    iput-object v0, p0, Lcom/oplus/camera/j/b$a;->b:Landroid/net/Uri;

    .line 101
    iput-object v0, p0, Lcom/oplus/camera/j/b$a;->c:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    .line 104
    iput-object p1, p0, Lcom/oplus/camera/j/b$a;->a:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/oplus/camera/j/b$a;->b:Landroid/net/Uri;

    .line 106
    iput-object p3, p0, Lcom/oplus/camera/j/b$a;->c:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/j/b$a;->c:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$p-1p6wpfZXSolGDLDRVA0EibjdM(Lcom/oplus/camera/j/b$a;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/j/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 111
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/oplus/camera/j/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/j/b$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v1, 0x2

    .line 115
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/oplus/camera/j/b$a;->c:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/oplus/camera/util/Util;->ay()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/j/-$$Lambda$b$a$p-1p6wpfZXSolGDLDRVA0EibjdM;

    invoke-direct {v3, p0, v1}, Lcom/oplus/camera/j/-$$Lambda$b$a$p-1p6wpfZXSolGDLDRVA0EibjdM;-><init>(Lcom/oplus/camera/j/b$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "VideoViewPagerAdapter"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadThumbTask error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 126
    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 129
    throw p0
.end method
