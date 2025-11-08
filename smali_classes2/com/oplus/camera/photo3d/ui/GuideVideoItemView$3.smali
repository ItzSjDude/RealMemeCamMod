.class Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;
.super Ljava/lang/Object;
.source "GuideVideoItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {v1}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {v2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 146
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {v2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->d(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3$1;-><init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;Landroid/graphics/Bitmap;)V

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$3;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->d(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "GuideItemView"

    .line 161
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

    .line 164
    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 167
    throw p0
.end method
