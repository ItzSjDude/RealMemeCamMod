.class Lcom/oplus/camera/p$2;
.super Ljava/lang/Object;
.source "HistogramProcessorManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/p;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/oplus/camera/p$2;->a:Lcom/oplus/camera/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/p$2;->a:Lcom/oplus/camera/p;

    invoke-static {v0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/p$2;->a:Lcom/oplus/camera/p;

    invoke-static {p1}, Lcom/oplus/camera/p;->b(Lcom/oplus/camera/p;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/p$2;->a:Lcom/oplus/camera/p;

    invoke-static {p0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
