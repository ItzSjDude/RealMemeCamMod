.class Lcom/oplus/camera/ui/preview/FaceView$3;
.super Ljava/lang/Object;
.source "FaceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 848
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/FaceView$3;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/FaceView$3;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/FaceView;->c(Lcom/oplus/camera/ui/preview/FaceView;I)I

    .line 852
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/FaceView$3;->a:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    return-void
.end method
