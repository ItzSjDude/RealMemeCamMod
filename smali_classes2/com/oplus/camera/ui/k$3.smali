.class Lcom/oplus/camera/ui/k$3;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Landroid/view/Surface;

.field final synthetic c:Lcom/oplus/c/a/d;

.field final synthetic d:Lcom/oplus/c/a/b/a;

.field final synthetic e:Lcom/oplus/camera/ui/k$d;

.field final synthetic f:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Lcom/oplus/c/a/d;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$d;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/oplus/camera/ui/k$3;->f:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$3;->a:Landroid/graphics/SurfaceTexture;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$3;->b:Landroid/view/Surface;

    iput-object p4, p0, Lcom/oplus/camera/ui/k$3;->c:Lcom/oplus/c/a/d;

    iput-object p5, p0, Lcom/oplus/camera/ui/k$3;->d:Lcom/oplus/c/a/b/a;

    iput-object p6, p0, Lcom/oplus/camera/ui/k$3;->e:Lcom/oplus/camera/ui/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/ui/k$3;->f:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->d(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k$3;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/k$3;->b:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k$3;->c:Lcom/oplus/c/a/d;

    iget-object v2, p0, Lcom/oplus/camera/ui/k$3;->d:Lcom/oplus/c/a/b/a;

    invoke-virtual {v2}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/k$3;->b:Landroid/view/Surface;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$3;->e:Lcom/oplus/camera/ui/k$d;

    invoke-virtual {v1, v2, v3, p0}, Lcom/oplus/c/a/d;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    .line 852
    monitor-exit v0

    return-void

    .line 848
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 852
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
