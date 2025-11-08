.class Lcom/oplus/camera/ui/k$1;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k$a;Lcom/oplus/c/a/b/a;)V
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

    .line 209
    iput-object p1, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$1;->a:Lcom/oplus/c/a/b/a;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$1;->b:Lcom/oplus/camera/ui/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Z)Z

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/k$1;->a:Lcom/oplus/c/a/b/a;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/oplus/c/a/b;->b(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;[I)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/k$1;->a:Lcom/oplus/c/a/b/a;

    invoke-static {v2, v3, v0}, Lcom/oplus/c/a/b;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 216
    iget-object v1, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "GalleryPreviewAdapter"

    if-nez v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImage, decode failed, mediaItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/k$1;->a:Lcom/oplus/c/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    new-instance v1, Lcom/oplus/camera/ui/k$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/k$1$1;-><init>(Lcom/oplus/camera/ui/k$1;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Ljava/lang/Runnable;)V

    return-void

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImage, mImageBitmap: width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v3}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    .line 237
    invoke-static {v3}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bytes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v3}, Lcom/oplus/camera/ui/k;->b(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sampleSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    new-instance v1, Lcom/oplus/camera/ui/k$1$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/k$1$2;-><init>(Lcom/oplus/camera/ui/k$1;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Ljava/lang/Runnable;)V

    return-void
.end method
