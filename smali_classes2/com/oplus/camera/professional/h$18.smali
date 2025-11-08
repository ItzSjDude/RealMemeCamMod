.class Lcom/oplus/camera/professional/h$18;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 616
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;I)V

    .line 619
    iget-object p1, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->p(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->t(Lcom/oplus/camera/professional/h;)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/professional/h$18;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->u(Lcom/oplus/camera/professional/h;)Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    :cond_0
    return-void
.end method
