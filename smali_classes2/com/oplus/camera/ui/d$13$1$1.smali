.class Lcom/oplus/camera/ui/d$13$1$1;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d$13$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d$13$1;)V
    .locals 0

    .line 2195
    iput-object p1, p0, Lcom/oplus/camera/ui/d$13$1$1;->a:Lcom/oplus/camera/ui/d$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 2198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initGalleryPreview, onclick, bitmap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pos: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraUIManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    iget-object p1, p0, Lcom/oplus/camera/ui/d$13$1$1;->a:Lcom/oplus/camera/ui/d$13$1;

    iget-object p1, p1, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object p1, p1, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13$1$1;->a:Lcom/oplus/camera/ui/d$13$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/k;->a(I)Lcom/oplus/c/a/b/a;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/c/a/b/a;Landroid/graphics/Bitmap;)V

    return-void
.end method
