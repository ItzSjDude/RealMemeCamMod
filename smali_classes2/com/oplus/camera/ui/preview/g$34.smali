.class Lcom/oplus/camera/ui/preview/g$34;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/u/a;

.field final synthetic b:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g$34;->a:Lcom/oplus/camera/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->b()V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->a:Lcom/oplus/camera/u/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/u/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/z;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$34;->a:Lcom/oplus/camera/u/a;

    invoke-virtual {p0}, Lcom/oplus/camera/u/a;->b()[Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/z;->setPointsArray([Landroid/graphics/PointF;)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/z;->setVisibility(I)V

    .line 604
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$34;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->U(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/z;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/z;->setPointsArray([Landroid/graphics/PointF;)V

    :cond_2
    :goto_0
    return-void
.end method
