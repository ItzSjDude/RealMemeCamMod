.class Lcom/oplus/camera/panorama/f$6;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;I)V
    .locals 0

    .line 1729
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$6;->b:Lcom/oplus/camera/panorama/f;

    iput p2, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1745
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$6;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    .line 1746
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$6;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1732
    iget p1, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    if-nez p1, :cond_0

    .line 1733
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$6;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    .line 1734
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$6;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/panorama/f$6;->a:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
