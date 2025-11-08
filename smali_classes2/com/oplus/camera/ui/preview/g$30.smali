.class Lcom/oplus/camera/ui/preview/g$30;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$30;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 469
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$30;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->S(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$30;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->S(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 471
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$30;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->S(Lcom/oplus/camera/ui/preview/g;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
