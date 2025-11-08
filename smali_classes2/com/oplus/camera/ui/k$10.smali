.class Lcom/oplus/camera/ui/k$10;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/c/a/b/a;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;I)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$10;->a:Lcom/oplus/c/a/b/a;

    iput p3, p0, Lcom/oplus/camera/ui/k$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->n(Lcom/oplus/camera/ui/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$10;->a:Lcom/oplus/c/a/b/a;

    invoke-static {v0, v1}, Lcom/oplus/c/a/f;->b(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result v0

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$10;->a:Lcom/oplus/c/a/b/a;

    invoke-static {v0, v1}, Lcom/oplus/c/a/f;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->o(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->cf()V

    .line 769
    iget-object v0, p0, Lcom/oplus/camera/ui/k$10;->c:Lcom/oplus/camera/ui/k;

    iget-object v1, p0, Lcom/oplus/camera/ui/k$10;->a:Lcom/oplus/c/a/b/a;

    iget p0, p0, Lcom/oplus/camera/ui/k$10;->b:I

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/b/a;I)V

    :cond_1
    return-void
.end method
