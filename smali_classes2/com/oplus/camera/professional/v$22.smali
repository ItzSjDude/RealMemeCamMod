.class Lcom/oplus/camera/professional/v$22;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 1761
    iput-object p1, p0, Lcom/oplus/camera/professional/v$22;->b:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$22;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1764
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1765
    iget-object v0, p0, Lcom/oplus/camera/professional/v$22;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1766
    iget-object p1, p0, Lcom/oplus/camera/professional/v$22;->b:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->B(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/v$22;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
