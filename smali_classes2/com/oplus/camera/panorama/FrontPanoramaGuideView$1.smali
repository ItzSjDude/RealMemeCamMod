.class Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;
.super Ljava/lang/Object;
.source "FrontPanoramaGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/panorama/FrontPanoramaGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->a(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->a(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->b(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Lcom/oplus/camera/panorama/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/c;->b()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v1}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->c(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->d(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->b(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Lcom/oplus/camera/panorama/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/c;->a()V

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$1;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {p0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->a(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
