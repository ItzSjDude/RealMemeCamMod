.class Lcom/oplus/camera/panorama/FrontPanoramaGuideView$2;
.super Ljava/lang/Object;
.source "FrontPanoramaGuideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->a(I)V
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

    .line 131
    iput-object p1, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$2;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$2;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-static {v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->b(Lcom/oplus/camera/panorama/FrontPanoramaGuideView;)Lcom/oplus/camera/panorama/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/panorama/c;->a(F)V

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/panorama/FrontPanoramaGuideView$2;->a:Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->invalidate()V

    return-void
.end method
