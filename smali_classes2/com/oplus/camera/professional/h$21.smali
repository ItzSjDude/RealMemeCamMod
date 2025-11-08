.class Lcom/oplus/camera/professional/h$21;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lcom/oplus/camera/professional/h$21;->b:Lcom/oplus/camera/professional/h;

    iput-object p2, p0, Lcom/oplus/camera/professional/h$21;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1648
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1649
    iget-object v0, p0, Lcom/oplus/camera/professional/h$21;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1650
    iget-object p1, p0, Lcom/oplus/camera/professional/h$21;->b:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->y(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/h$21;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
