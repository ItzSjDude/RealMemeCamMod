.class Lcom/oplus/camera/ui/control/MainShutterButton$7;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/MainShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 2356
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$7;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2358
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2360
    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$7;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->i(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$7;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(Lcom/oplus/camera/ui/control/MainShutterButton;I)I

    .line 2362
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$7;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    :cond_0
    return-void
.end method
