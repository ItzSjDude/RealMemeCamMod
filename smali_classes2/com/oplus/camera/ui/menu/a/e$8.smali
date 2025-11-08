.class Lcom/oplus/camera/ui/menu/a/e$8;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/e;->a(FFJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 2215
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$8;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2218
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2220
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$8;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;F)V

    .line 2222
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$8;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method
