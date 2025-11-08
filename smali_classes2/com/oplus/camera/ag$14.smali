.class Lcom/oplus/camera/ag$14;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 2571
    iput-object p1, p0, Lcom/oplus/camera/ag$14;->b:Lcom/oplus/camera/ag;

    iput-object p2, p0, Lcom/oplus/camera/ag$14;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2574
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2575
    iget-object v0, p0, Lcom/oplus/camera/ag$14;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2576
    iget-object v0, p0, Lcom/oplus/camera/ag$14;->b:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ag$14;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ai;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2577
    iget-object v0, p0, Lcom/oplus/camera/ag$14;->b:Lcom/oplus/camera/ag;

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->p()V

    .line 2579
    iget-object v0, p0, Lcom/oplus/camera/ag$14;->b:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2580
    iget-object p0, p0, Lcom/oplus/camera/ag$14;->b:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ag$a;->a(I)V

    :cond_0
    return-void
.end method
