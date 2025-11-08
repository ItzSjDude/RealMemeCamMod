.class Lcom/oplus/camera/panorama/f$9;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->b(Lcom/arcsoft/camera/burstpmk/ProcessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    iput-object p2, p0, Lcom/oplus/camera/panorama/f$9;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oplus/camera/panorama/f$9;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    const/4 v1, 0x3

    .line 407
    iget-object v2, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->N(Lcom/oplus/camera/panorama/f;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 406
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a()V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$9;->c:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$9;->a:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/oplus/camera/panorama/f$9;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
