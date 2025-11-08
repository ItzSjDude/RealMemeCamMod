.class public final synthetic Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/widget/d;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/widget/d;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$0:Lcom/oplus/camera/ui/widget/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$1:Z

    iput-object p3, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$0:Lcom/oplus/camera/ui/widget/d;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$1:Z

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$d$4Ae44HWvC2gyFZm2adL-XByELzY;->f$2:Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/ui/widget/d;->lambda$4Ae44HWvC2gyFZm2adL-XByELzY(Lcom/oplus/camera/ui/widget/d;ZLandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
