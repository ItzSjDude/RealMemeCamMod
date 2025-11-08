.class Lcom/oplus/camera/ui/k$1$1;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k$1;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->c(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/k$1;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/k$a;->a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v1, v1, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->c(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    iget-object v1, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v1, v1, Lcom/oplus/camera/ui/k$1;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v1}, Lcom/oplus/camera/ui/k$a;->g(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object v2, v2, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v2}, Lcom/oplus/camera/ui/k;->c(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/ui/k$1$1;->a:Lcom/oplus/camera/ui/k$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$1;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->c(Lcom/oplus/camera/ui/k;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const-string p0, "GalleryPreviewAdapter"

    const-string v0, "setImage, all available bitmap is null"

    .line 226
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
