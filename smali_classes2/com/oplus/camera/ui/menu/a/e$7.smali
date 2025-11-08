.class Lcom/oplus/camera/ui/menu/a/e$7;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/e;->b(JJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;ZI)V
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

    .line 2180
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$7;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$7;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;F)F

    .line 2184
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$7;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method
