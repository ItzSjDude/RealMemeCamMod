.class Lcom/oplus/camera/ui/preview/FaceView$2;
.super Ljava/lang/Object;
.source "FaceView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/FaceView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/FaceView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/FaceView;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 836
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a(Lcom/oplus/camera/ui/preview/FaceView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 829
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/FaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 830
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/FaceView;->a(Lcom/oplus/camera/ui/preview/FaceView;Z)Z

    .line 831
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/FaceView;->b(Lcom/oplus/camera/ui/preview/FaceView;I)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView$2;->a:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->a(Lcom/oplus/camera/ui/preview/FaceView;Z)Z

    return-void
.end method
