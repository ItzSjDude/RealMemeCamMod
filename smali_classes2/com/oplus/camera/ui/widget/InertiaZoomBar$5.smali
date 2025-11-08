.class Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;
.super Ljava/lang/Object;
.source "InertiaZoomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbWidth(I)V

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method
