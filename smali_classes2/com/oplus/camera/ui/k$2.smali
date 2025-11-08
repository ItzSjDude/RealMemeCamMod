.class Lcom/oplus/camera/ui/k$2;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/c/a/d;

.field final synthetic b:Lcom/oplus/camera/ui/k$a;

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/d;Lcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$2;->a:Lcom/oplus/c/a/d;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$2;->b:Lcom/oplus/camera/ui/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 827
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/k;->p(Lcom/oplus/camera/ui/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 831
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->a:Lcom/oplus/c/a/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d;->e()Z

    move-result p1

    const/16 v0, 0x52

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->a:Lcom/oplus/c/a/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d;->c()V

    .line 833
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/ui/k$2;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {p1, v2, v3}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    .line 834
    iget-object p0, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->o(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->f(II)V

    goto :goto_0

    .line 836
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->a:Lcom/oplus/c/a/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d;->f()V

    .line 837
    iget-object p1, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    iget-object v2, p0, Lcom/oplus/camera/ui/k$2;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {p1, v1, v2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    .line 838
    iget-object p0, p0, Lcom/oplus/camera/ui/k$2;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->o(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->f(II)V

    :goto_0
    return-void
.end method
