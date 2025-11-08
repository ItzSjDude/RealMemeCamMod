.class Lcom/oplus/camera/ui/k$5;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/c/a/b/a;

.field final synthetic b:Lcom/oplus/camera/ui/k$a;

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/oplus/camera/ui/k$5;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$5;->a:Lcom/oplus/c/a/b/a;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$5;->b:Lcom/oplus/camera/ui/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 275
    iget-object p2, p0, Lcom/oplus/camera/ui/k$5;->c:Lcom/oplus/camera/ui/k;

    iget-object p3, p0, Lcom/oplus/camera/ui/k$5;->a:Lcom/oplus/c/a/b/a;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$5;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {p2, p1, p3, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureDestroyed, item: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/k$5;->a:Lcom/oplus/c/a/b/a;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryPreviewAdapter"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/ui/k$5;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/k;->d(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k$5;->c:Lcom/oplus/camera/ui/k;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$5;->a:Lcom/oplus/c/a/b/a;

    invoke-virtual {p0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Ljava/lang/String;)V

    .line 289
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
