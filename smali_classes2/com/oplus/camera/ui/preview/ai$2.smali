.class Lcom/oplus/camera/ui/preview/ai$2;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ai;->getExitAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ai;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ai;)V
    .locals 0

    .line 3567
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$2;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3570
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$2;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/ai;->b(Lcom/oplus/camera/ui/preview/ai;I)I

    .line 3572
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$2;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->invalidate()V

    return-void
.end method
